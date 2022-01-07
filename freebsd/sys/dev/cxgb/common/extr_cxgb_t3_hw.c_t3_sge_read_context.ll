; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_read_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_read_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SG_CONTEXT_CMD_ATTEMPTS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*)* @t3_sge_read_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t3_sge_read_context(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %12 = call i32 @t3_read_reg(i32* %10, i32 %11)
  %13 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %59

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %22 = call i32 @V_CONTEXT_CMD_OPCODE(i32 0)
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @V_CONTEXT(i32 %25)
  %27 = or i32 %24, %26
  %28 = call i32 @t3_write_reg(i32* %20, i32 %21, i32 %27)
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %31 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %32 = load i32, i32* @SG_CONTEXT_CMD_ATTEMPTS, align 4
  %33 = call i64 @t3_wait_op_done(i32* %29, i32 %30, i32 %31, i32 0, i32 %32, i32 1)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %19
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %59

38:                                               ; preds = %19
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %41 = call i32 @t3_read_reg(i32* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %46 = call i32 @t3_read_reg(i32* %44, i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %51 = call i32 @t3_read_reg(i32* %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %56 = call i32 @t3_read_reg(i32* %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %38, %35, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_CONTEXT_CMD_OPCODE(i32) #1

declare dso_local i32 @V_CONTEXT(i32) #1

declare dso_local i64 @t3_wait_op_done(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_cim_ctl_blk_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_cim_ctl_blk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_CIM_HOST_ACC_CTRL = common dso_local global i32 0, align 4
@F_HOSTBUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CIM_CTL_BASE = common dso_local global i64 0, align 8
@A_CIM_HOST_ACC_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_cim_ctl_blk_read(i32* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* @A_CIM_HOST_ACC_CTRL, align 4
  %13 = call i32 @t3_read_reg(i32* %11, i32 %12)
  %14 = load i32, i32* @F_HOSTBUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %56

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %51, %20
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %30, label %54

30:                                               ; preds = %28
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @A_CIM_HOST_ACC_CTRL, align 4
  %33 = load i64, i64* @CIM_CTL_BASE, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = add nsw i64 %33, %35
  %37 = call i32 @t3_write_reg(i32* %31, i32 %32, i64 %36)
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @A_CIM_HOST_ACC_CTRL, align 4
  %40 = load i32, i32* @F_HOSTBUSY, align 4
  %41 = call i32 @t3_wait_op_done(i32* %38, i32 %39, i32 %40, i32 0, i32 5, i32 2)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %30
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* @A_CIM_HOST_ACC_DATA, align 4
  %47 = call i32 @t3_read_reg(i32* %45, i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  br label %50

50:                                               ; preds = %44, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add i32 %52, 4
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %28
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i64) #1

declare dso_local i32 @t3_wait_op_done(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

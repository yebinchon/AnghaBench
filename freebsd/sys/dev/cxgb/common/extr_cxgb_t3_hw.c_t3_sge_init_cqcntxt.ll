; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_cqcntxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_cqcntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@F_CQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_cqcntxt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %18 = load i32, i32* %12, align 4
  %19 = and i32 %18, 4095
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  br label %76

24:                                               ; preds = %8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %27 = call i32 @t3_read_reg(i32* %25, i32 %26)
  %28 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %76

34:                                               ; preds = %24
  %35 = load i32, i32* %12, align 4
  %36 = ashr i32 %35, 12
  store i32 %36, i32* %12, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @V_CQ_SIZE(i32 %39)
  %41 = call i32 @t3_write_reg(i32* %37, i32 %38, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @t3_write_reg(i32* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %12, align 4
  %47 = ashr i32 %46, 32
  store i32 %47, i32* %12, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @V_CQ_BASE_HI(i32 %50)
  %52 = load i32, i32* %14, align 4
  %53 = call i32 @V_CQ_RSPQ(i32 %52)
  %54 = or i32 %51, %53
  %55 = call i32 @V_CQ_GEN(i32 1)
  %56 = or i32 %54, %55
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @V_CQ_OVERFLOW_MODE(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @V_CQ_ERR(i32 %60)
  %62 = or i32 %59, %61
  %63 = call i32 @t3_write_reg(i32* %48, i32 %49, i32 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 @V_CQ_CREDITS(i32 %66)
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @V_CQ_CREDIT_THRES(i32 %68)
  %70 = or i32 %67, %69
  %71 = call i32 @t3_write_reg(i32* %64, i32 %65, i32 %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @F_CQ, align 4
  %75 = call i32 @t3_sge_write_context(i32* %72, i32 %73, i32 %74)
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %34, %31, %21
  %77 = load i32, i32* %9, align 4
  ret i32 %77
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_CQ_SIZE(i32) #1

declare dso_local i32 @V_CQ_BASE_HI(i32) #1

declare dso_local i32 @V_CQ_RSPQ(i32) #1

declare dso_local i32 @V_CQ_GEN(i32) #1

declare dso_local i32 @V_CQ_OVERFLOW_MODE(i32) #1

declare dso_local i32 @V_CQ_ERR(i32) #1

declare dso_local i32 @V_CQ_CREDITS(i32) #1

declare dso_local i32 @V_CQ_CREDIT_THRES(i32) #1

declare dso_local i32 @t3_sge_write_context(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

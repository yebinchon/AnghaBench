; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_rspcntxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_rspcntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@A_SG_CONTROL = common dso_local global i32 0, align 4
@F_ONEINTMULTQ = common dso_local global i32 0, align 4
@F_RQ_INTR_EN = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@F_RESPONSEQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_rspcntxt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %13, align 4
  %21 = and i32 %20, 4095
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %8
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %95

26:                                               ; preds = %8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %29 = call i32 @t3_read_reg(i32* %27, i32 %28)
  %30 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %95

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  %38 = ashr i32 %37, 12
  store i32 %38, i32* %13, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @V_CQ_SIZE(i32 %41)
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @V_CQ_INDEX(i32 %43)
  %45 = or i32 %42, %44
  %46 = call i32 @t3_write_reg(i32* %39, i32 %40, i32 %45)
  %47 = load i32*, i32** %10, align 8
  %48 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @t3_write_reg(i32* %47, i32 %48, i32 %49)
  %51 = load i32, i32* %13, align 4
  %52 = ashr i32 %51, 32
  store i32 %52, i32* %13, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* @A_SG_CONTROL, align 4
  %55 = call i32 @t3_read_reg(i32* %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %36
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* @F_ONEINTMULTQ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %61, %36
  %67 = load i32, i32* @F_RQ_INTR_EN, align 4
  store i32 %67, i32* %19, align 4
  br label %68

68:                                               ; preds = %66, %61, %58
  %69 = load i32, i32* %12, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @V_RQ_MSI_VEC(i32 %72)
  %74 = load i32, i32* %19, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %19, align 4
  br label %76

76:                                               ; preds = %71, %68
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @V_CQ_BASE_HI(i32 %79)
  %81 = load i32, i32* %19, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @V_RQ_GEN(i32 %83)
  %85 = or i32 %82, %84
  %86 = call i32 @t3_write_reg(i32* %77, i32 %78, i32 %85)
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %89 = load i32, i32* %15, align 4
  %90 = call i32 @t3_write_reg(i32* %87, i32 %88, i32 %89)
  %91 = load i32*, i32** %10, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @F_RESPONSEQ, align 4
  %94 = call i32 @t3_sge_write_context(i32* %91, i32 %92, i32 %93)
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %76, %33, %23
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_CQ_SIZE(i32) #1

declare dso_local i32 @V_CQ_INDEX(i32) #1

declare dso_local i32 @V_RQ_MSI_VEC(i32) #1

declare dso_local i32 @V_CQ_BASE_HI(i32) #1

declare dso_local i32 @V_RQ_GEN(i32) #1

declare dso_local i32 @t3_sge_write_context(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_flcntxt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_t3_hw.c_t3_sge_init_flcntxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@A_SG_CONTEXT_CMD = common dso_local global i32 0, align 4
@F_CONTEXT_CMD_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA0 = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA1 = common dso_local global i32 0, align 4
@M_FL_INDEX_LO = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA2 = common dso_local global i32 0, align 4
@M_FL_ENTRY_SIZE_LO = common dso_local global i32 0, align 4
@A_SG_CONTEXT_DATA3 = common dso_local global i32 0, align 4
@S_FL_ENTRY_SIZE_LO = common dso_local global i32 0, align 4
@F_FREELIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_sge_init_flcntxt(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %20 = load i32, i32* %14, align 4
  %21 = and i32 %20, 4095
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %9
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %10, align 4
  br label %90

26:                                               ; preds = %9
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @A_SG_CONTEXT_CMD, align 4
  %29 = call i32 @t3_read_reg(i32* %27, i32 %28)
  %30 = load i32, i32* @F_CONTEXT_CMD_BUSY, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %90

36:                                               ; preds = %26
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 12
  store i32 %38, i32* %14, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = load i32, i32* @A_SG_CONTEXT_DATA0, align 4
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @t3_write_reg(i32* %39, i32 %40, i32 %41)
  %43 = load i32, i32* %14, align 4
  %44 = ashr i32 %43, 32
  store i32 %44, i32* %14, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* @A_SG_CONTEXT_DATA1, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @V_FL_BASE_HI(i32 %47)
  %49 = load i32, i32* %19, align 4
  %50 = load i32, i32* @M_FL_INDEX_LO, align 4
  %51 = and i32 %49, %50
  %52 = call i32 @V_FL_INDEX_LO(i32 %51)
  %53 = or i32 %48, %52
  %54 = call i32 @t3_write_reg(i32* %45, i32 %46, i32 %53)
  %55 = load i32*, i32** %11, align 8
  %56 = load i32, i32* @A_SG_CONTEXT_DATA2, align 4
  %57 = load i32, i32* %15, align 4
  %58 = call i32 @V_FL_SIZE(i32 %57)
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @V_FL_GEN(i32 %59)
  %61 = or i32 %58, %60
  %62 = load i32, i32* %19, align 4
  %63 = lshr i32 %62, 12
  %64 = call i32 @V_FL_INDEX_HI(i32 %63)
  %65 = or i32 %61, %64
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @M_FL_ENTRY_SIZE_LO, align 4
  %68 = and i32 %66, %67
  %69 = call i32 @V_FL_ENTRY_SIZE_LO(i32 %68)
  %70 = or i32 %65, %69
  %71 = call i32 @t3_write_reg(i32* %55, i32 %56, i32 %70)
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @A_SG_CONTEXT_DATA3, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* @S_FL_ENTRY_SIZE_LO, align 4
  %76 = sub nsw i32 32, %75
  %77 = lshr i32 %74, %76
  %78 = call i32 @V_FL_ENTRY_SIZE_HI(i32 %77)
  %79 = load i32, i32* %17, align 4
  %80 = call i32 @V_FL_CONG_THRES(i32 %79)
  %81 = or i32 %78, %80
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @V_FL_GTS(i32 %82)
  %84 = or i32 %81, %83
  %85 = call i32 @t3_write_reg(i32* %72, i32 %73, i32 %84)
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @F_FREELIST, align 4
  %89 = call i32 @t3_sge_write_context(i32* %86, i32 %87, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %36, %33, %23
  %91 = load i32, i32* %10, align 4
  ret i32 %91
}

declare dso_local i32 @t3_read_reg(i32*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_FL_BASE_HI(i32) #1

declare dso_local i32 @V_FL_INDEX_LO(i32) #1

declare dso_local i32 @V_FL_SIZE(i32) #1

declare dso_local i32 @V_FL_GEN(i32) #1

declare dso_local i32 @V_FL_INDEX_HI(i32) #1

declare dso_local i32 @V_FL_ENTRY_SIZE_LO(i32) #1

declare dso_local i32 @V_FL_ENTRY_SIZE_HI(i32) #1

declare dso_local i32 @V_FL_CONG_THRES(i32) #1

declare dso_local i32 @V_FL_GTS(i32) #1

declare dso_local i32 @t3_sge_write_context(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

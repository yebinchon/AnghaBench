; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_deassertion_aeu_bit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_deassertion_aeu_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.aeu_invert_reg_bit = type { i32 (%struct.ecore_hwfn*)*, i64, i32 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Deasserted attention `%s'[%08x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"`%s (attention)': Calling Callback function\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@ATTN_TYPE_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"`%s': Fatal attention\0A\00", align 1
@ECORE_HW_ERR_HW_ATTN = common dso_local global i32 0, align 4
@ATTENTION_CLEAR_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"`%s' - Disabled future attentions\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.aeu_invert_reg_bit*, i32, i8*, i32)* @ecore_int_deassertion_aeu_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_int_deassertion_aeu_bit(%struct.ecore_hwfn* %0, %struct.aeu_invert_reg_bit* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.aeu_invert_reg_bit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.aeu_invert_reg_bit* %1, %struct.aeu_invert_reg_bit** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = call i32 (%struct.ecore_hwfn*, i8*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %18)
  %20 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %7, align 8
  %21 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %20, i32 0, i32 0
  %22 = load i32 (%struct.ecore_hwfn*)*, i32 (%struct.ecore_hwfn*)** %21, align 8
  %23 = icmp ne i32 (%struct.ecore_hwfn*)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %5
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 (%struct.ecore_hwfn*, i8*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %7, align 8
  %29 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %28, i32 0, i32 0
  %30 = load i32 (%struct.ecore_hwfn*)*, i32 (%struct.ecore_hwfn*)** %29, align 8
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %32 = call i32 %30(%struct.ecore_hwfn* %31)
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %24, %5
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %12, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %7, align 8
  %40 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_BLOCK_ID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %46 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %7, align 8
  %47 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ATTN_TYPE_INTERRUPT, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @ecore_int_attn_print(%struct.ecore_hwfn* %45, i64 %48, i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %44, %38
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %59, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %60)
  %62 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %63 = load i32, i32* @ECORE_HW_ERR_HW_ATTN, align 4
  %64 = call i32 @ecore_hw_err_notify(%struct.ecore_hwfn* %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %55
  %66 = load %struct.aeu_invert_reg_bit*, %struct.aeu_invert_reg_bit** %7, align 8
  %67 = getelementptr inbounds %struct.aeu_invert_reg_bit, %struct.aeu_invert_reg_bit* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ATTENTION_CLEAR_ENABLE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %65
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %74 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %100

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %10, align 4
  %81 = xor i32 %80, -1
  store i32 %81, i32* %14, align 4
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %83 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @ecore_rd(%struct.ecore_hwfn* %82, i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %89 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %90 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = and i32 %93, %94
  %96 = call i32 @ecore_wr(%struct.ecore_hwfn* %88, i32 %91, i32 %92, i32 %95)
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 (%struct.ecore_hwfn*, i8*, i8*, ...) @DP_INFO(%struct.ecore_hwfn* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  br label %100

100:                                              ; preds = %79, %72
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*, i8*, ...) #1

declare dso_local i32 @ecore_int_attn_print(%struct.ecore_hwfn*, i64, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i8*) #1

declare dso_local i32 @ecore_hw_err_notify(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @ecore_rd(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_wr(%struct.ecore_hwfn*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

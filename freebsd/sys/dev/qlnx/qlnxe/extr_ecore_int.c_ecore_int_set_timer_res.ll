; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_set_timer_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_int.c_ecore_int_set_timer_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.cau_sb_entry = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"hardware not initialized yet\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@CAU_REG_SB_VAR_MEMORY = common dso_local global i64 0, align 8
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"dmae_grc2host failed %d\0A\00", align 1
@CAU_SB_ENTRY_TIMER_RES1 = common dso_local global i32 0, align 4
@CAU_SB_ENTRY_TIMER_RES0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"dmae_host2grc failed %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_int_set_timer_res(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_ptt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cau_sb_entry, align 4
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %5
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %20 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %6, align 4
  br label %79

22:                                               ; preds = %5
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %24 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %25 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = add i64 %25, %28
  %30 = ptrtoint %struct.cau_sb_entry* %12 to i64
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @OSAL_NULL, align 4
  %33 = call i32 @ecore_dmae_grc2host(%struct.ecore_hwfn* %23, %struct.ecore_ptt* %24, i64 %29, i32 %31, i32 2, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @ECORE_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %22
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %79

42:                                               ; preds = %22
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %12, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES1, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @SET_FIELD(i32 %47, i32 %48, i32 %49)
  br label %57

51:                                               ; preds = %42
  %52 = getelementptr inbounds %struct.cau_sb_entry, %struct.cau_sb_entry* %12, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CAU_SB_ENTRY_TIMER_RES0, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @SET_FIELD(i32 %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %59 = load %struct.ecore_ptt*, %struct.ecore_ptt** %8, align 8
  %60 = ptrtoint %struct.cau_sb_entry* %12 to i64
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* @CAU_REG_SB_VAR_MEMORY, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = add i64 %62, %65
  %67 = load i32, i32* @OSAL_NULL, align 4
  %68 = call i32 @ecore_dmae_host2grc(%struct.ecore_hwfn* %58, %struct.ecore_ptt* %59, i32 %61, i64 %66, i32 2, i32 %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @ECORE_SUCCESS, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %57
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 (%struct.ecore_hwfn*, i8*, ...) @DP_ERR(%struct.ecore_hwfn* %73, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %6, align 4
  br label %79

77:                                               ; preds = %57
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %77, %72, %37, %18
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, ...) #1

declare dso_local i32 @ecore_dmae_grc2host(%struct.ecore_hwfn*, %struct.ecore_ptt*, i64, i32, i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

declare dso_local i32 @ecore_dmae_host2grc(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

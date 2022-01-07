; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_arfs_mode_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_arfs_mode_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_arfs_config_params = type { i64, i64, i64, i64, i64 }

@ECORE_MF_DISABLE_ARFS = common dso_local global i32 0, align 4
@ECORE_FILTER_CONFIG_MODE_DISABLE = common dso_local global i64 0, align 8
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Configured Filtering: tcp = %s, udp = %s, ipv4 = %s, ipv6 =%s mode=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Disable\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"Disabled Filtering\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_arfs_mode_configure(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_arfs_config_params* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_arfs_config_params*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_arfs_config_params* %2, %struct.ecore_arfs_config_params** %6, align 8
  %7 = load i32, i32* @ECORE_MF_DISABLE_ARFS, align 4
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i64 @OSAL_TEST_BIT(i32 %7, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %85

15:                                               ; preds = %3
  %16 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %17 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ECORE_FILTER_CONFIG_MODE_DISABLE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %75

21:                                               ; preds = %15
  %22 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %23 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %24 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %25 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %31 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %34 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %40 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @ecore_arfs_mode_to_hsi(i64 %41)
  %43 = call i32 @ecore_gft_config(%struct.ecore_hwfn* %22, %struct.ecore_ptt* %23, i32 %26, i64 %29, i64 %32, i64 %35, i64 %38, i32 %42)
  %44 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %45 = load i32, i32* @ECORE_MSG_SP, align 4
  %46 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %52 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %53 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %58 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %59 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %64 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %70 = load %struct.ecore_arfs_config_params*, %struct.ecore_arfs_config_params** %6, align 8
  %71 = getelementptr inbounds %struct.ecore_arfs_config_params, %struct.ecore_arfs_config_params* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %44, i32 %45, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i8* %51, i8* %57, i8* %63, i8* %69, i32 %73)
  br label %85

75:                                               ; preds = %15
  %76 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %77 = load i32, i32* @ECORE_MSG_SP, align 4
  %78 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %76, i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %80 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %81 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %82 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ecore_gft_disable(%struct.ecore_hwfn* %79, %struct.ecore_ptt* %80, i32 %83)
  br label %85

85:                                               ; preds = %14, %75, %21
  ret void
}

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_gft_config(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32, i64, i64, i64, i64, i32) #1

declare dso_local i32 @ecore_arfs_mode_to_hsi(i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @ecore_gft_disable(%struct.ecore_hwfn*, %struct.ecore_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

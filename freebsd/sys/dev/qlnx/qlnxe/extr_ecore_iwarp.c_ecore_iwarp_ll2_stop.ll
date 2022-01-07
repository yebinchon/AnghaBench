; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_ll2_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ecore_iwarp_info }
%struct.ecore_iwarp_info = type { i64, i64, i64, i32 }

@ECORE_IWARP_HANDLE_INVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to terminate syn connection\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to terminate ooo connection\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to terminate mpa connection\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*)* @ecore_iwarp_ll2_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_ll2_stop(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_iwarp_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ecore_iwarp_info* %8, %struct.ecore_iwarp_info** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %16 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @ecore_ll2_terminate_connection(%struct.ecore_hwfn* %15, i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %24 = call i32 @DP_INFO(%struct.ecore_hwfn* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %14
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %27 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %28 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ecore_ll2_release_connection(%struct.ecore_hwfn* %26, i64 %29)
  %31 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %32 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %33 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %42 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %43 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @ecore_ll2_terminate_connection(%struct.ecore_hwfn* %41, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %50 = call i32 @DP_INFO(%struct.ecore_hwfn* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %40
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %53 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %54 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @ecore_ll2_release_connection(%struct.ecore_hwfn* %52, i64 %55)
  %57 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %58 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %59 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %51, %34
  %61 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %62 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %68 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %69 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ecore_ll2_terminate_connection(%struct.ecore_hwfn* %67, i64 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %76 = call i32 @DP_INFO(%struct.ecore_hwfn* %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %66
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %79 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %80 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @ecore_ll2_release_connection(%struct.ecore_hwfn* %78, i64 %81)
  %83 = load i64, i64* @ECORE_IWARP_HANDLE_INVAL, align 8
  %84 = load %struct.ecore_iwarp_info*, %struct.ecore_iwarp_info** %3, align 8
  %85 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %86

86:                                               ; preds = %77, %60
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %88 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %91 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.ecore_iwarp_info, %struct.ecore_iwarp_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ecore_llh_remove_mac_filter(i32 %89, i32 0, i32 %95)
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ecore_ll2_terminate_connection(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @DP_INFO(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_ll2_release_connection(%struct.ecore_hwfn*, i64) #1

declare dso_local i32 @ecore_llh_remove_mac_filter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

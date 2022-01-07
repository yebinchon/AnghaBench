; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"Can not set forced MAC, invalid vfid [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Can't set forced vlan to malicious VF [%d]\0A\00", align 1
@VLAN_ADDR_FORCED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_bulletin_set_forced_vlan(%struct.ecore_hwfn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_vf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %9, i64 %11, i32 1)
  store %struct.ecore_vf_info* %12, %struct.ecore_vf_info** %7, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %14 = icmp ne %struct.ecore_vf_info* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @DP_NOTICE(i32 %18, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %28 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @DP_NOTICE(i32 %29, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %67

32:                                               ; preds = %21
  %33 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %34 = shl i32 1, %33
  store i32 %34, i32* %8, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i64 %35, i64* %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %44
  store i32 %51, i32* %49, align 8
  br label %62

52:                                               ; preds = %32
  %53 = load i32, i32* %8, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %56 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %54
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %52, %43
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn* %63, %struct.ecore_vf_info* %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %26, %15
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i64, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32) #1

declare dso_local i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

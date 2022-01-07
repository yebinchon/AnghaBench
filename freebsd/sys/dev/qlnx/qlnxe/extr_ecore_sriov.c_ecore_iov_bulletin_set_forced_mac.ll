; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_bulletin_set_forced_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_vf_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Can not set forced MAC, invalid vfid [%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Can't set forced MAC to malicious VF [%d]\0A\00", align 1
@MAC_ADDR_FORCED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@VFPF_BULLETIN_MAC_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_iov_bulletin_set_forced_mac(%struct.ecore_hwfn* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_vf_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %9, i32 %10, i32 1)
  store %struct.ecore_vf_info* %11, %struct.ecore_vf_info** %7, align 8
  %12 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %13 = icmp ne %struct.ecore_vf_info* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @DP_NOTICE(i32 %17, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %65

20:                                               ; preds = %3
  %21 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @DP_NOTICE(i32 %28, i32 0, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %65

31:                                               ; preds = %20
  %32 = load i32, i32* @MAC_ADDR_FORCED, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %35 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @OSAL_MEMCPY(i32 %39, i32* %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* @VFPF_BULLETIN_MAC_ADDR, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %53
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %62 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn* %61, %struct.ecore_vf_info* %62, i32 %63)
  br label %65

65:                                               ; preds = %31, %25, %14
  ret void
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(i32, i32, i8*, i32) #1

declare dso_local i32 @OSAL_MEMCPY(i32, i32*, i32) #1

declare dso_local i32 @ecore_iov_configure_vport_forced(%struct.ecore_hwfn*, %struct.ecore_vf_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

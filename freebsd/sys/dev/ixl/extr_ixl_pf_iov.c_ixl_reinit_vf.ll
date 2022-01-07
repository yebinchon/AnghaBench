; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_reinit_vf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_reinit_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Timed out waiting for PCIe activity to stop on VF-%d\0A\00", align 1
@IXL_VF_RESET_TIMEOUT = common dso_local global i32 0, align 4
@I40E_VPGEN_VFRSTAT_VFRD_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"VF %d failed to reset\0A\00", align 1
@VIRTCHNL_VFR_COMPLETED = common dso_local global i32 0, align 4
@I40E_VPGEN_VFRTRIG_VFSWR_MASK = common dso_local global i32 0, align 4
@VIRTCHNL_VFR_VFACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*)* @ixl_reinit_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_reinit_vf(%struct.ixl_pf* %0, %struct.ixl_vf* %1) #0 {
  %3 = alloca %struct.ixl_pf*, align 8
  %4 = alloca %struct.ixl_vf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %3, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %4, align 8
  %10 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %11 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %10, i32 0, i32 1
  store %struct.i40e_hw* %11, %struct.i40e_hw** %5, align 8
  %12 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %13 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %14 = call i32 @ixl_flush_pcie(%struct.ixl_pf* %12, %struct.ixl_vf* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %19 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %22 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @IXL_VF_RESET_TIMEOUT, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = call i32 @DELAY(i32 10)
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %33 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %34 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @I40E_VPGEN_VFRSTAT(i32 %35)
  %37 = call i32 @rd32(%struct.i40e_hw* %32, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @I40E_VPGEN_VFRSTAT_VFRD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %26

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @IXL_VF_RESET_TIMEOUT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %53 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %56 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %51, %47
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %61 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %62 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @I40E_VFGEN_RSTAT1(i32 %63)
  %65 = load i32, i32* @VIRTCHNL_VFR_COMPLETED, align 4
  %66 = call i32 @wr32(%struct.i40e_hw* %60, i32 %64, i32 %65)
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %68 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %69 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @I40E_VPGEN_VFRTRIG(i32 %70)
  %72 = call i32 @rd32(%struct.i40e_hw* %67, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @I40E_VPGEN_VFRTRIG_VFSWR_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %78 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %79 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @I40E_VPGEN_VFRTRIG(i32 %80)
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @wr32(%struct.i40e_hw* %77, i32 %81, i32 %82)
  %84 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %85 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %59
  %90 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %91 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %92 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %91, i32 0, i32 2
  %93 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %94 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %93, i32 0, i32 1
  %95 = call i32 @ixl_disable_rings(%struct.ixl_pf* %90, %struct.TYPE_2__* %92, i32* %94)
  br label %96

96:                                               ; preds = %89, %59
  %97 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %98 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %97, i32 0, i32 1
  %99 = call i32 @ixl_pf_qmgr_clear_queue_flags(i32* %98)
  %100 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %101 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %102 = call i32 @ixl_vf_release_resources(%struct.ixl_pf* %100, %struct.ixl_vf* %101)
  %103 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %104 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %105 = call i32 @ixl_vf_setup_vsi(%struct.ixl_pf* %103, %struct.ixl_vf* %104)
  %106 = load %struct.ixl_pf*, %struct.ixl_pf** %3, align 8
  %107 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %108 = call i32 @ixl_vf_map_queues(%struct.ixl_pf* %106, %struct.ixl_vf* %107)
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %110 = load %struct.ixl_vf*, %struct.ixl_vf** %4, align 8
  %111 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @I40E_VFGEN_RSTAT1(i32 %112)
  %114 = load i32, i32* @VIRTCHNL_VFR_VFACTIVE, align 4
  %115 = call i32 @wr32(%struct.i40e_hw* %109, i32 %113, i32 %114)
  %116 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %117 = call i32 @ixl_flush(%struct.i40e_hw* %116)
  ret void
}

declare dso_local i32 @ixl_flush_pcie(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @I40E_VPGEN_VFRSTAT(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VFGEN_RSTAT1(i32) #1

declare dso_local i32 @I40E_VPGEN_VFRTRIG(i32) #1

declare dso_local i32 @ixl_disable_rings(%struct.ixl_pf*, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @ixl_pf_qmgr_clear_queue_flags(i32*) #1

declare dso_local i32 @ixl_vf_release_resources(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @ixl_vf_setup_vsi(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @ixl_vf_map_queues(%struct.ixl_pf*, %struct.ixl_vf*) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

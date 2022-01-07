; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_vf_parse_hw_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_vf_parse_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.virtchnl_vf_resource = type { i32, i32, i32, i32, %struct.virtchnl_vsi_resource* }
%struct.virtchnl_vsi_resource = type { i64, i32 }

@VIRTCHNL_VF_OFFLOAD_L2 = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_IWARP = common dso_local global i32 0, align 4
@VIRTCHNL_VSI_SRIOV = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@I40E_NONDMA_TO_NONDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_vf_parse_hw_config(%struct.i40e_hw* %0, %struct.virtchnl_vf_resource* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.virtchnl_vf_resource*, align 8
  %5 = alloca %struct.virtchnl_vsi_resource*, align 8
  %6 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.virtchnl_vf_resource* %1, %struct.virtchnl_vf_resource** %4, align 8
  %7 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %8 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %7, i32 0, i32 4
  %9 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %8, align 8
  %10 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %9, i64 0
  store %struct.virtchnl_vsi_resource* %10, %struct.virtchnl_vsi_resource** %5, align 8
  %11 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %12 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %18 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 4
  %23 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %24 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %27 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %30 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %33 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %36 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_L2, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %44 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_IWARP, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %90, %2
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %57 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %54
  %61 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %62 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VIRTCHNL_VSI_SRIOV, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %60
  %67 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %68 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %72 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %76 = call i32 @i40e_memcpy(i32 %70, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %78 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %82 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ETH_ALEN, align 4
  %85 = load i32, i32* @I40E_NONDMA_TO_NONDMA, align 4
  %86 = call i32 @i40e_memcpy(i32 %80, i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %66, %60
  %88 = load %struct.virtchnl_vsi_resource*, %struct.virtchnl_vsi_resource** %5, align 8
  %89 = getelementptr inbounds %struct.virtchnl_vsi_resource, %struct.virtchnl_vsi_resource* %88, i32 1
  store %struct.virtchnl_vsi_resource* %89, %struct.virtchnl_vsi_resource** %5, align 8
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %54

93:                                               ; preds = %54
  ret void
}

declare dso_local i32 @i40e_memcpy(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_iov.c_ixl_vf_config_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.ixl_vf = type { i32, i32 }
%struct.virtchnl_vector_map = type { i32, i32, i32 }

@IXL_END_OF_INTR_LNKLST = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_RX = common dso_local global i32 0, align 4
@I40E_QUEUE_TYPE_TX = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT = common dso_local global i32 0, align 4
@I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixl_pf*, %struct.ixl_vf*, %struct.virtchnl_vector_map*)* @ixl_vf_config_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixl_vf_config_vector(%struct.ixl_pf* %0, %struct.ixl_vf* %1, %struct.virtchnl_vector_map* %2) #0 {
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.ixl_vf*, align 8
  %6 = alloca %struct.virtchnl_vector_map*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ixl_pf* %0, %struct.ixl_pf** %4, align 8
  store %struct.ixl_vf* %1, %struct.ixl_vf** %5, align 8
  store %struct.virtchnl_vector_map* %2, %struct.virtchnl_vector_map** %6, align 8
  %16 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %17 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %16, i32 0, i32 0
  store %struct.i40e_hw* %17, %struct.i40e_hw** %7, align 8
  %18 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %19 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %22 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @IXL_END_OF_INTR_LNKLST, align 4
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %78, %3
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %29, %26
  %33 = phi i1 [ true, %26 ], [ %31, %29 ]
  br i1 %33, label %34, label %79

34:                                               ; preds = %32
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @ffs(i32 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @I40E_QUEUE_TYPE_TX, align 4
  store i32 %41, i32* %9, align 4
  %42 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %43 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %42, i32 0, i32 1
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %47 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @ixl_vf_set_qctl(%struct.ixl_pf* %46, %struct.virtchnl_vector_map* %47, i32 %48, i32 %49, i32* %10, i32* %15)
  %51 = load i32, i32* %8, align 4
  %52 = shl i32 1, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %13, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %37, %34
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @ffs(i32 %60)
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* @I40E_QUEUE_TYPE_RX, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %65 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %64, i32 0, i32 1
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ixl_pf_qidx_from_vsi_qidx(i32* %65, i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %69 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @ixl_vf_set_qctl(%struct.ixl_pf* %68, %struct.virtchnl_vector_map* %69, i32 %70, i32 %71, i32* %10, i32* %15)
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 1, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %59, %56
  br label %26

79:                                               ; preds = %32
  %80 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %81 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %86 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @I40E_VPINT_LNKLST0(i32 %87)
  store i32 %88, i32* %11, align 4
  br label %98

89:                                               ; preds = %79
  %90 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %91 = load %struct.virtchnl_vector_map*, %struct.virtchnl_vector_map** %6, align 8
  %92 = getelementptr inbounds %struct.virtchnl_vector_map, %struct.virtchnl_vector_map* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ixl_vf*, %struct.ixl_vf** %5, align 8
  %95 = getelementptr inbounds %struct.ixl_vf, %struct.ixl_vf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IXL_VPINT_LNKLSTN_REG(%struct.i40e_hw* %90, i32 %93, i32 %96)
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %89, %84
  %99 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* @I40E_VPINT_LNKLST0_FIRSTQ_INDX_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @I40E_VPINT_LNKLST0_FIRSTQ_TYPE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = call i32 @wr32(%struct.i40e_hw* %99, i32 %100, i32 %107)
  %109 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %110 = call i32 @ixl_flush(%struct.i40e_hw* %109)
  ret void
}

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ixl_pf_qidx_from_vsi_qidx(i32*, i32) #1

declare dso_local i32 @ixl_vf_set_qctl(%struct.ixl_pf*, %struct.virtchnl_vector_map*, i32, i32, i32*, i32*) #1

declare dso_local i32 @I40E_VPINT_LNKLST0(i32) #1

declare dso_local i32 @IXL_VPINT_LNKLSTN_REG(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @ixl_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

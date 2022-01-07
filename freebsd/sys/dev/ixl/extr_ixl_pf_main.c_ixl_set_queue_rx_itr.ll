; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_queue_rx_itr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_ixl_pf_main.c_ixl_set_queue_rx_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixl_rx_queue = type { %struct.rx_ring, %struct.ixl_vsi* }
%struct.rx_ring = type { i32, i32, i32, i64, i32 }
%struct.ixl_vsi = type { i32, %struct.i40e_hw*, i64 }
%struct.i40e_hw = type { i32 }
%struct.ixl_pf = type { i32, i64 }

@IXL_ITR_20K = common dso_local global i32 0, align 4
@IXL_ITR_8K = common dso_local global i32 0, align 4
@IXL_ITR_100K = common dso_local global i32 0, align 4
@IXL_MAX_ITR = common dso_local global i32 0, align 4
@IXL_RX_ITR = common dso_local global i32 0, align 4
@IXL_ITR_DYNAMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixl_set_queue_rx_itr(%struct.ixl_rx_queue* %0) #0 {
  %2 = alloca %struct.ixl_rx_queue*, align 8
  %3 = alloca %struct.ixl_vsi*, align 8
  %4 = alloca %struct.ixl_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixl_rx_queue* %0, %struct.ixl_rx_queue** %2, align 8
  %10 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %10, i32 0, i32 1
  %12 = load %struct.ixl_vsi*, %struct.ixl_vsi** %11, align 8
  store %struct.ixl_vsi* %12, %struct.ixl_vsi** %3, align 8
  %13 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %14 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ixl_pf*
  store %struct.ixl_pf* %16, %struct.ixl_pf** %4, align 8
  %17 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %18 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %17, i32 0, i32 1
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %18, align 8
  store %struct.i40e_hw* %19, %struct.i40e_hw** %5, align 8
  %20 = load %struct.ixl_rx_queue*, %struct.ixl_rx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.ixl_rx_queue, %struct.ixl_rx_queue* %20, i32 0, i32 0
  store %struct.rx_ring* %21, %struct.rx_ring** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %152

27:                                               ; preds = %1
  %28 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %29 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %109

32:                                               ; preds = %27
  %33 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %34 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %37 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %41 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %44 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %70 [
    i32 128, label %46
    i32 130, label %52
    i32 129, label %64
  ]

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = icmp sgt i32 %47, 10
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  store i32 130, i32* %8, align 4
  %50 = load i32, i32* @IXL_ITR_20K, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %70

52:                                               ; preds = %32
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 20
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  store i32 129, i32* %8, align 4
  %56 = load i32, i32* @IXL_ITR_8K, align 4
  store i32 %56, i32* %7, align 4
  br label %63

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = icmp sle i32 %58, 10
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  store i32 128, i32* %8, align 4
  %61 = load i32, i32* @IXL_ITR_100K, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %57
  br label %63

63:                                               ; preds = %62, %55
  br label %70

64:                                               ; preds = %32
  %65 = load i32, i32* %9, align 4
  %66 = icmp sle i32 %65, 20
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  store i32 130, i32* %8, align 4
  %68 = load i32, i32* @IXL_ITR_20K, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %32, %69, %63, %51
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %73 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %76 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 10, %80
  %82 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %83 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = load i32, i32* %7, align 4
  %87 = mul nsw i32 9, %86
  %88 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %89 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = sdiv i32 %85, %91
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @IXL_MAX_ITR, align 4
  %95 = call i32 @min(i32 %93, i32 %94)
  %96 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %97 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %99 = load i32, i32* @IXL_RX_ITR, align 4
  %100 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %101 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @I40E_PFINT_ITRN(i32 %99, i32 %102)
  %104 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %105 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @wr32(%struct.i40e_hw* %98, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %79, %70
  br label %147

109:                                              ; preds = %27
  %110 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %111 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IXL_ITR_DYNAMIC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = load %struct.ixl_pf*, %struct.ixl_pf** %4, align 8
  %118 = getelementptr inbounds %struct.ixl_pf, %struct.ixl_pf* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %121 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  br label %122

122:                                              ; preds = %116, %109
  %123 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %124 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %127 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %122
  %131 = load %struct.ixl_vsi*, %struct.ixl_vsi** %3, align 8
  %132 = getelementptr inbounds %struct.ixl_vsi, %struct.ixl_vsi* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %135 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %137 = load i32, i32* @IXL_RX_ITR, align 4
  %138 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %139 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @I40E_PFINT_ITRN(i32 %137, i32 %140)
  %142 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %143 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @wr32(%struct.i40e_hw* %136, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %130, %122
  br label %147

147:                                              ; preds = %146, %108
  %148 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %149 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %151 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %147, %26
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_ITRN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

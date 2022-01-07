; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_clean_asq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_clean_asq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.i40e_adminq_ring }
%struct.i40e_adminq_ring = type { i64, i64, i32 }
%struct.i40e_asq_cmd_details = type { i64 }
%struct.i40e_aq_desc = type { i64 }

@I40E_DEBUG_AQ_MESSAGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ntc %d head %d.\0A\00", align 1
@I40E_DMA_TO_DMA = common dso_local global i32 0, align 4
@I40E_DMA_MEM = common dso_local global i32 0, align 4
@I40E_NONDMA_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_clean_asq(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca %struct.i40e_adminq_ring*, align 8
  %4 = alloca %struct.i40e_asq_cmd_details*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i40e_aq_desc, align 8
  %7 = alloca %struct.i40e_aq_desc*, align 8
  %8 = alloca i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.i40e_adminq_ring* %11, %struct.i40e_adminq_ring** %3, align 8
  %12 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %13 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %15, i64 %16)
  %18 = bitcast %struct.i40e_asq_cmd_details* %17 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %18, %struct.i40e_aq_desc** %7, align 8
  %19 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %19, i64 %20)
  store %struct.i40e_asq_cmd_details* %21, %struct.i40e_asq_cmd_details** %4, align 8
  br label %22

22:                                               ; preds = %78, %1
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @rd32(%struct.i40e_hw* %23, i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %22
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %34 = load i32, i32* @I40E_DEBUG_AQ_MESSAGE, align 4
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %38 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @rd32(%struct.i40e_hw* %36, i32 %41)
  %43 = call i32 @i40e_debug(%struct.i40e_hw* %33, i32 %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %42)
  %44 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %45 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %32
  %49 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %50 = getelementptr inbounds %struct.i40e_asq_cmd_details, %struct.i40e_asq_cmd_details* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*
  store i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)* %52, i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)** %8, align 8
  %53 = bitcast %struct.i40e_aq_desc* %6 to %struct.i40e_asq_cmd_details*
  %54 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %7, align 8
  %55 = bitcast %struct.i40e_aq_desc* %54 to %struct.i40e_asq_cmd_details*
  %56 = load i32, i32* @I40E_DMA_TO_DMA, align 4
  %57 = call i32 @i40e_memcpy(%struct.i40e_asq_cmd_details* %53, %struct.i40e_asq_cmd_details* %55, i32 8, i32 %56)
  %58 = load i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)*, i32 (%struct.i40e_hw*, %struct.i40e_asq_cmd_details*)** %8, align 8
  %59 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %60 = bitcast %struct.i40e_aq_desc* %6 to %struct.i40e_asq_cmd_details*
  %61 = call i32 %58(%struct.i40e_hw* %59, %struct.i40e_asq_cmd_details* %60)
  br label %62

62:                                               ; preds = %48, %32
  %63 = load %struct.i40e_aq_desc*, %struct.i40e_aq_desc** %7, align 8
  %64 = bitcast %struct.i40e_aq_desc* %63 to %struct.i40e_asq_cmd_details*
  %65 = load i32, i32* @I40E_DMA_MEM, align 4
  %66 = call i32 @i40e_memset(%struct.i40e_asq_cmd_details* %64, i32 0, i32 8, i32 %65)
  %67 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %68 = load i32, i32* @I40E_NONDMA_MEM, align 4
  %69 = call i32 @i40e_memset(%struct.i40e_asq_cmd_details* %67, i32 0, i32 8, i32 %68)
  %70 = load i64, i64* %5, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %74 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  store i64 0, i64* %5, align 8
  br label %78

78:                                               ; preds = %77, %62
  %79 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %80 = load i64, i64* %5, align 8
  %81 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %79, i64 %80)
  %82 = bitcast %struct.i40e_asq_cmd_details* %81 to %struct.i40e_aq_desc*
  store %struct.i40e_aq_desc* %82, %struct.i40e_aq_desc** %7, align 8
  %83 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %84 = load i64, i64* %5, align 8
  %85 = call %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8 %83, i64 %84)
  store %struct.i40e_asq_cmd_details* %85, %struct.i40e_asq_cmd_details** %4, align 8
  br label %22

86:                                               ; preds = %22
  %87 = load i64, i64* %5, align 8
  %88 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %89 = getelementptr inbounds %struct.i40e_adminq_ring, %struct.i40e_adminq_ring* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.i40e_adminq_ring*, %struct.i40e_adminq_ring** %3, align 8
  %91 = call i64 @I40E_DESC_UNUSED(%struct.i40e_adminq_ring* %90)
  ret i64 %91
}

declare dso_local %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DESC(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8, i64) #1

declare dso_local %struct.i40e_asq_cmd_details* @I40E_ADMINQ_DETAILS(%struct.i40e_adminq_ring* byval(%struct.i40e_adminq_ring) align 8, i64) #1

declare dso_local i64 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_debug(%struct.i40e_hw*, i32, i8*, i64, i64) #1

declare dso_local i32 @i40e_memcpy(%struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details*, i32, i32) #1

declare dso_local i32 @i40e_memset(%struct.i40e_asq_cmd_details*, i32, i32, i32) #1

declare dso_local i64 @I40E_DESC_UNUSED(%struct.i40e_adminq_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_copy_fpdu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_copy_fpdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ecore_iwarp_fpdu = type { i64, i64, i32*, i32, %struct.ecore_iwarp_ll2_buff* }
%struct.unaligned_opaque_data = type { i32 }
%struct.ecore_iwarp_ll2_buff = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [145 x i8] c"MPA ALIGN: Unexpected: buffer is not large enough for split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"MPA ALIGN Copying fpdu: [%p, %d] [%p, %d]\0A\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"MPA ALIGN: split fpdu buff_size = %d mpa_frag_len = %d, tcp_payload_size = %d, incomplete_bytes = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.unaligned_opaque_data*, %struct.ecore_iwarp_ll2_buff*, i64)* @ecore_iwarp_copy_fpdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_iwarp_copy_fpdu(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_fpdu* %1, %struct.unaligned_opaque_data* %2, %struct.ecore_iwarp_ll2_buff* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca %struct.ecore_iwarp_fpdu*, align 8
  %9 = alloca %struct.unaligned_opaque_data*, align 8
  %10 = alloca %struct.ecore_iwarp_ll2_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %7, align 8
  store %struct.ecore_iwarp_fpdu* %1, %struct.ecore_iwarp_fpdu** %8, align 8
  store %struct.unaligned_opaque_data* %2, %struct.unaligned_opaque_data** %9, align 8
  store %struct.ecore_iwarp_ll2_buff* %3, %struct.ecore_iwarp_ll2_buff** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %12, align 8
  %20 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = add nsw i64 %22, %23
  %25 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = ptrtoint i32* %27 to i64
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %5
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %32 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %33 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @DP_ERR(%struct.ecore_hwfn* %31, i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0), i32* %34, i64 %37, i64 %38, i64 %41)
  %43 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %43, i32* %6, align 4
  br label %144

44:                                               ; preds = %5
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %46 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %47 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %54 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %57 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = ptrtoint i32* %60 to i64
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %45, i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32* %49, i64 %52, i64 %61, i64 %62)
  %64 = load i32*, i32** %12, align 8
  %65 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %69 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @OSAL_MEMCPY(i32* %64, i32* %67, i64 %70)
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %74 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %78 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.unaligned_opaque_data*, %struct.unaligned_opaque_data** %9, align 8
  %81 = getelementptr inbounds %struct.unaligned_opaque_data, %struct.unaligned_opaque_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @OSAL_MEMCPY(i32* %76, i32* %84, i64 %85)
  %87 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %88 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %89 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %90 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %89, i32 0, i32 4
  %91 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %90, align 8
  %92 = call i32 @ecore_iwarp_recycle_pkt(%struct.ecore_hwfn* %87, %struct.ecore_iwarp_fpdu* %88, %struct.ecore_iwarp_ll2_buff* %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %44
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %144

97:                                               ; preds = %44
  %98 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %99 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %103 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @OSAL_MEMCPY(i32* %100, i32* %101, i64 %106)
  %108 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %109 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %110 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %109, i32 0, i32 4
  store %struct.ecore_iwarp_ll2_buff* %108, %struct.ecore_iwarp_ll2_buff** %110, align 8
  %111 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %112 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %115 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %117 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %120 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %119, i32 0, i32 2
  store i32* %118, i32** %120, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %123 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %128 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %129, %126
  store i64 %130, i64* %128, align 8
  %131 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %132 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %133 = load %struct.ecore_iwarp_ll2_buff*, %struct.ecore_iwarp_ll2_buff** %10, align 8
  %134 = getelementptr inbounds %struct.ecore_iwarp_ll2_buff, %struct.ecore_iwarp_ll2_buff* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %137 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_fpdu** %8, align 8
  %141 = getelementptr inbounds %struct.ecore_iwarp_fpdu, %struct.ecore_iwarp_fpdu* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %131, i32 %132, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32* %135, i64 %138, i64 %139, i64 %142)
  store i32 0, i32* %6, align 4
  br label %144

144:                                              ; preds = %97, %95, %30
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32*, i64, i64, i64) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32*, i64, i64, i64) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32*, i64) #1

declare dso_local i32 @ecore_iwarp_recycle_pkt(%struct.ecore_hwfn*, %struct.ecore_iwarp_fpdu*, %struct.ecore_iwarp_ll2_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

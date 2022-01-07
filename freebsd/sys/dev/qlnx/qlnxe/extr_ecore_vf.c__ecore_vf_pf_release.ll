; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c__ecore_vf_pf_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_vf.c__ecore_vf_pf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vf_iov = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ecore_hwfn = type { %struct.ecore_vf_iov*, i32, i64 }
%struct.vfpf_first_tlv = type { i32 }

@CHANNEL_TLV_RELEASE = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@ECORE_AGAIN = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_vf_iov* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32)* @_ecore_vf_pf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ecore_vf_pf_release(%struct.ecore_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ecore_vf_iov*, align 8
  %7 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %8 = alloca %struct.vfpf_first_tlv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %11, i32 0, i32 0
  %13 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %12, align 8
  store %struct.ecore_vf_iov* %13, %struct.ecore_vf_iov** %6, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %15 = load i32, i32* @CHANNEL_TLV_RELEASE, align 4
  %16 = call %struct.vfpf_first_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn* %14, i32 %15, i32 4)
  store %struct.vfpf_first_tlv* %16, %struct.vfpf_first_tlv** %8, align 8
  %17 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %17, i32 0, i32 6
  %19 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %20 = call i32 @ecore_add_tlv(i32* %18, i32 %19, i32 4)
  %21 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %24, %struct.pfvf_def_resp_tlv** %7, align 8
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %27 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @ecore_send_msg2pf(%struct.ecore_hwfn* %25, i64* %28, i32 8)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %35 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @ECORE_AGAIN, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %40, %33, %2
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn* %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %3, align 4
  br label %116

50:                                               ; preds = %42
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %52 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %59 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %61, i32 0, i32 5
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %65 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %60, %struct.TYPE_6__* %63, i32 %66, i32 4)
  br label %68

68:                                               ; preds = %57, %50
  %69 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %70 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = icmp ne %struct.TYPE_6__* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %68
  %74 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %75 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %78 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %81 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %76, %struct.TYPE_6__* %79, i32 %82, i32 4)
  br label %84

84:                                               ; preds = %73, %68
  %85 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %86 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = icmp ne %struct.TYPE_6__* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  store i32 4, i32* %9, align 4
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %92 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %95 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_vf_iov, %struct.ecore_vf_iov* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @OSAL_DMA_FREE_COHERENT(i32 %93, %struct.TYPE_6__* %97, i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %90, %84
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %106 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %109 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %108, i32 0, i32 0
  %110 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** %109, align 8
  %111 = call i32 @OSAL_FREE(i32 %107, %struct.ecore_vf_iov* %110)
  %112 = load %struct.ecore_vf_iov*, %struct.ecore_vf_iov** @OSAL_NULL, align 8
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %114 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %113, i32 0, i32 0
  store %struct.ecore_vf_iov* %112, %struct.ecore_vf_iov** %114, align 8
  %115 = load i32, i32* %10, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %104, %48
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local %struct.vfpf_first_tlv* @ecore_vf_pf_prep(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @ecore_add_tlv(i32*, i32, i32) #1

declare dso_local i32 @ecore_send_msg2pf(%struct.ecore_hwfn*, i64*, i32) #1

declare dso_local i32 @ecore_vf_pf_req_end(%struct.ecore_hwfn*, i32) #1

declare dso_local i32 @OSAL_DMA_FREE_COHERENT(i32, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @OSAL_FREE(i32, %struct.ecore_vf_iov*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

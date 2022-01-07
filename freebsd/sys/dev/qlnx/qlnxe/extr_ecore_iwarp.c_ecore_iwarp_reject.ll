; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_reject.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_reject_in = type { i32, i32, i32, i64 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_iwarp_ep = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [38 x i8] c"Ep Context receive in reject is NULL\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"EP(0x%x)\0A\00", align 1
@OSAL_NULL = common dso_local global i32 0, align 4
@ECORE_IWARP_EP_CLOSED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"(0x%x) Reject called on EP in CLOSED state\0A\00", align 1
@ECORE_IWARP_INVALID_TCP_CID = common dso_local global i32 0, align 4
@ECORE_CONN_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iwarp_reject(i8* %0, %struct.ecore_iwarp_reject_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_iwarp_reject_in*, align 8
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_iwarp_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_iwarp_reject_in* %1, %struct.ecore_iwarp_reject_in** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %11, %struct.ecore_hwfn** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ecore_iwarp_reject_in*, %struct.ecore_iwarp_reject_in** %5, align 8
  %13 = getelementptr inbounds %struct.ecore_iwarp_reject_in, %struct.ecore_iwarp_reject_in* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ecore_iwarp_ep*
  store %struct.ecore_iwarp_ep* %15, %struct.ecore_iwarp_ep** %7, align 8
  %16 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %17 = icmp ne %struct.ecore_iwarp_ep* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %20 = call i32 @DP_ERR(%struct.ecore_hwfn* %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %95

22:                                               ; preds = %2
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %24 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %25 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.ecore_iwarp_reject_in*, %struct.ecore_iwarp_reject_in** %5, align 8
  %30 = getelementptr inbounds %struct.ecore_iwarp_reject_in, %struct.ecore_iwarp_reject_in* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %33 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @OSAL_NULL, align 4
  %35 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %36 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %38 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %39 = call i32 @ecore_iwarp_mpa_v2_set_private(%struct.ecore_hwfn* %37, %struct.ecore_iwarp_ep* %38, i32* %8)
  %40 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %41 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %46 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load %struct.ecore_iwarp_reject_in*, %struct.ecore_iwarp_reject_in** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_iwarp_reject_in, %struct.ecore_iwarp_reject_in* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %54 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %57 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %56, i32 0, i32 2
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load %struct.ecore_iwarp_reject_in*, %struct.ecore_iwarp_reject_in** %5, align 8
  %66 = getelementptr inbounds %struct.ecore_iwarp_reject_in, %struct.ecore_iwarp_reject_in* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ecore_iwarp_reject_in*, %struct.ecore_iwarp_reject_in** %5, align 8
  %69 = getelementptr inbounds %struct.ecore_iwarp_reject_in, %struct.ecore_iwarp_reject_in* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @OSAL_MEMCPY(i32* %64, i32 %67, i32 %70)
  %72 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %73 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ECORE_IWARP_EP_CLOSED, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %22
  %78 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %79 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %80 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %78, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ECORE_IWARP_INVALID_TCP_CID, align 4
  %84 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %85 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %87 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %88 = call i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn* %86, %struct.ecore_iwarp_ep* %87)
  %89 = load i32, i32* @ECORE_CONN_RESET, align 4
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %22
  %91 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %92 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %7, align 8
  %93 = call i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn* %91, %struct.ecore_iwarp_ep* %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %90, %77, %18
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_iwarp_mpa_v2_set_private(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32*) #1

declare dso_local i32 @OSAL_MEMCPY(i32*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @ecore_iwarp_mpa_offload(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

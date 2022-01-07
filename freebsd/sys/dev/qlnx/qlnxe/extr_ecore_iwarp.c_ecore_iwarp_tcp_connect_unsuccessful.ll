; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_tcp_connect_unsuccessful.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_tcp_connect_unsuccessful.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ecore_iwarp_ep = type { i64, i32, i32, i32 (i32, %struct.ecore_iwarp_cm_event_params*)*, i32, i32, i32 }
%struct.ecore_iwarp_cm_event_params = type opaque
%struct.ecore_iwarp_cm_event_params.0 = type { i8*, i32*, %struct.ecore_iwarp_ep*, i32 }

@ECORE_IWARP_EVENT_ACTIVE_COMPLETE = common dso_local global i32 0, align 4
@ECORE_IWARP_EP_CLOSED = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s(0x%x) TCP connect got invalid packet\0A\00", align 1
@ECORE_CONN_RESET = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"%s(0x%x) TCP Connection Reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%s(0x%x) TCP timeout\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"%s(0x%x) MPA not supported VER\0A\00", align 1
@ECORE_CONN_REFUSED = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"%s(0x%x) MPA Invalid Packet\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"%s(0x%x) Unexpected return code tcp connect: %d\0A\00", align 1
@TCP_CONNECT_PASSIVE = common dso_local global i64 0, align 8
@ECORE_IWARP_INVALID_TCP_CID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*, i32)* @ecore_iwarp_tcp_connect_unsuccessful to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_tcp_connect_unsuccessful(%struct.ecore_hwfn* %0, %struct.ecore_iwarp_ep* %1, i32 %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_iwarp_ep*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_iwarp_cm_event_params.0, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_iwarp_ep* %1, %struct.ecore_iwarp_ep** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = call i32 @OSAL_MEM_ZERO(%struct.ecore_iwarp_cm_event_params.0* %7, i32 32)
  %9 = load i32, i32* @ECORE_IWARP_EVENT_ACTIVE_COMPLETE, align 4
  %10 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %12 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 2
  store %struct.ecore_iwarp_ep* %11, %struct.ecore_iwarp_ep** %12, align 8
  %13 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %14 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 1
  store i32* %14, i32** %15, align 8
  %16 = load i32, i32* @ECORE_IWARP_EP_CLOSED, align 4
  %17 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %18 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %17, i32 0, i32 5
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %72 [
    i32 129, label %20
    i32 130, label %31
    i32 128, label %42
    i32 131, label %52
    i32 132, label %62
  ]

20:                                               ; preds = %3
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %22 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %23 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %24 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %23)
  %25 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %26 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %21, i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i8*, i8** @ECORE_CONN_RESET, align 8
  %30 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  br label %83

31:                                               ; preds = %3
  %32 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %33 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %34 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %35 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %34)
  %36 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %37 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %32, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load i8*, i8** @ECORE_CONN_RESET, align 8
  %41 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  br label %83

42:                                               ; preds = %3
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %44 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %45 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %44)
  %46 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i8*, i8** @ECORE_TIMEOUT, align 8
  %51 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %50, i8** %51, align 8
  br label %83

52:                                               ; preds = %3
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %54 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %55 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %54)
  %56 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %57 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %53, i32 0, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i8*, i8** @ECORE_CONN_REFUSED, align 8
  %61 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  br label %83

62:                                               ; preds = %3
  %63 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %64 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %65 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %64)
  %66 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %67 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %63, i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load i8*, i8** @ECORE_CONN_RESET, align 8
  %71 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %70, i8** %71, align 8
  br label %83

72:                                               ; preds = %3
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %74 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %75 = call i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep* %74)
  %76 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %77 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @DP_ERR(%struct.ecore_hwfn* %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  %81 = load i8*, i8** @ECORE_CONN_RESET, align 8
  %82 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params.0, %struct.ecore_iwarp_cm_event_params.0* %7, i32 0, i32 0
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %72, %62, %52, %42, %31, %20
  %84 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %85 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TCP_CONNECT_PASSIVE, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i32, i32* @ECORE_IWARP_INVALID_TCP_CID, align 4
  %91 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %92 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %94 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %95 = call i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn* %93, %struct.ecore_iwarp_ep* %94)
  br label %125

96:                                               ; preds = %83
  %97 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %98 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %97, i32 0, i32 3
  %99 = load i32 (i32, %struct.ecore_iwarp_cm_event_params*)*, i32 (i32, %struct.ecore_iwarp_cm_event_params*)** %98, align 8
  %100 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %101 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = bitcast %struct.ecore_iwarp_cm_event_params.0* %7 to %struct.ecore_iwarp_cm_event_params*
  %104 = call i32 %99(i32 %102, %struct.ecore_iwarp_cm_event_params* %103)
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %106 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = call i32 @OSAL_SPIN_LOCK(i32* %109)
  %111 = load %struct.ecore_iwarp_ep*, %struct.ecore_iwarp_ep** %5, align 8
  %112 = getelementptr inbounds %struct.ecore_iwarp_ep, %struct.ecore_iwarp_ep* %111, i32 0, i32 1
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %114 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = call i32 @OSAL_LIST_REMOVE_ENTRY(i32* %112, i32* %117)
  %119 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %120 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @OSAL_SPIN_UNLOCK(i32* %123)
  br label %125

125:                                              ; preds = %96, %89
  ret void
}

declare dso_local i32 @OSAL_MEM_ZERO(%struct.ecore_iwarp_cm_event_params.0*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @ECORE_IWARP_CONNECT_MODE_STRING(%struct.ecore_iwarp_ep*) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*, i32, i32, i32) #1

declare dso_local i32 @ecore_iwarp_return_ep(%struct.ecore_hwfn*, %struct.ecore_iwarp_ep*) #1

declare dso_local i32 @OSAL_SPIN_LOCK(i32*) #1

declare dso_local i32 @OSAL_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @OSAL_SPIN_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

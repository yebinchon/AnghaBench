; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_mpa_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iw_mpa_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_iwarp_cm_event_params = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i32*, i32*, i32, i32, i32 }
%struct.qlnxr_iw_listener = type { %struct.TYPE_6__*, %struct.qlnxr_dev* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i32, i64, i8*, i8*, i32, i32, i32, i32 }
%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_iw_ep = type { i32, %struct.qlnxr_dev* }
%struct.sockaddr_in = type { %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@ECORE_TCP_IPV4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"only IPv4 supported [0x%x]\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"kzalloc{ep) failed\0A\00", align 1
@IW_CM_EVENT_CONNECT_REQUEST = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ecore_iwarp_cm_event_params*)* @qlnxr_iw_mpa_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_iw_mpa_request(i8* %0, %struct.ecore_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ecore_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qlnxr_iw_listener*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_iw_ep*, align 8
  %8 = alloca %struct.iw_cm_event, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ecore_iwarp_cm_event_params* %1, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.qlnxr_iw_listener*
  store %struct.qlnxr_iw_listener* %13, %struct.qlnxr_iw_listener** %5, align 8
  %14 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %5, align 8
  %15 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %14, i32 0, i32 1
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %15, align 8
  store %struct.qlnxr_dev* %16, %struct.qlnxr_dev** %6, align 8
  %17 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %18 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = call i32 @QL_DPRINT12(i32* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ECORE_TCP_IPV4, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %32 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %136

37:                                               ; preds = %2
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.qlnxr_iw_ep* @kzalloc(i32 16, i32 %38)
  store %struct.qlnxr_iw_ep* %39, %struct.qlnxr_iw_ep** %7, align 8
  %40 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %7, align 8
  %41 = icmp ne %struct.qlnxr_iw_ep* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %136

45:                                               ; preds = %37
  %46 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %47 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %7, align 8
  %48 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %47, i32 0, i32 1
  store %struct.qlnxr_dev* %46, %struct.qlnxr_dev** %48, align 8
  %49 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %50 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %7, align 8
  %53 = getelementptr inbounds %struct.qlnxr_iw_ep, %struct.qlnxr_iw_ep* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = call i32 @memset(%struct.iw_cm_event* %8, i32 0, i32 48)
  %55 = load i32, i32* @IW_CM_EVENT_CONNECT_REQUEST, align 4
  %56 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %58 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 7
  store i32 %59, i32* %60, align 8
  %61 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 6
  %62 = bitcast i32* %61 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %62, %struct.sockaddr_in** %9, align 8
  %63 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 5
  %64 = bitcast i32* %63 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %64, %struct.sockaddr_in** %10, align 8
  %65 = load i8*, i8** @AF_INET, align 8
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %67 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @AF_INET, align 8
  %69 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %70 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %72 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @htons(i32 %75)
  %77 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %78 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %77, i32 0, i32 1
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %80 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @htons(i32 %83)
  %85 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %86 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %88 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @htonl(i32 %93)
  %95 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %96 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %99 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %98, i32 0, i32 0
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @htonl(i32 %104)
  %106 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i8* %105, i8** %108, align 8
  %109 = load %struct.qlnxr_iw_ep*, %struct.qlnxr_iw_ep** %7, align 8
  %110 = bitcast %struct.qlnxr_iw_ep* %109 to i8*
  %111 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 4
  store i8* %110, i8** %111, align 8
  %112 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %113 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %112, i32 0, i32 0
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 3
  store i8* %117, i8** %118, align 8
  %119 = load %struct.ecore_iwarp_cm_event_params*, %struct.ecore_iwarp_cm_event_params** %4, align 8
  %120 = getelementptr inbounds %struct.ecore_iwarp_cm_event_params, %struct.ecore_iwarp_cm_event_params* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 2
  store i64 %123, i64* %124, align 8
  %125 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %5, align 8
  %126 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %125, i32 0, i32 0
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_6__*, %struct.iw_cm_event*)** %128, align 8
  %130 = load %struct.qlnxr_iw_listener*, %struct.qlnxr_iw_listener** %5, align 8
  %131 = getelementptr inbounds %struct.qlnxr_iw_listener, %struct.qlnxr_iw_listener* %130, i32 0, i32 0
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 %129(%struct.TYPE_6__* %132, %struct.iw_cm_event* %8)
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @QL_DPRINT12(i32* %134, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %45, %42, %29
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local %struct.qlnxr_iw_ep* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

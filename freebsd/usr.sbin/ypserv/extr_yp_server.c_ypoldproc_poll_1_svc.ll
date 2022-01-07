; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypoldproc_poll_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypoldproc_poll_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8*, i64, i32, i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_18__ = type { i64, i64 }

@ypoldproc_poll_1_svc.result = internal global %struct.TYPE_17__ zeroinitializer, align 8
@YPRESP_MAP_PARMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@YPREQ_MAP_PARMS = common dso_local global i64 0, align 8
@YP_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @ypoldproc_poll_1_svc(%struct.TYPE_20__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %8 = load i32, i32* @YPRESP_MAP_PARMS, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 1), align 8
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 3), align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 0), align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @YPREQ_MAP_PARMS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, %struct.TYPE_17__** %3, align 8
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %30 = call %struct.TYPE_19__* @ypproc_master_2_svc(%struct.TYPE_21__* %28, %struct.svc_req* %29)
  store %struct.TYPE_19__* %30, %struct.TYPE_19__** %6, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %32 = icmp eq %struct.TYPE_19__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %64

34:                                               ; preds = %25
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @YP_TRUE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, %struct.TYPE_17__** %3, align 8
  br label %64

41:                                               ; preds = %34
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %46 = call %struct.TYPE_18__* @ypproc_order_2_svc(%struct.TYPE_21__* %44, %struct.svc_req* %45)
  store %struct.TYPE_18__* %46, %struct.TYPE_18__** %7, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %48 = icmp eq %struct.TYPE_18__* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  br label %64

50:                                               ; preds = %41
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @YP_TRUE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  store %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, %struct.TYPE_17__** %3, align 8
  br label %64

57:                                               ; preds = %50
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 0), align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, i32 0, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_17__* @ypoldproc_poll_1_svc.result, %struct.TYPE_17__** %3, align 8
  br label %64

64:                                               ; preds = %57, %56, %49, %40, %33, %24
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %65
}

declare dso_local %struct.TYPE_19__* @ypproc_master_2_svc(%struct.TYPE_21__*, %struct.svc_req*) #1

declare dso_local %struct.TYPE_18__* @ypproc_order_2_svc(%struct.TYPE_21__*, %struct.svc_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

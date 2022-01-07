; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypoldproc_match_1_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypserv/extr_yp_server.c_ypoldproc_match_1_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.svc_req = type { i32 }

@ypoldproc_match_1_svc.result = internal global %struct.TYPE_12__ zeroinitializer, align 8
@YPRESP_VAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@YPREQ_KEY = common dso_local global i64 0, align 8
@YP_BADARGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @ypoldproc_match_1_svc(%struct.TYPE_13__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %7 = load i32, i32* @YPRESP_VAL, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ypoldproc_match_1_svc.result, i32 0, i32 1), align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ypoldproc_match_1_svc.result, i32 0, i32 0, i32 0, i32 1, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ypoldproc_match_1_svc.result, i32 0, i32 0, i32 0, i32 1, i32 1), align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @YPREQ_KEY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @YP_BADARGS, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ypoldproc_match_1_svc.result, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct.TYPE_12__* @ypoldproc_match_1_svc.result, %struct.TYPE_12__** %3, align 8
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.svc_req*, %struct.svc_req** %5, align 8
  %20 = call i32* @ypproc_match_2_svc(i32* %18, %struct.svc_req* %19)
  store i32* %20, i32** %6, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %3, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @bcopy(i32* %25, %struct.TYPE_14__* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ypoldproc_match_1_svc.result, i32 0, i32 0, i32 0), i32 4)
  store %struct.TYPE_12__* @ypoldproc_match_1_svc.result, %struct.TYPE_12__** %3, align 8
  br label %27

27:                                               ; preds = %24, %23, %13
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  ret %struct.TYPE_12__* %28
}

declare dso_local i32* @ypproc_match_2_svc(i32*, %struct.svc_req*) #1

declare dso_local i32 @bcopy(i32*, %struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

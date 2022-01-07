; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_test_4_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_test_4_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, i8*, i64, i64, i32, i32 }
%struct.svc_req = type { i32 }
%struct.nlm4_holder = type { i32 }

@nlm4_test_4_svc.res = internal global %struct.TYPE_10__ zeroinitializer, align 4
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nlm4_test\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Locking arguments:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Alock arguments:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Caller Name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"File Handle:\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Owner Handle:\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SVID:        %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Lock Offset: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Lock Length: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Exclusive:   %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_granted = common dso_local global i32 0, align 4
@nlm4_denied = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @nlm4_test_4_svc(%struct.TYPE_11__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  %5 = alloca %struct.nlm4_holder*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %6 = load i32, i32* @debug_level, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %10 = call i32 @log_from_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %9)
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i32, i32* @debug_level, align 4
  %13 = icmp sgt i32 %12, 5
  br i1 %13, label %14, label %66

14:                                               ; preds = %11
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = call i32 (i32, i8*, ...) @syslog(i32 %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = call i32 @log_netobj(i32* %18)
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @syslog(i32 %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @LOG_DEBUG, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @syslog(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @LOG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @syslog(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 5
  %33 = call i32 @log_netobj(i32* %32)
  %34 = load i32, i32* @LOG_DEBUG, align 4
  %35 = call i32 (i32, i8*, ...) @syslog(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = call i32 @log_netobj(i32* %38)
  %40 = load i32, i32* @LOG_DEBUG, align 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 (i32, i8*, ...) @syslog(i32 %40, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @LOG_DEBUG, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @syslog(i32 %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @LOG_DEBUG, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @syslog(i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %56)
  %58 = load i32, i32* @LOG_DEBUG, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %65 = call i32 (i32, i8*, ...) @syslog(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %14, %11
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 2
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @LOCK_V4, align 4
  %73 = call %struct.nlm4_holder* @testlock(%struct.TYPE_12__* %68, i64 %71, i32 %72)
  store %struct.nlm4_holder* %73, %struct.nlm4_holder** %5, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_test_4_svc.res, i32 0, i32 1), align 4
  %77 = load %struct.nlm4_holder*, %struct.nlm4_holder** %5, align 8
  %78 = icmp eq %struct.nlm4_holder* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @nlm4_granted, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_test_4_svc.res, i32 0, i32 0, i32 1), align 4
  br label %85

81:                                               ; preds = %66
  %82 = load i32, i32* @nlm4_denied, align 4
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_test_4_svc.res, i32 0, i32 0, i32 1), align 4
  %83 = load %struct.nlm4_holder*, %struct.nlm4_holder** %5, align 8
  %84 = call i32 @memcpy(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_test_4_svc.res, i32 0, i32 0, i32 0, i32 0), %struct.nlm4_holder* %83, i32 4)
  br label %85

85:                                               ; preds = %81, %79
  ret %struct.TYPE_10__* @nlm4_test_4_svc.res
}

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @log_netobj(i32*) #1

declare dso_local %struct.nlm4_holder* @testlock(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.nlm4_holder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

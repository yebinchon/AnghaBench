; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_lock_4_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lock_proc.c_nlm4_lock_4_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i8*, i32, i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i64, i64, i32, i32 }
%struct.svc_req = type { i32 }

@nlm4_lock_4_svc.res = internal global %struct.TYPE_10__ zeroinitializer, align 4
@debug_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nlm4_lock\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Locking arguments:\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Alock arguments:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Caller Name: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"File Handle:\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"Owner Handle:\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"SVID:        %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Lock Offset: %llu\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Lock Length: %llu\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Block:       %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"Exclusive:   %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"Reclaim:     %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"State num:   %d\0A\00", align 1
@LOCK_MON = common dso_local global i32 0, align 4
@LOCK_V4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @nlm4_lock_4_svc(%struct.TYPE_11__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.svc_req*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.svc_req* %1, %struct.svc_req** %4, align 8
  %5 = load i32, i32* @debug_level, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %9 = call i32 @log_from_addr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.svc_req* %8)
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* @debug_level, align 4
  %12 = icmp sgt i32 %11, 5
  br i1 %12, label %13, label %86

13:                                               ; preds = %10
  %14 = load i32, i32* @LOG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @syslog(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = call i32 @log_netobj(i32* %17)
  %19 = load i32, i32* @LOG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @syslog(i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %21 = load i32, i32* @LOG_DEBUG, align 4
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i32, i8*, ...) @syslog(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @LOG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @syslog(i32 %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 5
  %32 = call i32 @log_netobj(i32* %31)
  %33 = load i32, i32* @LOG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @syslog(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = call i32 @log_netobj(i32* %37)
  %39 = load i32, i32* @LOG_DEBUG, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, ...) @syslog(i32 %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @LOG_DEBUG, align 4
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i32, i8*, ...) @syslog(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @LOG_DEBUG, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i32, i8*, ...) @syslog(i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @LOG_DEBUG, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %64 = call i32 (i32, i8*, ...) @syslog(i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* @LOG_DEBUG, align 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %72 = call i32 (i32, i8*, ...) @syslog(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @LOG_DEBUG, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)
  %80 = call i32 (i32, i8*, ...) @syslog(i32 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i8* %79)
  %81 = load i32, i32* @LOG_DEBUG, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i32, i8*, ...) @syslog(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %84)
  br label %86

86:                                               ; preds = %13, %10
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_lock_4_svc.res, i32 0, i32 1), align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %91 = load %struct.svc_req*, %struct.svc_req** %4, align 8
  %92 = load i32, i32* @LOCK_MON, align 4
  %93 = load i32, i32* @LOCK_V4, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @getlock(%struct.TYPE_11__* %90, %struct.svc_req* %91, i32 %94)
  store i32 %95, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @nlm4_lock_4_svc.res, i32 0, i32 0, i32 0), align 4
  ret %struct.TYPE_10__* @nlm4_lock_4_svc.res
}

declare dso_local i32 @log_from_addr(i8*, %struct.svc_req*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i32 @log_netobj(i32*) #1

declare dso_local i32 @getlock(%struct.TYPE_11__*, %struct.svc_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

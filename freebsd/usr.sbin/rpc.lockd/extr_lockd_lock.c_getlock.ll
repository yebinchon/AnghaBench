; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_getlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpc.lockd/extr_lockd_lock.c_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.svc_req = type { i32 }
%struct.file_lock = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Entering getlock...\0A\00", align 1
@grace_expired = common dso_local global i64 0, align 8
@LOCK_V4 = common dso_local global i32 0, align 4
@nlm4_denied_grace_period = common dso_local global i32 0, align 4
@nlm_denied_grace_period = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"lock allocate failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@nlm4_denied_nolocks = common dso_local global i32 0, align 4
@nlm_denied_nolocks = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"received fhandle size %d, local size %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Pointer to new lock is %p\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Exiting getlock...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getlock(%struct.TYPE_8__* %0, %struct.svc_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.svc_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.file_lock*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.svc_req* %1, %struct.svc_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %11 = load i64, i64* @grace_expired, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @LOCK_V4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @nlm4_denied_grace_period, align 4
  br label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @nlm_denied_grace_period, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %4, align 4
  br label %127

29:                                               ; preds = %13, %3
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 5
  %35 = load %struct.svc_req*, %struct.svc_req** %6, align 8
  %36 = getelementptr inbounds %struct.svc_req, %struct.svc_req* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_9__* @svc_getrpccaller(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.sockaddr*
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.file_lock* @allocate_file_lock(i32* %32, i32* %34, %struct.sockaddr* %41, i32 %45)
  store %struct.file_lock* %46, %struct.file_lock** %8, align 8
  %47 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %48 = icmp eq %struct.file_lock* %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %29
  %50 = load i32, i32* @LOG_NOTICE, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = call i32 @strerror(i32 %51)
  %53 = call i32 @syslog(i32 %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @LOCK_V4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @nlm4_denied_nolocks, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @nlm_denied_nolocks, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %4, align 4
  br label %127

64:                                               ; preds = %29
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 4
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 4)
  br label %79

79:                                               ; preds = %72, %64
  %80 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @fill_file_lock(%struct.file_lock* %80, i32* %86, i32 %89, i32 %93, i32 %97, i32 %101, i32 %104, i32 0, i32 %105, i32 %108)
  %110 = call i32 (...) @siglock()
  %111 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %112 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.file_lock* %111)
  %113 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %114 = call i32 @do_lock(%struct.file_lock* %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %116 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), %struct.file_lock* %115)
  %117 = call i32 (...) @sigunlock()
  %118 = load i32, i32* %9, align 4
  switch i32 %118, label %121 [
    i32 128, label %119
    i32 129, label %120
  ]

119:                                              ; preds = %79
  br label %124

120:                                              ; preds = %79
  br label %124

121:                                              ; preds = %79
  %122 = load %struct.file_lock*, %struct.file_lock** %8, align 8
  %123 = call i32 @deallocate_file_lock(%struct.file_lock* %122)
  br label %124

124:                                              ; preds = %121, %120, %119
  %125 = call i32 (i8*, ...) @debuglog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* %9, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %62, %27
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @debuglog(i8*, ...) #1

declare dso_local %struct.file_lock* @allocate_file_lock(i32*, i32*, %struct.sockaddr*, i32) #1

declare dso_local %struct.TYPE_9__* @svc_getrpccaller(i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @fill_file_lock(%struct.file_lock*, i32*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @siglock(...) #1

declare dso_local i32 @do_lock(%struct.file_lock*) #1

declare dso_local i32 @sigunlock(...) #1

declare dso_local i32 @deallocate_file_lock(%struct.file_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

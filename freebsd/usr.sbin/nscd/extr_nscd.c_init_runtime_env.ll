; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_init_runtime_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscd.c_init_runtime_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.runtime_env = type { i32, i32 }
%struct.configuration = type { i32, i32, i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.kevent = type { i32 }
%struct.timespec = type { i32, i32 }
%struct.sockaddr = type { i32 }

@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"runtime environment\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"can't bind socket to path: %s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"using socket %s\00", align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"successfully initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.runtime_env* (%struct.configuration*)* @init_runtime_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.runtime_env* @init_runtime_env(%struct.configuration* %0) #0 {
  %2 = alloca %struct.runtime_env*, align 8
  %3 = alloca %struct.configuration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_un, align 4
  %6 = alloca %struct.kevent, align 4
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.runtime_env*, align 8
  store %struct.configuration* %0, %struct.configuration** %3, align 8
  %9 = call i32 @TRACE_IN(%struct.runtime_env* (%struct.configuration*)* @init_runtime_env)
  %10 = call %struct.runtime_env* @calloc(i32 1, i32 8)
  store %struct.runtime_env* %10, %struct.runtime_env** %8, align 8
  %11 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %12 = icmp ne %struct.runtime_env* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32, i32* @PF_LOCAL, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  %18 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %19 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.configuration*, %struct.configuration** %3, align 8
  %21 = getelementptr inbounds %struct.configuration, %struct.configuration* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.configuration*, %struct.configuration** %3, align 8
  %26 = getelementptr inbounds %struct.configuration, %struct.configuration* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @unlink(i32 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = bitcast %struct.sockaddr_un* %5 to %struct.timespec*
  %31 = call i32 @memset(%struct.timespec* %30, i32 0, i32 8)
  %32 = load i32, i32* @PF_LOCAL, align 4
  %33 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.configuration*, %struct.configuration** %3, align 8
  %37 = getelementptr inbounds %struct.configuration, %struct.configuration* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @strlcpy(i32 %35, i32 %38, i32 4)
  %40 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strlen(i32 %41)
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = add i64 %44, 1
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %48 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = bitcast %struct.sockaddr_un* %5 to %struct.sockaddr*
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @bind(i32 %49, %struct.sockaddr* %50, i32 %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %66

54:                                               ; preds = %29
  %55 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %56 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @close(i32 %57)
  %59 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %60 = call i32 @free(%struct.runtime_env* %59)
  %61 = load %struct.configuration*, %struct.configuration** %3, align 8
  %62 = getelementptr inbounds %struct.configuration, %struct.configuration* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @LOG_ERR_2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = call i32 @TRACE_OUT(%struct.runtime_env* (%struct.configuration*)* @init_runtime_env)
  store %struct.runtime_env* null, %struct.runtime_env** %2, align 8
  br label %113

66:                                               ; preds = %29
  %67 = load %struct.configuration*, %struct.configuration** %3, align 8
  %68 = getelementptr inbounds %struct.configuration, %struct.configuration* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i8*, ...) @LOG_MSG_2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load %struct.configuration*, %struct.configuration** %3, align 8
  %72 = getelementptr inbounds %struct.configuration, %struct.configuration* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.configuration*, %struct.configuration** %3, align 8
  %75 = getelementptr inbounds %struct.configuration, %struct.configuration* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @chmod(i32 %73, i32 %76)
  %78 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %79 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @listen(i32 %80, i32 -1)
  %82 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %83 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @F_SETFL, align 4
  %86 = load i32, i32* @O_NONBLOCK, align 4
  %87 = call i32 @fcntl(i32 %84, i32 %85, i32 %86)
  %88 = call i32 (...) @kqueue()
  %89 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %90 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %92 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, -1
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %98 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @EVFILT_READ, align 4
  %101 = load i32, i32* @EV_ADD, align 4
  %102 = load i32, i32* @EV_ONESHOT, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @EV_SET(%struct.kevent* %6, i32 %99, i32 %100, i32 %103, i32 0, i32 0, i32 0)
  %105 = call i32 @memset(%struct.timespec* %7, i32 0, i32 8)
  %106 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  %107 = getelementptr inbounds %struct.runtime_env, %struct.runtime_env* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @kevent(i32 %108, %struct.kevent* %6, i32 1, i32* null, i32 0, %struct.timespec* %7)
  %110 = call i32 (i8*, i8*, ...) @LOG_MSG_2(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %111 = call i32 @TRACE_OUT(%struct.runtime_env* (%struct.configuration*)* @init_runtime_env)
  %112 = load %struct.runtime_env*, %struct.runtime_env** %8, align 8
  store %struct.runtime_env* %112, %struct.runtime_env** %2, align 8
  br label %113

113:                                              ; preds = %66, %54
  %114 = load %struct.runtime_env*, %struct.runtime_env** %2, align 8
  ret %struct.runtime_env* %114
}

declare dso_local i32 @TRACE_IN(%struct.runtime_env* (%struct.configuration*)*) #1

declare dso_local %struct.runtime_env* @calloc(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.runtime_env*) #1

declare dso_local i32 @LOG_ERR_2(i8*, i8*, i32) #1

declare dso_local i32 @TRACE_OUT(%struct.runtime_env* (%struct.configuration*)*) #1

declare dso_local i32 @LOG_MSG_2(i8*, i8*, ...) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @kqueue(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

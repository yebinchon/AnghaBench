; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscdcli.c_open_nscd_connection__.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/nscd/extr_nscdcli.c_open_nscd_connection__.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nscd_connection_ = type { i32, i32, i32 }
%struct.nscd_connection_params = type { i32 }
%struct.kevent = type { i32 }
%struct.sockaddr_un = type { i32, i32 }
%struct.sockaddr = type { i32 }

@open_nscd_connection = common dso_local global i32 0, align 4
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EVFILT_WRITE = common dso_local global i32 0, align 4
@EV_ADD = common dso_local global i32 0, align 4
@EVFILT_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nscd_connection_* @open_nscd_connection__(%struct.nscd_connection_params* %0) #0 {
  %2 = alloca %struct.nscd_connection_*, align 8
  %3 = alloca %struct.nscd_connection_params*, align 8
  %4 = alloca %struct.nscd_connection_*, align 8
  %5 = alloca %struct.kevent, align 4
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nscd_connection_params* %0, %struct.nscd_connection_params** %3, align 8
  %10 = load i32, i32* @open_nscd_connection, align 4
  %11 = call i32 @TRACE_IN(i32 %10)
  %12 = load %struct.nscd_connection_params*, %struct.nscd_connection_params** %3, align 8
  %13 = icmp ne %struct.nscd_connection_params* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* @PF_LOCAL, align 4
  %17 = load i32, i32* @SOCK_STREAM, align 4
  %18 = call i32 @socket(i32 %16, i32 %17, i32 0)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @PF_LOCAL, align 4
  %20 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nscd_connection_params*, %struct.nscd_connection_params** %3, align 8
  %24 = getelementptr inbounds %struct.nscd_connection_params, %struct.nscd_connection_params* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strlcpy(i32 %22, i32 %25, i32 4)
  %27 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strlen(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = add i64 4, %30
  %32 = add i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @connect(i32 %34, %struct.sockaddr* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %45

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @close(i32 %41)
  %43 = load i32, i32* @open_nscd_connection, align 4
  %44 = call i32 @TRACE_OUT(i32 %43)
  store %struct.nscd_connection_* null, %struct.nscd_connection_** %2, align 8
  br label %101

45:                                               ; preds = %1
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @F_SETFL, align 4
  %48 = load i32, i32* @O_NONBLOCK, align 4
  %49 = call i32 @fcntl(i32 %46, i32 %47, i32 %48)
  %50 = call %struct.nscd_connection_* @calloc(i32 1, i32 12)
  store %struct.nscd_connection_* %50, %struct.nscd_connection_** %4, align 8
  %51 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %52 = icmp ne %struct.nscd_connection_* %51, null
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %57 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = call i8* (...) @kqueue()
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %61 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %63 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, -1
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  %68 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %69 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @EVFILT_WRITE, align 4
  %72 = load i32, i32* @EV_ADD, align 4
  %73 = call i32 @EV_SET(%struct.kevent* %5, i32 %70, i32 %71, i32 %72, i32 0, i32 0, i32* null)
  %74 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %75 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kevent(i32 %76, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* null)
  store i32 %77, i32* %9, align 4
  %78 = call i8* (...) @kqueue()
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %81 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %83 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, -1
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %89 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EVFILT_READ, align 4
  %92 = load i32, i32* @EV_ADD, align 4
  %93 = call i32 @EV_SET(%struct.kevent* %5, i32 %90, i32 %91, i32 %92, i32 0, i32 0, i32* null)
  %94 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  %95 = getelementptr inbounds %struct.nscd_connection_, %struct.nscd_connection_* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kevent(i32 %96, %struct.kevent* %5, i32 1, i32* null, i32 0, i32* null)
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* @open_nscd_connection, align 4
  %99 = call i32 @TRACE_OUT(i32 %98)
  %100 = load %struct.nscd_connection_*, %struct.nscd_connection_** %4, align 8
  store %struct.nscd_connection_* %100, %struct.nscd_connection_** %2, align 8
  br label %101

101:                                              ; preds = %45, %40
  %102 = load %struct.nscd_connection_*, %struct.nscd_connection_** %2, align 8
  ret %struct.nscd_connection_* %102
}

declare dso_local i32 @TRACE_IN(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @TRACE_OUT(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local %struct.nscd_connection_* @calloc(i32, i32) #1

declare dso_local i8* @kqueue(...) #1

declare dso_local i32 @EV_SET(%struct.kevent*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @kevent(i32, %struct.kevent*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

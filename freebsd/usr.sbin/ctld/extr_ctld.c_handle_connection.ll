; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_handle_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_handle_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portal = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.conf* }
%struct.conf = type { i64, i32, i32 }
%struct.sockaddr = type { i32 }
%struct.connection = type { i64 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"incoming connection; not forking due to -d flag\00", align 1
@nchildren = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"maxproc limit of %d child processes hit; waiting for child process to exit\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"incoming connection; forking child process #%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"getnameinfo: %s\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"accepted connection from %s; portal group \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@CONN_SESSION_TYPE_NORMAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [36 x i8] c"connection handed off to the kernel\00", align 1
@CONN_SESSION_TYPE_DISCOVERY = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"nothing more to do; exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.portal*, i32, %struct.sockaddr*, i32)* @handle_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_connection(%struct.portal* %0, i32 %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca %struct.portal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.conf*, align 8
  store %struct.portal* %0, %struct.portal** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @NI_MAXHOST, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.portal*, %struct.portal** %5, align 8
  %21 = getelementptr inbounds %struct.portal, %struct.portal* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.conf*, %struct.conf** %23, align 8
  store %struct.conf* %24, %struct.conf** %14, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %80

29:                                               ; preds = %4
  %30 = call i64 @wait_for_children(i32 0)
  %31 = load i64, i64* @nchildren, align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* @nchildren, align 8
  %33 = load i64, i64* @nchildren, align 8
  %34 = icmp sge i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  br label %37

37:                                               ; preds = %50, %29
  %38 = load %struct.conf*, %struct.conf** %14, align 8
  %39 = getelementptr inbounds %struct.conf, %struct.conf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i64, i64* @nchildren, align 8
  %44 = load %struct.conf*, %struct.conf** %14, align 8
  %45 = getelementptr inbounds %struct.conf, %struct.conf* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i1 [ false, %37 ], [ %47, %42 ]
  br i1 %49, label %50, label %62

50:                                               ; preds = %48
  %51 = load %struct.conf*, %struct.conf** %14, align 8
  %52 = getelementptr inbounds %struct.conf, %struct.conf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = call i64 @wait_for_children(i32 1)
  %56 = load i64, i64* @nchildren, align 8
  %57 = sub nsw i64 %56, %55
  store i64 %57, i64* @nchildren, align 8
  %58 = load i64, i64* @nchildren, align 8
  %59 = icmp sge i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  br label %37

62:                                               ; preds = %48
  %63 = load i64, i64* @nchildren, align 8
  %64 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i64 %63)
  %65 = load i64, i64* @nchildren, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* @nchildren, align 8
  %67 = call i64 (...) @fork()
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %62
  %73 = load i64, i64* %11, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @close(i32 %76)
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  ret void

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79, %27
  %81 = load %struct.conf*, %struct.conf** %14, align 8
  %82 = getelementptr inbounds %struct.conf, %struct.conf* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pidfile_close(i32 %83)
  %85 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %86 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %87 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = trunc i64 %17 to i32
  %90 = load i32, i32* @NI_NUMERICHOST, align 4
  %91 = call i32 @getnameinfo(%struct.sockaddr* %85, i32 %88, i8* %19, i32 %89, i32* null, i32 0, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %80
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @gai_strerror(i32 %95)
  %97 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %80
  %99 = load %struct.portal*, %struct.portal** %5, align 8
  %100 = getelementptr inbounds %struct.portal, %struct.portal* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %19, i32 %103)
  %105 = call i32 @log_set_peer_addr(i8* %19)
  %106 = call i32 @setproctitle(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %19)
  %107 = load %struct.portal*, %struct.portal** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %110 = call %struct.connection* @connection_new(%struct.portal* %107, i32 %108, i8* %19, %struct.sockaddr* %109)
  store %struct.connection* %110, %struct.connection** %9, align 8
  %111 = load %struct.conf*, %struct.conf** %14, align 8
  %112 = getelementptr inbounds %struct.conf, %struct.conf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @set_timeout(i32 %113, i32 1)
  %115 = call i32 (...) @kernel_capsicate()
  %116 = load %struct.connection*, %struct.connection** %9, align 8
  %117 = call i32 @login(%struct.connection* %116)
  %118 = load %struct.connection*, %struct.connection** %9, align 8
  %119 = getelementptr inbounds %struct.connection, %struct.connection* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CONN_SESSION_TYPE_NORMAL, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %98
  %124 = load %struct.connection*, %struct.connection** %9, align 8
  %125 = call i32 @kernel_handoff(%struct.connection* %124)
  %126 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %137

127:                                              ; preds = %98
  %128 = load %struct.connection*, %struct.connection** %9, align 8
  %129 = getelementptr inbounds %struct.connection, %struct.connection* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %132 = icmp eq i64 %130, %131
  %133 = zext i1 %132 to i32
  %134 = call i32 @assert(i32 %133)
  %135 = load %struct.connection*, %struct.connection** %9, align 8
  %136 = call i32 @discovery(%struct.connection* %135)
  br label %137

137:                                              ; preds = %127, %123
  %138 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %139 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @log_debugx(i8*, ...) #2

declare dso_local i64 @wait_for_children(i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @fork(...) #2

declare dso_local i32 @log_err(i32, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @pidfile_close(i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @log_errx(i32, i8*, i32) #2

declare dso_local i32 @gai_strerror(i32) #2

declare dso_local i32 @log_set_peer_addr(i8*) #2

declare dso_local i32 @setproctitle(i8*, i8*) #2

declare dso_local %struct.connection* @connection_new(%struct.portal*, i32, i8*, %struct.sockaddr*) #2

declare dso_local i32 @set_timeout(i32, i32) #2

declare dso_local i32 @kernel_capsicate(...) #2

declare dso_local i32 @login(%struct.connection*) #2

declare dso_local i32 @kernel_handoff(%struct.connection*) #2

declare dso_local i32 @discovery(%struct.connection*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

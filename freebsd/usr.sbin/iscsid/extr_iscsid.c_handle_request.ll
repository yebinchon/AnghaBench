; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_daemon_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.connection = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"%s (%s)\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nothing more to do; exiting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.iscsi_daemon_request*, i32)* @handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_request(i32 %0, %struct.iscsi_daemon_request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_daemon_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.iscsi_daemon_request* %1, %struct.iscsi_daemon_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %9 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @log_set_peer_addr(i32 %11)
  %13 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %23 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @log_set_peer_name(i8* %25)
  %27 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, i32, ...) @setproctitle(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %34)
  br label %42

36:                                               ; preds = %3
  %37 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %38 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, i32, ...) @setproctitle(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %21
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %5, align 8
  %45 = call %struct.connection* @connection_new(i32 %43, %struct.iscsi_daemon_request* %44)
  store %struct.connection* %45, %struct.connection** %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @set_timeout(i32 %46)
  %48 = load %struct.connection*, %struct.connection** %7, align 8
  %49 = call i32 @capsicate(%struct.connection* %48)
  %50 = load %struct.connection*, %struct.connection** %7, align 8
  %51 = call i32 @login(%struct.connection* %50)
  %52 = load %struct.connection*, %struct.connection** %7, align 8
  %53 = getelementptr inbounds %struct.connection, %struct.connection* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.connection*, %struct.connection** %7, align 8
  %59 = call i32 @discovery(%struct.connection* %58)
  br label %63

60:                                               ; preds = %42
  %61 = load %struct.connection*, %struct.connection** %7, align 8
  %62 = call i32 @handoff(%struct.connection* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = call i32 @log_debugx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @log_set_peer_addr(i32) #1

declare dso_local i32 @log_set_peer_name(i8*) #1

declare dso_local i32 @setproctitle(i8*, i32, ...) #1

declare dso_local %struct.connection* @connection_new(i32, %struct.iscsi_daemon_request*) #1

declare dso_local i32 @set_timeout(i32) #1

declare dso_local i32 @capsicate(%struct.connection*) #1

declare dso_local i32 @login(%struct.connection*) #1

declare dso_local i32 @discovery(%struct.connection*) #1

declare dso_local i32 @handoff(%struct.connection*) #1

declare dso_local i32 @log_debugx(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

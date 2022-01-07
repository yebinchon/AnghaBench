; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_server.c_server_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@server_ss = common dso_local global i32* null, align 8
@control_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to contact SDP server\00", align 1
@l2cap_psm = common dso_local global i32 0, align 4
@server_avail = common dso_local global i32 0, align 4
@l2cap_mode = common dso_local global i64 0, align 8
@server_handle = common dso_local global i64 0, align 8
@service_class = common dso_local global i32 0, align 4
@local_bdaddr = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@service_name = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @server_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_register() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @server_ss, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %0
  %6 = load i32, i32* @control_path, align 4
  %7 = call i32* @sdp_open_local(i32 %6)
  store i32* %7, i32** @server_ss, align 8
  %8 = load i32*, i32** @server_ss, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = load i32*, i32** @server_ss, align 8
  %12 = call i64 @sdp_error(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %5
  %15 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %50

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %0
  %18 = call i32 @memset(%struct.TYPE_3__* %1, i32 0, i32 12)
  %19 = load i32, i32* @l2cap_psm, align 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @server_avail, align 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* @l2cap_mode, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* @server_handle, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %17
  %31 = load i32*, i32** @server_ss, align 8
  %32 = load i64, i64* @server_handle, align 8
  %33 = bitcast %struct.TYPE_3__* %1 to i32*
  %34 = call i32 @sdp_change_service(i32* %31, i64 %32, i32* %33, i32 12)
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %17
  %36 = load i32*, i32** @server_ss, align 8
  %37 = load i32, i32* @service_class, align 4
  %38 = bitcast %struct.TYPE_3__* %1 to i32*
  %39 = call i32 @sdp_register_service(i32* %36, i32 %37, i32* @local_bdaddr, i32* %38, i32 12, i64* @server_handle)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32*, i32** @server_ss, align 8
  %45 = call i64 @sdp_error(i32* %44)
  store i64 %45, i64* @errno, align 8
  %46 = load i32, i32* @service_name, align 4
  %47 = call i32 (i8*, ...) @log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EXIT_FAILURE, align 4
  %49 = call i32 @exit(i32 %48) #3
  unreachable

50:                                               ; preds = %14, %40
  ret void
}

declare dso_local i32* @sdp_open_local(i32) #1

declare dso_local i64 @sdp_error(i32*) #1

declare dso_local i32 @log_err(i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @sdp_change_service(i32*, i64, i32*, i32) #1

declare dso_local i32 @sdp_register_service(i32*, i32, i32*, i32*, i32, i64*) #1

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

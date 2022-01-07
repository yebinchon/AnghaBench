; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_start_device_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_start_device_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmodule = type { i32 }

@devd_sock = common dso_local global i64 0, align 8
@devd_socket_callback = common dso_local global i32 0, align 4
@devd_fd = common dso_local global i32* null, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"fd_select failed on devd socket: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_device_tbl(%struct.lmodule* %0) #0 {
  %2 = alloca %struct.lmodule*, align 8
  store %struct.lmodule* %0, %struct.lmodule** %2, align 8
  %3 = load i64, i64* @devd_sock, align 8
  %4 = icmp sgt i64 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i64, i64* @devd_sock, align 8
  %7 = load i32, i32* @devd_socket_callback, align 4
  %8 = load %struct.lmodule*, %struct.lmodule** %2, align 8
  %9 = call i32* @fd_select(i64 %6, i32 %7, i32* null, %struct.lmodule* %8)
  store i32* %9, i32** @devd_fd, align 8
  %10 = load i32*, i32** @devd_fd, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = load i32, i32* @LOG_ERR, align 4
  %14 = call i32 @syslog(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %5
  br label %16

16:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32* @fd_select(i64, i32, i32*, %struct.lmodule*) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

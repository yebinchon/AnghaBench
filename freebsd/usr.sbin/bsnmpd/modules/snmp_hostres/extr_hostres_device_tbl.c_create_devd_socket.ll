; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_create_devd_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_create_devd_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32 }
%struct.sockaddr = type { i32 }

@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to create the socket for %s: %m\00", align 1
@PATH_DEVD_PIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to connect socket for %s: %m\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to close socket for %s: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @create_devd_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_devd_socket() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_un, align 4
  %4 = call i32 @bzero(%struct.sockaddr_un* %3, i32 12)
  %5 = load i32, i32* @PF_LOCAL, align 4
  %6 = load i32, i32* @SOCK_STREAM, align 4
  %7 = call i32 @socket(i32 %5, i32 %6, i32 0)
  store i32 %7, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %0
  %10 = load i32, i32* @LOG_ERR, align 4
  %11 = load i32, i32* @PATH_DEVD_PIPE, align 4
  %12 = call i32 @syslog(i32 %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11)
  store i32 -1, i32* %1, align 4
  br label %39

13:                                               ; preds = %0
  %14 = load i32, i32* @PF_LOCAL, align 4
  %15 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 0
  store i32 12, i32* %16, align 4
  %17 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PATH_DEVD_PIPE, align 4
  %20 = call i32 @strlcpy(i32 %18, i32 %19, i32 3)
  %21 = load i32, i32* %2, align 4
  %22 = bitcast %struct.sockaddr_un* %3 to %struct.sockaddr*
  %23 = call i32 @connect(i32 %21, %struct.sockaddr* %22, i32 12)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %37

25:                                               ; preds = %13
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i32, i32* @PATH_DEVD_PIPE, align 4
  %28 = call i32 @syslog(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @close(i32 %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = load i32, i32* @PATH_DEVD_PIPE, align 4
  %35 = call i32 @syslog(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  store i32 -1, i32* %1, align 4
  br label %39

37:                                               ; preds = %13
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %1, align 4
  br label %39

39:                                               ; preds = %37, %36, %9
  %40 = load i32, i32* %1, align 4
  ret i32 %40
}

declare dso_local i32 @bzero(%struct.sockaddr_un*, i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

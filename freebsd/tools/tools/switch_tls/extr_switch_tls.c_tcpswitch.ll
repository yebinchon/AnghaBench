; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_tcpswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.host_service = type { i8*, i8* }
%struct.sockaddr_storage = type { i32 }

@TCPDROP_FOREIGN = common dso_local global i64 0, align 8
@TCPDROP_LOCAL = common dso_local global i64 0, align 8
@tcpswitch_list_commands = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"switch_tls %s %s %s %s %s\0A\00", align 1
@SW_TLS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"net.inet.tcp.switch_to_sw_tls\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"net.inet.tcp.switch_to_ifnet_tls\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"%s %s %s %s: switched\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*, i32)* @tcpswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpswitch(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_service, align 8
  %9 = alloca %struct.host_service, align 8
  %10 = alloca [2 x %struct.sockaddr_storage], align 4
  %11 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %13 = getelementptr inbounds [2 x %struct.sockaddr_storage], [2 x %struct.sockaddr_storage]* %10, i64 0, i64 %12
  %14 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memcpy(%struct.sockaddr_storage* %13, %struct.sockaddr* %14, i32 %17)
  %19 = load i64, i64* @TCPDROP_LOCAL, align 8
  %20 = getelementptr inbounds [2 x %struct.sockaddr_storage], [2 x %struct.sockaddr_storage]* %10, i64 0, i64 %19
  %21 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(%struct.sockaddr_storage* %20, %struct.sockaddr* %21, i32 %24)
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = call i32 @sockinfo(%struct.sockaddr* %26, %struct.host_service* %8)
  %28 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %29 = call i32 @sockinfo(%struct.sockaddr* %28, %struct.host_service* %9)
  %30 = load i64, i64* @tcpswitch_list_commands, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @SW_TLS, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %38 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %39, i8* %41, i8* %43, i8* %45)
  store i32 1, i32* %4, align 4
  br label %77

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @SW_TLS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0)
  %53 = bitcast [2 x %struct.sockaddr_storage]* %10 to %struct.sockaddr_storage**
  %54 = call i32 @sysctlbyname(i8* %52, i32* null, i32* null, %struct.sockaddr_storage** %53, i32 8)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %59, i8* %61, i8* %63, i8* %65)
  store i32 0, i32* %4, align 4
  br label %77

67:                                               ; preds = %47
  %68 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds %struct.host_service, %struct.host_service* %8, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %struct.host_service, %struct.host_service* %9, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 (i8*, i8*, i8*, i8*, i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %69, i8* %71, i8* %73, i8* %75)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %67, %57, %32
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockinfo(%struct.sockaddr*, %struct.host_service*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, %struct.sockaddr_storage**, i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

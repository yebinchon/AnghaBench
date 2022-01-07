; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/tcpdrop/extr_tcpdrop.c_tcpdrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.host_service = type { i8*, i8* }
%struct.sockaddr_storage = type { i32 }

@TCPDROP_FOREIGN = common dso_local global i64 0, align 8
@TCPDROP_LOCAL = common dso_local global i64 0, align 8
@tcpdrop_list_commands = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"tcpdrop %s %s %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"net.inet.tcp.drop\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"%s %s %s %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"%s %s %s %s: dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @tcpdrop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpdrop(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.host_service, align 8
  %7 = alloca %struct.host_service, align 8
  %8 = alloca [2 x %struct.sockaddr_storage], align 4
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %10 = load i64, i64* @TCPDROP_FOREIGN, align 8
  %11 = getelementptr inbounds [2 x %struct.sockaddr_storage], [2 x %struct.sockaddr_storage]* %8, i64 0, i64 %10
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @memcpy(%struct.sockaddr_storage* %11, %struct.sockaddr* %12, i32 %15)
  %17 = load i64, i64* @TCPDROP_LOCAL, align 8
  %18 = getelementptr inbounds [2 x %struct.sockaddr_storage], [2 x %struct.sockaddr_storage]* %8, i64 0, i64 %17
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(%struct.sockaddr_storage* %18, %struct.sockaddr* %19, i32 %22)
  %24 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %25 = call i32 @sockinfo(%struct.sockaddr* %24, %struct.host_service* %6)
  %26 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %27 = call i32 @sockinfo(%struct.sockaddr* %26, %struct.host_service* %7)
  %28 = load i64, i64* @tcpdrop_list_commands, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %34, i8* %36, i8* %38)
  store i32 1, i32* %3, align 4
  br label %65

40:                                               ; preds = %2
  %41 = bitcast [2 x %struct.sockaddr_storage]* %8 to %struct.sockaddr_storage**
  %42 = call i32 @sysctlbyname(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, %struct.sockaddr_storage** %41, i32 8)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %47, i8* %49, i8* %51, i8* %53)
  store i32 0, i32* %3, align 4
  br label %65

55:                                               ; preds = %40
  %56 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.host_service, %struct.host_service* %6, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %struct.host_service, %struct.host_service* %7, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %57, i8* %59, i8* %61, i8* %63)
  store i32 1, i32* %3, align 4
  br label %65

65:                                               ; preds = %55, %45, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr*, i32) #1

declare dso_local i32 @sockinfo(%struct.sockaddr*, %struct.host_service*) #1

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, %struct.sockaddr_storage**, i32) #1

declare dso_local i32 @warn(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_multicast_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket_ifnet_remove/extr_msocket_ifnet_remove.c_multicast_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_mreq = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@PF_INET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"multicast_test: socket(PF_INET, %s, 0)\00", align 1
@MULTICAST_IP = common dso_local global i32 0, align 4
@DISC_IP = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"multicast_test: setsockopt(IPPROTO_IP, IP_ADD_MEMBERSHIP, {%s, %s})\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*)* @multicast_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @multicast_open(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ip_mreq, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @PF_INET, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @socket(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 -1, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = call i32 @bzero(%struct.ip_mreq* %8, i32 16)
  %20 = load i32, i32* @MULTICAST_IP, align 4
  %21 = call i8* @inet_addr(i32 %20)
  %22 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %8, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @DISC_IP, align 4
  %25 = call i8* @inet_addr(i32 %24)
  %26 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %8, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @IPPROTO_IP, align 4
  %30 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %31 = call i64 @setsockopt(i32 %28, i32 %29, i32 %30, %struct.ip_mreq* %8, i32 16)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @MULTICAST_IP, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32, i32* @DISC_IP, align 4
  %38 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @close(i32 %39)
  store i32 -1, i32* %4, align 4
  br label %44

41:                                               ; preds = %18
  %42 = load i32, i32* %9, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %33, %15
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @bzero(%struct.ip_mreq*, i32) #1

declare dso_local i8* @inet_addr(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, %struct.ip_mreq*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

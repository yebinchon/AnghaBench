; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_fillheader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arp_fillheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 (%struct.ifnet*, %struct.if_encap_req*)* }
%struct.arphdr = type { i32 }
%struct.if_encap_req = type { i64, i32, %struct.if_encap_req*, i32, i32, i32, %struct.if_encap_req* }

@IFENCAP_LL = common dso_local global i32 0, align 4
@AF_ARP = common dso_local global i32 0, align 4
@IFENCAP_FLAG_BROADCAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.arphdr*, i32, %struct.if_encap_req*, i64*)* @arp_fillheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_fillheader(%struct.ifnet* %0, %struct.arphdr* %1, i32 %2, %struct.if_encap_req* %3, i64* %4) #0 {
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.arphdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.if_encap_req*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.if_encap_req, align 8
  %12 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %6, align 8
  store %struct.arphdr* %1, %struct.arphdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.if_encap_req* %3, %struct.if_encap_req** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.if_encap_req*, %struct.if_encap_req** %9, align 8
  %14 = load i64*, i64** %10, align 8
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i32 @bzero(%struct.if_encap_req* %13, i32 %16)
  %18 = call i32 @bzero(%struct.if_encap_req* %11, i32 48)
  %19 = load %struct.if_encap_req*, %struct.if_encap_req** %9, align 8
  %20 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 6
  store %struct.if_encap_req* %19, %struct.if_encap_req** %20, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* @IFENCAP_LL, align 4
  %25 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 5
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* @AF_ARP, align 4
  %27 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %29 = call i32 @ar_tha(%struct.arphdr* %28)
  %30 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 3
  store i32 %29, i32* %30, align 8
  %31 = load %struct.arphdr*, %struct.arphdr** %7, align 8
  %32 = bitcast %struct.arphdr* %31 to %struct.if_encap_req*
  %33 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 2
  store %struct.if_encap_req* %32, %struct.if_encap_req** %33, align 8
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @IFENCAP_FLAG_BROADCAST, align 4
  %38 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %5
  %40 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32 (%struct.ifnet*, %struct.if_encap_req*)*, i32 (%struct.ifnet*, %struct.if_encap_req*)** %41, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %44 = call i32 %42(%struct.ifnet* %43, %struct.if_encap_req* %11)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.if_encap_req, %struct.if_encap_req* %11, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %10, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %39
  %52 = load i32, i32* %12, align 4
  ret i32 %52
}

declare dso_local i32 @bzero(%struct.if_encap_req*, i32) #1

declare dso_local i32 @ar_tha(%struct.arphdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

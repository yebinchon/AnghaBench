; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_cuseeme.c_AliasHandleCUSeeMeOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_cuseeme.c_AliasHandleCUSeeMeOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { i32 }
%struct.alias_link = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.cu_header = type { i64 }
%struct.TYPE_2__ = type { i64 }

@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libalias*, %struct.ip*, %struct.alias_link*)* @AliasHandleCUSeeMeOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AliasHandleCUSeeMeOut(%struct.libalias* %0, %struct.ip* %1, %struct.alias_link* %2) #0 {
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.alias_link*, align 8
  %7 = alloca %struct.udphdr*, align 8
  %8 = alloca %struct.cu_header*, align 8
  %9 = alloca %struct.alias_link*, align 8
  %10 = alloca %struct.TYPE_2__, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  store %struct.alias_link* %2, %struct.alias_link** %6, align 8
  %11 = load %struct.ip*, %struct.ip** %5, align 8
  %12 = call %struct.udphdr* @ip_next(%struct.ip* %11)
  store %struct.udphdr* %12, %struct.udphdr** %7, align 8
  %13 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %14 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = sext i32 %16 to i64
  %18 = sub i64 %17, 8
  %19 = icmp uge i64 %18, 8
  br i1 %19, label %20, label %53

20:                                               ; preds = %3
  %21 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %22 = call %struct.cu_header* @udp_next(%struct.udphdr* %21)
  store %struct.cu_header* %22, %struct.cu_header** %8, align 8
  %23 = load %struct.cu_header*, %struct.cu_header** %8, align 8
  %24 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %29 = call i64 @GetAliasAddress(%struct.alias_link* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.cu_header*, %struct.cu_header** %8, align 8
  %34 = getelementptr inbounds %struct.cu_header, %struct.cu_header* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %35

35:                                               ; preds = %27, %20
  %36 = load %struct.libalias*, %struct.libalias** %4, align 8
  %37 = load %struct.ip*, %struct.ip** %5, align 8
  %38 = getelementptr inbounds %struct.ip, %struct.ip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.alias_link*, %struct.alias_link** %6, align 8
  %41 = call i32 @GetDestAddress(%struct.alias_link* %40)
  %42 = load %struct.udphdr*, %struct.udphdr** %7, align 8
  %43 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IPPROTO_UDP, align 4
  %46 = call %struct.alias_link* @FindUdpTcpOut(%struct.libalias* %36, i32 %39, i32 %41, i32 %44, i32 0, i32 %45, i32 1)
  store %struct.alias_link* %46, %struct.alias_link** %9, align 8
  %47 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %48 = icmp ne %struct.alias_link* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %35
  %50 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %51 = call i32 @PunchFWHole(%struct.alias_link* %50)
  br label %52

52:                                               ; preds = %49, %35
  br label %53

53:                                               ; preds = %52, %3
  ret void
}

declare dso_local %struct.udphdr* @ip_next(%struct.ip*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.cu_header* @udp_next(%struct.udphdr*) #1

declare dso_local i64 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local %struct.alias_link* @FindUdpTcpOut(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GetDestAddress(%struct.alias_link*) #1

declare dso_local i32 @PunchFWHole(%struct.alias_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

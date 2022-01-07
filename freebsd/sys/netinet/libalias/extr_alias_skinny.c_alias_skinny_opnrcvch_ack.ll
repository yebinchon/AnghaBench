; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_opnrcvch_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_opnrcvch_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.OpenReceiveChannelAck = type { i8*, i8* }
%struct.ip = type { i32 }
%struct.tcphdr = type { i32, i64 }
%struct.alias_link = type { i32 }
%struct.in_addr = type { i32 }
%struct.TYPE_2__ = type { i64 }

@INADDR_ANY = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.OpenReceiveChannelAck*, %struct.ip*, %struct.tcphdr*, %struct.alias_link*, i8**, i32)* @alias_skinny_opnrcvch_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_skinny_opnrcvch_ack(%struct.libalias* %0, %struct.OpenReceiveChannelAck* %1, %struct.ip* %2, %struct.tcphdr* %3, %struct.alias_link* %4, i8** %5, i32 %6) #0 {
  %8 = alloca %struct.libalias*, align 8
  %9 = alloca %struct.OpenReceiveChannelAck*, align 8
  %10 = alloca %struct.ip*, align 8
  %11 = alloca %struct.tcphdr*, align 8
  %12 = alloca %struct.alias_link*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.in_addr, align 4
  %16 = alloca %struct.alias_link*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_2__, align 8
  store %struct.libalias* %0, %struct.libalias** %8, align 8
  store %struct.OpenReceiveChannelAck* %1, %struct.OpenReceiveChannelAck** %9, align 8
  store %struct.ip* %2, %struct.ip** %10, align 8
  store %struct.tcphdr* %3, %struct.tcphdr** %11, align 8
  store %struct.alias_link* %4, %struct.alias_link** %12, align 8
  store i8** %5, i8*** %13, align 8
  store i32 %6, i32* %14, align 4
  %19 = load %struct.alias_link*, %struct.alias_link** %12, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load %struct.OpenReceiveChannelAck*, %struct.OpenReceiveChannelAck** %9, align 8
  %22 = getelementptr inbounds %struct.OpenReceiveChannelAck, %struct.OpenReceiveChannelAck* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load i8**, i8*** %13, align 8
  store i8* %23, i8** %24, align 8
  %25 = load %struct.OpenReceiveChannelAck*, %struct.OpenReceiveChannelAck** %9, align 8
  %26 = getelementptr inbounds %struct.OpenReceiveChannelAck, %struct.OpenReceiveChannelAck* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %17, align 8
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.libalias*, %struct.libalias** %8, align 8
  %31 = load %struct.ip*, %struct.ip** %10, align 8
  %32 = getelementptr inbounds %struct.ip, %struct.ip* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.OpenReceiveChannelAck*, %struct.OpenReceiveChannelAck** %9, align 8
  %35 = getelementptr inbounds %struct.OpenReceiveChannelAck, %struct.OpenReceiveChannelAck* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = call i32 @htons(i32 %37)
  %39 = load i32, i32* @IPPROTO_UDP, align 4
  %40 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %15, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.alias_link* @FindUdpTcpOut(%struct.libalias* %30, i32 %33, i32 %41, i32 %38, i32 0, i32 %39, i32 1)
  store %struct.alias_link* %42, %struct.alias_link** %16, align 8
  %43 = load %struct.alias_link*, %struct.alias_link** %16, align 8
  %44 = call i64 @GetAliasAddress(%struct.alias_link* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %44, i64* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.OpenReceiveChannelAck*, %struct.OpenReceiveChannelAck** %9, align 8
  %50 = getelementptr inbounds %struct.OpenReceiveChannelAck, %struct.OpenReceiveChannelAck* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.alias_link*, %struct.alias_link** %16, align 8
  %52 = call i32 @GetAliasPort(%struct.alias_link* %51)
  %53 = call i64 @ntohs(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.OpenReceiveChannelAck*, %struct.OpenReceiveChannelAck** %9, align 8
  %56 = getelementptr inbounds %struct.OpenReceiveChannelAck, %struct.OpenReceiveChannelAck* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %58 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.ip*, %struct.ip** %10, align 8
  %60 = call i64 @TcpChecksum(%struct.ip* %59)
  %61 = load %struct.tcphdr*, %struct.tcphdr** %11, align 8
  %62 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  ret i32 0
}

declare dso_local %struct.alias_link* @FindUdpTcpOut(%struct.libalias*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @GetAliasPort(%struct.alias_link*) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

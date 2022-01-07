; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpGreIn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_pptp.c_AliasHandlePptpGreIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.ip = type { %struct.in_addr, i32, i32 }
%struct.in_addr = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.alias_link = type { i32 }

@PPTP_INIT_MASK = common dso_local global i32 0, align 4
@PPTP_INIT_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.ip*)* @AliasHandlePptpGreIn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AliasHandlePptpGreIn(%struct.libalias* %0, %struct.ip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.ip*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  %7 = alloca %struct.alias_link*, align 8
  %8 = alloca %struct.in_addr, align 4
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.ip* %1, %struct.ip** %5, align 8
  %9 = load %struct.ip*, %struct.ip** %5, align 8
  %10 = call i64 @ip_next(%struct.ip* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %6, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = bitcast %struct.TYPE_2__* %12 to i32*
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ntohl(i32 %14)
  %16 = load i32, i32* @PPTP_INIT_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @PPTP_INIT_VALUE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.libalias*, %struct.libalias** %4, align 8
  %23 = load %struct.ip*, %struct.ip** %5, align 8
  %24 = getelementptr inbounds %struct.ip, %struct.ip* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ip*, %struct.ip** %5, align 8
  %27 = getelementptr inbounds %struct.ip, %struct.ip* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %27, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.alias_link* @FindPptpInByPeerCallId(%struct.libalias* %22, i32 %25, i32 %32, i32 %30)
  store %struct.alias_link* %33, %struct.alias_link** %7, align 8
  %34 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %35 = icmp ne %struct.alias_link* %34, null
  br i1 %35, label %36, label %53

36:                                               ; preds = %21
  %37 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %38 = call i32 @GetOriginalAddress(%struct.alias_link* %37)
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %8, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = load %struct.alias_link*, %struct.alias_link** %7, align 8
  %41 = call i32 @GetOriginalPort(%struct.alias_link* %40)
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ip*, %struct.ip** %5, align 8
  %45 = getelementptr inbounds %struct.ip, %struct.ip* %44, i32 0, i32 1
  %46 = load %struct.ip*, %struct.ip** %5, align 8
  %47 = getelementptr inbounds %struct.ip, %struct.ip* %46, i32 0, i32 0
  %48 = call i32 @DifferentialChecksum(i32* %45, %struct.in_addr* %8, %struct.in_addr* %47, i32 2)
  %49 = load %struct.ip*, %struct.ip** %5, align 8
  %50 = getelementptr inbounds %struct.ip, %struct.ip* %49, i32 0, i32 0
  %51 = bitcast %struct.in_addr* %50 to i8*
  %52 = bitcast %struct.in_addr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  br label %53

53:                                               ; preds = %36, %21
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @ip_next(%struct.ip*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.alias_link* @FindPptpInByPeerCallId(%struct.libalias*, i32, i32, i32) #1

declare dso_local i32 @GetOriginalAddress(%struct.alias_link*) #1

declare dso_local i32 @GetOriginalPort(%struct.alias_link*) #1

declare dso_local i32 @DifferentialChecksum(i32*, %struct.in_addr*, %struct.in_addr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

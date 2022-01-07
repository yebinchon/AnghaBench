; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_vlan.c_vlan_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { {}*, %struct.ifvlan* }
%struct.ifvlan = type { i32, i32 }
%struct.mbuf = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.m_snd_tag* }
%struct.m_snd_tag = type { %struct.ifnet* }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@M_BCAST = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@CSUM_SND_TAG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.mbuf*)* @vlan_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_transmit(%struct.ifnet* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ifvlan*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = call i32 (...) @NET_EPOCH_ASSERT()
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 1
  %14 = load %struct.ifvlan*, %struct.ifvlan** %13, align 8
  store %struct.ifvlan* %14, %struct.ifvlan** %6, align 8
  %15 = load %struct.ifvlan*, %struct.ifvlan** %6, align 8
  %16 = call i32* @TRUNK(%struct.ifvlan* %15)
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %21 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i32 1)
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = call i32 @m_freem(%struct.mbuf* %22)
  %24 = load i32, i32* @ENETDOWN, align 4
  store i32 %24, i32* %3, align 4
  br label %98

25:                                               ; preds = %2
  %26 = load %struct.ifvlan*, %struct.ifvlan** %6, align 8
  %27 = call %struct.ifnet* @PARENT(%struct.ifvlan* %26)
  store %struct.ifnet* %27, %struct.ifnet** %7, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @M_MCAST, align 4
  %36 = load i32, i32* @M_BCAST, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %10, align 4
  %42 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %44 = call i32 @BPF_MTAP(%struct.ifnet* %42, %struct.mbuf* %43)
  %45 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %46 = call i32 @UP_AND_RUNNING(%struct.ifnet* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %25
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %51 = call i32 @if_inc_counter(%struct.ifnet* %49, i32 %50, i32 1)
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = call i32 @m_freem(%struct.mbuf* %52)
  %54 = load i32, i32* @ENETDOWN, align 4
  store i32 %54, i32* %3, align 4
  br label %98

55:                                               ; preds = %25
  %56 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %57 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %58 = load %struct.ifvlan*, %struct.ifvlan** %6, align 8
  %59 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ifvlan*, %struct.ifvlan** %6, align 8
  %62 = getelementptr inbounds %struct.ifvlan, %struct.ifvlan* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ether_8021q_frame(%struct.mbuf** %5, %struct.ifnet* %56, %struct.ifnet* %57, i32 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %55
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %69 = call i32 @if_inc_counter(%struct.ifnet* %67, i32 %68, i32 1)
  store i32 0, i32* %3, align 4
  br label %98

70:                                               ; preds = %55
  %71 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = bitcast {}** %72 to i32 (%struct.ifnet*, %struct.mbuf*)**
  %74 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %73, align 8
  %75 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %76 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %77 = call i32 %74(%struct.ifnet* %75, %struct.mbuf* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %82 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %83 = call i32 @if_inc_counter(%struct.ifnet* %81, i32 %82, i32 1)
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @if_inc_counter(%struct.ifnet* %84, i32 %85, i32 %86)
  %88 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %89 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @if_inc_counter(%struct.ifnet* %88, i32 %89, i32 %90)
  br label %96

92:                                               ; preds = %70
  %93 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %94 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %95 = call i32 @if_inc_counter(%struct.ifnet* %93, i32 %94, i32 1)
  br label %96

96:                                               ; preds = %92, %80
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %66, %48, %18
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32* @TRUNK(%struct.ifvlan*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local %struct.ifnet* @PARENT(%struct.ifvlan*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @UP_AND_RUNNING(%struct.ifnet*) #1

declare dso_local i32 @ether_8021q_frame(%struct.mbuf**, %struct.ifnet*, %struct.ifnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

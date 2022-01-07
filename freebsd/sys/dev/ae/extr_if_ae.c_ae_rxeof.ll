; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_rxeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ae/extr_if_ae.c_ae_rxeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32*, i32, i32 }

@ETHER_CRC_LEN = common dso_local global i32 0, align 4
@ETHER_MIN_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Runt frame received.\00", align 1
@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@IFCOUNTER_IQDROPS = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@AE_RXD_HAS_VLAN = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*)* @ae_rxeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ae_rxeof(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @AE_LOCK_ASSERT(%struct.TYPE_10__* %9)
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.ifnet*, %struct.ifnet** %12, align 8
  store %struct.ifnet* %13, %struct.ifnet** %5, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16toh(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @le16toh(i32 %20)
  %22 = load i32, i32* @ETHER_CRC_LEN, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ETHER_MIN_LEN, align 4
  %26 = load i32, i32* @ETHER_CRC_LEN, align 4
  %27 = sub i32 %25, %26
  %28 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %29 = sub i32 %27, %28
  %30 = icmp ult i32 %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = call i32 @if_printf(%struct.ifnet* %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %36 = call i32 @if_inc_counter(%struct.ifnet* %34, i32 %35, i32 1)
  br label %92

37:                                               ; preds = %2
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @ETHER_ALIGN, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %45 = call %struct.mbuf* @m_devget(i32* %41, i32 %42, i32 %43, %struct.ifnet* %44, i32* null)
  store %struct.mbuf* %45, %struct.mbuf** %6, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = load i32, i32* @IFCOUNTER_IQDROPS, align 4
  %51 = call i32 @if_inc_counter(%struct.ifnet* %49, i32 %50, i32 1)
  br label %92

52:                                               ; preds = %37
  %53 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %78

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @AE_RXD_HAS_VLAN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %59
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le16toh(i32 %67)
  %69 = call i32 @AE_RXD_VLAN(i32 %68)
  %70 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @M_VLANTAG, align 4
  %74 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %75 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %64, %59, %52
  %79 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %80 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %81 = call i32 @if_inc_counter(%struct.ifnet* %79, i32 %80, i32 1)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = call i32 @AE_UNLOCK(%struct.TYPE_10__* %82)
  %84 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 1
  %86 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %85, align 8
  %87 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %89 = call i32 %86(%struct.ifnet* %87, %struct.mbuf* %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = call i32 @AE_LOCK(%struct.TYPE_10__* %90)
  br label %92

92:                                               ; preds = %78, %48, %31
  ret void
}

declare dso_local i32 @AE_LOCK_ASSERT(%struct.TYPE_10__*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local %struct.mbuf* @m_devget(i32*, i32, i32, %struct.ifnet*, i32*) #1

declare dso_local i32 @AE_RXD_VLAN(i32) #1

declare dso_local i32 @AE_UNLOCK(%struct.TYPE_10__*) #1

declare dso_local i32 @AE_LOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

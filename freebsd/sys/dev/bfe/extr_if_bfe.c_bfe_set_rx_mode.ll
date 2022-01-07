; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@BFE_RXCONF = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@BFE_RXCONF_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@BFE_RXCONF_DBCAST = common dso_local global i32 0, align 4
@BFE_CAM_CTRL = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BFE_RXCONF_ALLMULTI = common dso_local global i32 0, align 4
@bfe_write_maddr = common dso_local global i32 0, align 4
@BFE_CAM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_set_rx_mode(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %5 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %5, i32 0, i32 0
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %9 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %8)
  %10 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %11 = load i32, i32* @BFE_RXCONF, align 4
  %12 = call i32 @CSR_READ_4(%struct.bfe_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_PROMISC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @BFE_RXCONF_PROMISC, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @BFE_RXCONF_PROMISC, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %30 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IFF_BROADCAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @BFE_RXCONF_DBCAST, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %28
  %41 = load i32, i32* @BFE_RXCONF_DBCAST, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %46 = load i32, i32* @BFE_CAM_CTRL, align 4
  %47 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %45, i32 %46, i32 0)
  %48 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %49 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %49, i32 0, i32 0
  %51 = load %struct.ifnet*, %struct.ifnet** %50, align 8
  %52 = call i32 @IF_LLADDR(%struct.ifnet* %51)
  %53 = call i32 @bfe_cam_write(%struct.bfe_softc* %48, i32 %52, i32 0)
  %54 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %55 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IFF_ALLMULTI, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load i32, i32* @BFE_RXCONF_ALLMULTI, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %73

64:                                               ; preds = %44
  %65 = load i32, i32* @BFE_RXCONF_ALLMULTI, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = load i32, i32* @bfe_write_maddr, align 4
  %71 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %72 = call i32 @if_foreach_llmaddr(%struct.ifnet* %69, i32 %70, %struct.bfe_softc* %71)
  br label %73

73:                                               ; preds = %64, %60
  %74 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %75 = load i32, i32* @BFE_RXCONF, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %74, i32 %75, i32 %76)
  %78 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %79 = load i32, i32* @BFE_CAM_CTRL, align 4
  %80 = load i32, i32* @BFE_CAM_ENABLE, align 4
  %81 = call i32 @BFE_OR(%struct.bfe_softc* %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @bfe_cam_write(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.bfe_softc*) #1

declare dso_local i32 @BFE_OR(%struct.bfe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

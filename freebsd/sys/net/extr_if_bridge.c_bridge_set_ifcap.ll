; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_set_ifcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_bridge.c_bridge_set_ifcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_softc = type { i32 }
%struct.bridge_iflist = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 (%struct.ifnet*, i32, i32)*, i32 }
%struct.ifreq = type { i32 }

@SIOCSIFCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"error setting capabilities on %s: %d\0A\00", align 1
@BRIDGE_IFCAPS_MASK = common dso_local global i32 0, align 4
@BRIDGE_IFCAPS_STRIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"can't disable some capabilities on %s: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_softc*, %struct.bridge_iflist*, i32)* @bridge_set_ifcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_set_ifcap(%struct.bridge_softc* %0, %struct.bridge_iflist* %1, i32 %2) #0 {
  %4 = alloca %struct.bridge_softc*, align 8
  %5 = alloca %struct.bridge_iflist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ifreq, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bridge_softc* %0, %struct.bridge_softc** %4, align 8
  store %struct.bridge_iflist* %1, %struct.bridge_iflist** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bridge_iflist*, %struct.bridge_iflist** %5, align 8
  %13 = getelementptr inbounds %struct.bridge_iflist, %struct.bridge_iflist* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %7, align 8
  %15 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %16 = call i32 @BRIDGE_UNLOCK_ASSERT(%struct.bridge_softc* %15)
  %17 = call i32 @bzero(%struct.ifreq* %8, i32 4)
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %3
  %26 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 1
  %28 = load i32 (%struct.ifnet*, i32, i32)*, i32 (%struct.ifnet*, i32, i32)** %27, align 8
  %29 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %30 = load i32, i32* @SIOCSIFCAP, align 4
  %31 = ptrtoint %struct.ifreq* %8 to i32
  %32 = call i32 %28(%struct.ifnet* %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %25
  %36 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %40 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @if_printf(i32 %38, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %25
  %45 = load i32, i32* @BRIDGE_IFCAPS_MASK, align 4
  %46 = load i32, i32* @BRIDGE_IFCAPS_STRIP, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %44
  %59 = load %struct.bridge_softc*, %struct.bridge_softc** %4, align 8
  %60 = getelementptr inbounds %struct.bridge_softc, %struct.bridge_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %63 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @if_printf(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %44
  br label %68

68:                                               ; preds = %67, %3
  ret void
}

declare dso_local i32 @BRIDGE_UNLOCK_ASSERT(%struct.bridge_softc*) #1

declare dso_local i32 @bzero(%struct.ifreq*, i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

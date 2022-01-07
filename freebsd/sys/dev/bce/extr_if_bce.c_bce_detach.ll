; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bce/extr_if_bce.c_bce_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bce_softc = type { i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@BCE_VERBOSE_UNLOAD = common dso_local global i32 0, align 4
@BCE_VERBOSE_RESET = common dso_local global i32 0, align 4
@BCE_NO_WOL_FLAG = common dso_local global i32 0, align 4
@BCE_DRV_MSG_CODE_UNLOAD_LNK_DN = common dso_local global i32 0, align 4
@BCE_DRV_MSG_CODE_UNLOAD = common dso_local global i32 0, align 4
@BCE_PHY_REMOTE_CAP_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bce_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bce_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bce_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.bce_softc* @device_get_softc(i32 %6)
  store %struct.bce_softc* %7, %struct.bce_softc** %3, align 8
  %8 = load i32, i32* @BCE_VERBOSE_UNLOAD, align 4
  %9 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @DBENTER(i32 %10)
  %12 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %12, i32 0, i32 5
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %16 = call i32 @BCE_LOCK(%struct.bce_softc* %15)
  %17 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %17, i32 0, i32 4
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %21 = call i32 @bce_stop(%struct.bce_softc* %20)
  %22 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BCE_NO_WOL_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @BCE_DRV_MSG_CODE_UNLOAD_LNK_DN, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @BCE_DRV_MSG_CODE_UNLOAD, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @bce_reset(%struct.bce_softc* %33, i32 %34)
  %36 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %37 = call i32 @BCE_UNLOCK(%struct.bce_softc* %36)
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = call i32 @ether_ifdetach(%struct.ifnet* %38)
  %40 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %41 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BCE_PHY_REMOTE_CAP_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %48 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %47, i32 0, i32 3
  %49 = call i32 @ifmedia_removeall(i32* %48)
  br label %58

50:                                               ; preds = %32
  %51 = load i32, i32* %2, align 4
  %52 = call i32 @bus_generic_detach(i32 %51)
  %53 = load i32, i32* %2, align 4
  %54 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bce_softc, %struct.bce_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_delete_child(i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %46
  %59 = load %struct.bce_softc*, %struct.bce_softc** %3, align 8
  %60 = call i32 @bce_release_resources(%struct.bce_softc* %59)
  %61 = load i32, i32* @BCE_VERBOSE_UNLOAD, align 4
  %62 = load i32, i32* @BCE_VERBOSE_RESET, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @DBEXIT(i32 %63)
  ret i32 0
}

declare dso_local %struct.bce_softc* @device_get_softc(i32) #1

declare dso_local i32 @DBENTER(i32) #1

declare dso_local i32 @BCE_LOCK(%struct.bce_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bce_stop(%struct.bce_softc*) #1

declare dso_local i32 @bce_reset(%struct.bce_softc*, i32) #1

declare dso_local i32 @BCE_UNLOCK(%struct.bce_softc*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @bce_release_resources(%struct.bce_softc*) #1

declare dso_local i32 @DBEXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

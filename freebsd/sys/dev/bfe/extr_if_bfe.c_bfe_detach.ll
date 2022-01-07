; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32, i32*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@BFE_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bfe_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfe_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfe_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bfe_softc* @device_get_softc(i32 %5)
  store %struct.bfe_softc* %6, %struct.bfe_softc** %3, align 8
  %7 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %7, i32 0, i32 4
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %1
  %14 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %15 = call i32 @BFE_LOCK(%struct.bfe_softc* %14)
  %16 = load i32, i32* @BFE_FLAG_DETACH, align 4
  %17 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %22 = call i32 @bfe_stop(%struct.bfe_softc* %21)
  %23 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %24 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %23)
  %25 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %25, i32 0, i32 2
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = icmp ne %struct.ifnet* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %13
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @ether_ifdetach(%struct.ifnet* %31)
  br label %33

33:                                               ; preds = %30, %13
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %36 = call i32 @BFE_LOCK(%struct.bfe_softc* %35)
  %37 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %38 = call i32 @bfe_chip_reset(%struct.bfe_softc* %37)
  %39 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %40 = call i32 @BFE_UNLOCK(%struct.bfe_softc* %39)
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @bus_generic_detach(i32 %41)
  %43 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %44 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* %2, align 4
  %49 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @device_delete_child(i32 %48, i32* %51)
  br label %53

53:                                               ; preds = %47, %34
  %54 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %55 = call i32 @bfe_release_resources(%struct.bfe_softc* %54)
  %56 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %57 = call i32 @bfe_dma_free(%struct.bfe_softc* %56)
  %58 = load %struct.bfe_softc*, %struct.bfe_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bfe_softc, %struct.bfe_softc* %58, i32 0, i32 0
  %60 = call i32 @mtx_destroy(i32* %59)
  ret i32 0
}

declare dso_local %struct.bfe_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @BFE_LOCK(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_stop(%struct.bfe_softc*) #1

declare dso_local i32 @BFE_UNLOCK(%struct.bfe_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @bfe_chip_reset(%struct.bfe_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bfe_release_resources(%struct.bfe_softc*) #1

declare dso_local i32 @bfe_dma_free(%struct.bfe_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

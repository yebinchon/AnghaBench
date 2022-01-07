; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32, i32, i32, i32, i32, i32*, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: mutex not initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @atse_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.atse_softc* @device_get_softc(i32 %5)
  store %struct.atse_softc* %6, %struct.atse_softc** %3, align 8
  %7 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %8 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %7, i32 0, i32 4
  %9 = call i32 @mtx_initialized(i32* %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @KASSERT(i32 %9, i8* %13)
  %15 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %16 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %15, i32 0, i32 7
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %4, align 8
  %18 = load i32, i32* %2, align 4
  %19 = call i64 @device_is_attached(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %23 = call i32 @ATSE_LOCK(%struct.atse_softc* %22)
  %24 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %25 = call i32 @atse_stop_locked(%struct.atse_softc* %24)
  %26 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %27 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %26)
  %28 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %29 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %28, i32 0, i32 6
  %30 = call i32 @callout_drain(i32* %29)
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @ether_ifdetach(%struct.ifnet* %31)
  br label %33

33:                                               ; preds = %21, %1
  %34 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %35 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %41 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @device_delete_child(i32 %39, i32* %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %46 = icmp ne %struct.ifnet* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %49 = call i32 @if_free(%struct.ifnet* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %52 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %51, i32 0, i32 4
  %53 = call i32 @mtx_destroy(i32* %52)
  %54 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %55 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @xdma_channel_free(i32 %56)
  %58 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %59 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @xdma_channel_free(i32 %60)
  %62 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %63 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @xdma_put(i32 %64)
  %66 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %67 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @xdma_put(i32 %68)
  ret i32 0
}

declare dso_local %struct.atse_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ATSE_LOCK(%struct.atse_softc*) #1

declare dso_local i32 @atse_stop_locked(%struct.atse_softc*) #1

declare dso_local i32 @ATSE_UNLOCK(%struct.atse_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @xdma_channel_free(i32) #1

declare dso_local i32 @xdma_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

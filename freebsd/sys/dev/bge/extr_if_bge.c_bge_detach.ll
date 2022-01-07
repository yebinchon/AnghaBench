; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32*, i32, i32, i64, i32, i32 }

@BGE_FLAG_TBI = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bge_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.bge_softc* @device_get_softc(i32 %5)
  store %struct.bge_softc* %6, %struct.bge_softc** %3, align 8
  %7 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @device_is_attached(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ether_ifdetach(i32 %14)
  %16 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %17 = call i32 @BGE_LOCK(%struct.bge_softc* %16)
  %18 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %19 = call i32 @bge_stop(%struct.bge_softc* %18)
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = call i32 @BGE_UNLOCK(%struct.bge_softc* %20)
  %22 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %22, i32 0, i32 5
  %24 = call i32 @callout_drain(i32* %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %34, i32 0, i32 3
  %36 = call i32 @taskqueue_drain(i64 %33, i32* %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %39 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BGE_FLAG_TBI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %45, i32 0, i32 2
  %47 = call i32 @ifmedia_removeall(i32* %46)
  br label %62

48:                                               ; preds = %37
  %49 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %50 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @bus_generic_detach(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @device_delete_child(i32 %56, i32* %59)
  br label %61

61:                                               ; preds = %53, %48
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %64 = call i32 @bge_release_resources(%struct.bge_softc* %63)
  ret i32 0
}

declare dso_local %struct.bge_softc* @device_get_softc(i32) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @ether_ifdetach(i32) #1

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @bge_stop(%struct.bge_softc*) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i64, i32*) #1

declare dso_local i32 @ifmedia_removeall(i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @bge_release_resources(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

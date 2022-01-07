; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_bus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_softc = type { i32, %struct.cs4231_channel }
%struct.cs4231_channel = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@CS4231_EBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4231_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4231_bus_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cs4231_softc*, align 8
  %5 = alloca %struct.cs4231_channel*, align 8
  %6 = alloca %struct.cs4231_channel*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.cs4231_softc* @pcm_getdevinfo(i32 %8)
  store %struct.cs4231_softc* %9, %struct.cs4231_softc** %4, align 8
  %10 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %11 = call i32 @CS4231_LOCK(%struct.cs4231_softc* %10)
  %12 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %13 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %12, i32 0, i32 1
  store %struct.cs4231_channel* %13, %struct.cs4231_channel** %5, align 8
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %15 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %14, i32 0, i32 1
  store %struct.cs4231_channel* %15, %struct.cs4231_channel** %6, align 8
  %16 = load %struct.cs4231_channel*, %struct.cs4231_channel** %5, align 8
  %17 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.cs4231_channel*, %struct.cs4231_channel** %6, align 8
  %22 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %1
  %26 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %27 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %26)
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %51

29:                                               ; preds = %20
  %30 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %31 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CS4231_EBUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %38 = call i32 @cs4231_ebdma_reset(%struct.cs4231_softc* %37)
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %41 = call i32 @CS4231_UNLOCK(%struct.cs4231_softc* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @pcm_unregister(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %51

48:                                               ; preds = %39
  %49 = load %struct.cs4231_softc*, %struct.cs4231_softc** %4, align 8
  %50 = call i32 @cs4231_free_resource(%struct.cs4231_softc* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %46, %25
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.cs4231_softc* @pcm_getdevinfo(i32) #1

declare dso_local i32 @CS4231_LOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @CS4231_UNLOCK(%struct.cs4231_softc*) #1

declare dso_local i32 @cs4231_ebdma_reset(%struct.cs4231_softc*) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @cs4231_free_resource(%struct.cs4231_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

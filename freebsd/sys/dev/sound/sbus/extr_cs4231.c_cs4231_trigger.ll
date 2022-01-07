; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/sbus/extr_cs4231.c_cs4231_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs4231_channel = type { %struct.cs4231_softc* }
%struct.cs4231_softc = type { i32 }

@CS4231_SBUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs4231_channel*)* @cs4231_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs4231_trigger(%struct.cs4231_channel* %0) #0 {
  %2 = alloca %struct.cs4231_channel*, align 8
  %3 = alloca %struct.cs4231_softc*, align 8
  store %struct.cs4231_channel* %0, %struct.cs4231_channel** %2, align 8
  %4 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %5 = getelementptr inbounds %struct.cs4231_channel, %struct.cs4231_channel* %4, i32 0, i32 0
  %6 = load %struct.cs4231_softc*, %struct.cs4231_softc** %5, align 8
  store %struct.cs4231_softc* %6, %struct.cs4231_softc** %3, align 8
  %7 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %8 = getelementptr inbounds %struct.cs4231_softc, %struct.cs4231_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CS4231_SBUS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %15 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %16 = call i32 @cs4231_apcdma_trigger(%struct.cs4231_softc* %14, %struct.cs4231_channel* %15)
  br label %21

17:                                               ; preds = %1
  %18 = load %struct.cs4231_softc*, %struct.cs4231_softc** %3, align 8
  %19 = load %struct.cs4231_channel*, %struct.cs4231_channel** %2, align 8
  %20 = call i32 @cs4231_ebdma_trigger(%struct.cs4231_softc* %18, %struct.cs4231_channel* %19)
  br label %21

21:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @cs4231_apcdma_trigger(%struct.cs4231_softc*, %struct.cs4231_channel*) #1

declare dso_local i32 @cs4231_ebdma_trigger(%struct.cs4231_softc*, %struct.cs4231_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

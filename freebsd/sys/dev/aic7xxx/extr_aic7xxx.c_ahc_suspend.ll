; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32*, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_suspend(%struct.ahc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahc_softc*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %4 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %5 = call i32 @ahc_pause_and_flushwork(%struct.ahc_softc* %4)
  %6 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %6, i32 0, i32 1
  %8 = call i32* @LIST_FIRST(i32* %7)
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %12 = call i32 @ahc_unpause(%struct.ahc_softc* %11)
  %13 = load i32, i32* @EBUSY, align 4
  store i32 %13, i32* %2, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %16 = call i32 @ahc_shutdown(%struct.ahc_softc* %15)
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local i32 @ahc_pause_and_flushwork(%struct.ahc_softc*) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_shutdown(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

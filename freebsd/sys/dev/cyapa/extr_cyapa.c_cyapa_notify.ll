; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cyapa/extr_cyapa.c_cyapa_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyapa_softc = type { %struct.TYPE_2__, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cyapa_softc*)* @cyapa_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyapa_notify(%struct.cyapa_softc* %0) #0 {
  %2 = alloca %struct.cyapa_softc*, align 8
  store %struct.cyapa_softc* %0, %struct.cyapa_softc** %2, align 8
  %3 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %4 = call i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc* %3)
  %5 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %11 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %12 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %11, i32 0, i32 3
  %13 = call i32 @fifo_empty(%struct.cyapa_softc* %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %53, label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %17 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @KNOTE_LOCKED(i32* %18, i32 0)
  %20 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %21 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %26 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %24, %15
  %30 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %31 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %36 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %38 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %37, i32 0, i32 2
  %39 = call i32 @wakeup(i64* %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %42 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %47 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.cyapa_softc*, %struct.cyapa_softc** %2, align 8
  %49 = getelementptr inbounds %struct.cyapa_softc, %struct.cyapa_softc* %48, i32 0, i32 0
  %50 = call i32 @selwakeup(%struct.TYPE_2__* %49)
  br label %51

51:                                               ; preds = %45, %40
  br label %52

52:                                               ; preds = %51, %24
  br label %53

53:                                               ; preds = %52, %9
  ret void
}

declare dso_local i32 @CYAPA_LOCK_ASSERT(%struct.cyapa_softc*) #1

declare dso_local i32 @fifo_empty(%struct.cyapa_softc*, i32*) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @selwakeup(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

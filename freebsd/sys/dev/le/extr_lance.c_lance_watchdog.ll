; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_lance.c_lance_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lance_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lance_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.lance_softc*
  store %struct.lance_softc* %6, %struct.lance_softc** %3, align 8
  %7 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %8 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %7, i32 0, i32 2
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @LE_LOCK_ASSERT(%struct.lance_softc* %10, i32 %11)
  %13 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %14 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %19 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %17, %1
  %24 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %25 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %24, i32 0, i32 1
  %26 = load i32, i32* @hz, align 4
  %27 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %28 = call i32 @callout_reset(i32* %25, i32 %26, void (i8*)* @lance_watchdog, %struct.lance_softc* %27)
  br label %37

29:                                               ; preds = %17
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = call i32 @if_printf(%struct.ifnet* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %34 = call i32 @if_inc_counter(%struct.ifnet* %32, i32 %33, i32 1)
  %35 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %36 = call i32 @lance_init_locked(%struct.lance_softc* %35)
  br label %37

37:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @LE_LOCK_ASSERT(%struct.lance_softc*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.lance_softc*) #1

declare dso_local i32 @if_printf(%struct.ifnet*, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @lance_init_locked(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

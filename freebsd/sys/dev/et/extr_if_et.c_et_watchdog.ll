; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32*, i32, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"watchdog timed out (0x%08x) -- resetting\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.et_softc*)* @et_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et_watchdog(%struct.et_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.et_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.et_softc* %0, %struct.et_softc** %3, align 8
  %5 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %6 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %5)
  %7 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %8 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %13 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11, %1
  store i32 0, i32* %2, align 4
  br label %56

18:                                               ; preds = %11
  %19 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %20 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %24 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %22, i32 %26, i32 %27)
  %29 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %30 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32toh(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %36 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @if_printf(%struct.TYPE_5__* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %41 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(%struct.TYPE_5__* %42, i32 %43, i32 1)
  %45 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %48 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %46
  store i32 %52, i32* %50, align 4
  %53 = load %struct.et_softc*, %struct.et_softc** %3, align 8
  %54 = call i32 @et_init_locked(%struct.et_softc* %53)
  %55 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %18, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @if_printf(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @et_init_locked(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

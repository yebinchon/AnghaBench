; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bwi_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.bwi_softc*
  store %struct.bwi_softc* %5, %struct.bwi_softc** %3, align 8
  %6 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %7 = call i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc* %6)
  %8 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %24 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @counter_u64_add(i32 %26, i32 1)
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %29 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %31, i32 0, i32 2
  %33 = call i32 @taskqueue_enqueue(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %18, %12, %1
  %35 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %35, i32 0, i32 1
  %37 = load i32, i32* @hz, align 4
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %39 = call i32 @callout_reset(i32* %36, i32 %37, void (i8*)* @bwi_watchdog, %struct.bwi_softc* %38)
  ret void
}

declare dso_local i32 @BWI_ASSERT_LOCKED(%struct.bwi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

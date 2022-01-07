; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i64, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"watchdog timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @malo_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_watchdog(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.malo_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.malo_softc*
  store %struct.malo_softc* %5, %struct.malo_softc** %3, align 8
  %6 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %7 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %6, i32 0, i32 6
  %8 = load i32, i32* @hz, align 4
  %9 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %10 = call i32 @callout_reset(i32* %7, i32 %8, void (i8*)* @malo_watchdog, %struct.malo_softc* %9)
  %11 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %12 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %17 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  br label %47

22:                                               ; preds = %15
  %23 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %24 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %29 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %27
  %33 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %34 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %38 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @counter_u64_add(i32 %40, i32 1)
  %42 = load %struct.malo_softc*, %struct.malo_softc** %3, align 8
  %43 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %21, %32, %27, %22
  ret void
}

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.malo_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

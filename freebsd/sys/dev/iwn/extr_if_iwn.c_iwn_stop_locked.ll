; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32, i32, i32, i32, i64, i64 }

@IWN_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*)* @iwn_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_stop_locked(%struct.iwn_softc* %0) #0 {
  %2 = alloca %struct.iwn_softc*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %2, align 8
  %3 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %4 = call i32 @IWN_LOCK_ASSERT(%struct.iwn_softc* %3)
  %5 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %6 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IWN_FLAG_RUNNING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %34

12:                                               ; preds = %1
  %13 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %14 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %18 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %17, i32 0, i32 3
  %19 = call i32 @callout_stop(i32* %18)
  %20 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %21 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %20, i32 0, i32 2
  %22 = call i32 @callout_stop(i32* %21)
  %23 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %24 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %23, i32 0, i32 1
  %25 = call i32 @callout_stop(i32* %24)
  %26 = load i32, i32* @IWN_FLAG_RUNNING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %29 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %33 = call i32 @iwn_hw_stop(%struct.iwn_softc* %32)
  br label %34

34:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @IWN_LOCK_ASSERT(%struct.iwn_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @iwn_hw_stop(%struct.iwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_stop_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_stop_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32, i64, i32*, i32 }

@IPW_CSR_RST = common dso_local global i32 0, align 4
@IPW_RST_SW_RESET = common dso_local global i32 0, align 4
@IPW_NTBD = common dso_local global i32 0, align 4
@IPW_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*)* @ipw_stop_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_stop_locked(%struct.ipw_softc* %0) #0 {
  %2 = alloca %struct.ipw_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %2, align 8
  %4 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %5 = call i32 @IPW_LOCK_ASSERT(%struct.ipw_softc* %4)
  %6 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %6, i32 0, i32 3
  %8 = call i32 @callout_stop(i32* %7)
  %9 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %10 = call i32 @ipw_stop_master(%struct.ipw_softc* %9)
  %11 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %12 = load i32, i32* @IPW_CSR_RST, align 4
  %13 = load i32, i32* @IPW_RST_SW_RESET, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.ipw_softc* %11, i32 %12, i32 %13)
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @IPW_NTBD, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %21 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @ipw_release_sbd(%struct.ipw_softc* %20, i32* %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %15

31:                                               ; preds = %15
  %32 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @IPW_FLAG_RUNNING, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  ret void
}

declare dso_local i32 @IPW_LOCK_ASSERT(%struct.ipw_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ipw_stop_master(%struct.ipw_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ipw_softc*, i32, i32) #1

declare dso_local i32 @ipw_release_sbd(%struct.ipw_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

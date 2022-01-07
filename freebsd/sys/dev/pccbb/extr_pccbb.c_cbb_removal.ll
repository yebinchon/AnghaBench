; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_removal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32*, i64 }

@CBB_16BIT_CARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbb_softc*)* @cbb_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbb_removal(%struct.cbb_softc* %0) #0 {
  %2 = alloca %struct.cbb_softc*, align 8
  store %struct.cbb_softc* %0, %struct.cbb_softc** %2, align 8
  %3 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %6 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @CBB_16BIT_CARD, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %13 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = call i32 @exca_removal(i32* %15)
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %19 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @device_is_attached(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %25 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CARD_DETACH_CARD(i32 %26)
  br label %28

28:                                               ; preds = %23, %17
  br label %29

29:                                               ; preds = %28, %11
  %30 = load %struct.cbb_softc*, %struct.cbb_softc** %2, align 8
  %31 = call i32 @cbb_destroy_res(%struct.cbb_softc* %30)
  ret void
}

declare dso_local i32 @exca_removal(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @CARD_DETACH_CARD(i32) #1

declare dso_local i32 @cbb_destroy_res(%struct.cbb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

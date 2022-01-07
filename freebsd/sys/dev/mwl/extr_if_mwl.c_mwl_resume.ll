; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EDOOFUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwl_resume(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %4 = load i32, i32* @EDOOFUS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %6 = call i32 @MWL_LOCK(%struct.mwl_softc* %5)
  %7 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %8 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %14 = call i32 @mwl_init(%struct.mwl_softc* %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %17 = call i32 @MWL_UNLOCK(%struct.mwl_softc* %16)
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %22 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %21, i32 0, i32 0
  %23 = call i32 @ieee80211_start_all(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %20, %15
  ret void
}

declare dso_local i32 @MWL_LOCK(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_init(%struct.mwl_softc*) #1

declare dso_local i32 @MWL_UNLOCK(%struct.mwl_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

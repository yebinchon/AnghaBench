; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i64, %struct.sfxge_intr }
%struct.sfxge_intr = type { i64 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"intr->state != SFXGE_INTR_INITIALIZED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_ev_fini(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_intr*, align 8
  %4 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %5 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %5, i32 0, i32 2
  store %struct.sfxge_intr* %6, %struct.sfxge_intr** %3, align 8
  %7 = load %struct.sfxge_intr*, %struct.sfxge_intr** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %23, %1
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @sfxge_ev_qfini(%struct.sfxge_softc* %24, i32 %25)
  br label %19

27:                                               ; preds = %19
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %29 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_ev_qfini(%struct.sfxge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

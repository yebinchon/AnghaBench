; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, %struct.sfxge_intr }
%struct.sfxge_intr = type { i64 }

@SFXGE_INTR_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"intr->state != SFXGE_INTR_STARTED\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_ev_start(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 2
  store %struct.sfxge_intr* %8, %struct.sfxge_intr** %4, align 8
  %9 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SFXGE_INTR_STARTED, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @efx_ev_init(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %27 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @sfxge_ev_qstart(%struct.sfxge_softc* %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %41

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %24

40:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %56

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %46, %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @sfxge_ev_qstop(%struct.sfxge_softc* %47, i32 %48)
  br label %42

50:                                               ; preds = %42
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @efx_ev_fini(i32 %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %50, %40, %21
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_ev_init(i32) #1

declare dso_local i32 @sfxge_ev_qstart(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @sfxge_ev_qstop(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @efx_ev_fini(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

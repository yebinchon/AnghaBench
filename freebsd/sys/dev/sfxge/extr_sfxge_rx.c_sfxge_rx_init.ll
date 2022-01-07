; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_intr }
%struct.sfxge_intr = type { i32, i64 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"intr->state != SFXGE_INTR_INITIALIZED\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@lro_idle_ticks = common dso_local global i32 0, align 4
@lro_table_size = common dso_local global i32 0, align 4
@table_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_rx_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %7 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %8 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %7, i32 0, i32 1
  store %struct.sfxge_intr* %8, %struct.sfxge_intr** %4, align 8
  %9 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %10 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %15 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %21
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @sfxge_rx_qinit(%struct.sfxge_softc* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %40

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %39 = call i32 @sfxge_rx_stat_init(%struct.sfxge_softc* %38)
  store i32 0, i32* %2, align 4
  br label %53

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %45, %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %5, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @sfxge_rx_qfini(%struct.sfxge_softc* %46, i32 %47)
  br label %41

49:                                               ; preds = %41
  %50 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %51 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_rx_qinit(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @sfxge_rx_stat_init(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_rx_qfini(%struct.sfxge_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

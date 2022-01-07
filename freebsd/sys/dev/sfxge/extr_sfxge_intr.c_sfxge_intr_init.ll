; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i64, i32 }

@SFXGE_INTR_UNINITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Interrupts already initialized\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Using MSI-X interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Using MSI interrupts\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Using fixed interrupts\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Couldn't setup interrupts\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EFX_INTR_SIZE = common dso_local global i32 0, align 4
@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sfxge_intr_init(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_intr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 0
  store %struct.sfxge_intr* %12, %struct.sfxge_intr** %5, align 8
  %13 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %13, i32 0, i32 1
  store i32* %14, i32** %6, align 8
  %15 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %16 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SFXGE_INTR_UNINITIALIZED, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %23 = call i32 @sfxge_intr_setup_msix(%struct.sfxge_softc* %22)
  store i32 %23, i32* %7, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %30 = call i32 @sfxge_intr_setup_msi(%struct.sfxge_softc* %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %47

35:                                               ; preds = %28
  %36 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %37 = call i32 @sfxge_intr_setup_fixed(%struct.sfxge_softc* %36)
  store i32 %37, i32* %7, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %46

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %60

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %32
  br label %48

48:                                               ; preds = %47, %25
  %49 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %50 = load i32, i32* @EFX_INTR_SIZE, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @sfxge_dma_alloc(%struct.sfxge_softc* %49, i32 %50, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %58 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %59 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %54, %42
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_intr_setup_msix(%struct.sfxge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sfxge_intr_setup_msi(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_intr_setup_fixed(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_dma_alloc(%struct.sfxge_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

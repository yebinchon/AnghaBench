; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i64, i32, i32, %struct.sfxge_intr_hdl*, i32*, i32 }
%struct.sfxge_intr_hdl = type { i64, i32 }

@SFXGE_INTR_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"intr->state != SFXGE_INTR_INITIALIZED\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_SFXGE = common dso_local global i32 0, align 4
@EFX_INTR_INVALID = common dso_local global i32 0, align 4
@SFXGE_INTR_UNINITIALIZED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfxge_intr_fini(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca %struct.sfxge_intr_hdl*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %11, i32 0, i32 0
  store %struct.sfxge_intr* %12, %struct.sfxge_intr** %4, align 8
  %13 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %14 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %13, i32 0, i32 5
  store i32* %14, i32** %5, align 8
  %15 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %16 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %15, i32 0, i32 3
  %17 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %16, align 8
  store %struct.sfxge_intr_hdl* %17, %struct.sfxge_intr_hdl** %3, align 8
  %18 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %19 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SFXGE_INTR_INITIALIZED, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @sfxge_dma_free(i32* %25)
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %49, %1
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %30 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %36, i64 %38
  %40 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %3, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %42, i64 %44
  %46 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bus_release_resource(i32 %34, i32 %35, i64 %41, i32 %47)
  br label %49

49:                                               ; preds = %33
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %27

52:                                               ; preds = %27
  %53 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %3, align 8
  %54 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %53, i64 0
  %55 = getelementptr inbounds %struct.sfxge_intr_hdl, %struct.sfxge_intr_hdl* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pci_release_msi(i32 %59)
  br label %61

61:                                               ; preds = %58, %52
  %62 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %63 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %68 = call i32 @sfxge_intr_teardown_msix(%struct.sfxge_softc* %67)
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %3, align 8
  %71 = load i32, i32* @M_SFXGE, align 4
  %72 = call i32 @free(%struct.sfxge_intr_hdl* %70, i32 %71)
  %73 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %74 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %73, i32 0, i32 3
  store %struct.sfxge_intr_hdl* null, %struct.sfxge_intr_hdl** %74, align 8
  %75 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %76 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %75, i32 0, i32 1
  store i32 0, i32* %76, align 8
  %77 = load i32, i32* @EFX_INTR_INVALID, align 4
  %78 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %79 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* @SFXGE_INTR_UNINITIALIZED, align 8
  %81 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %82 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @sfxge_intr_teardown_msix(%struct.sfxge_softc*) #1

declare dso_local i32 @free(%struct.sfxge_intr_hdl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

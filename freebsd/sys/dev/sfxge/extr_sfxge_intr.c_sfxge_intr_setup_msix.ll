; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i32, %struct.resource*, i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"evq_max is zero\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_INTR_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_intr_setup_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_setup_msix(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 1
  store %struct.sfxge_intr* %13, %struct.sfxge_intr** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @pci_msix_count(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %1
  %21 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %29 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @MIN(i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = call i32 @PCIR_BAR(i32 4)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load i32, i32* @RF_ACTIVE, align 4
  %36 = call %struct.resource* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %8, i32 %35)
  store %struct.resource* %36, %struct.resource** %5, align 8
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = icmp eq %struct.resource* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %76

41:                                               ; preds = %20
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @pci_alloc_msix(i32 %42, i32* %7)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SYS_RES_MEMORY, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.resource*, %struct.resource** %5, align 8
  %50 = call i32 @bus_release_resource(i32 %46, i32 %47, i32 %48, %struct.resource* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %2, align 4
  br label %76

52:                                               ; preds = %41
  %53 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @sfxge_intr_alloc(%struct.sfxge_softc* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SYS_RES_MEMORY, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.resource*, %struct.resource** %5, align 8
  %62 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 %60, %struct.resource* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pci_release_msi(i32 %63)
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %2, align 4
  br label %76

66:                                               ; preds = %52
  %67 = load i32, i32* @EFX_INTR_MESSAGE, align 4
  %68 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %69 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %72 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = load %struct.sfxge_intr*, %struct.sfxge_intr** %4, align 8
  %75 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %74, i32 0, i32 1
  store %struct.resource* %73, %struct.resource** %75, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %66, %57, %45, %39, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @pci_msix_count(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @pci_alloc_msix(i32, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i64 @sfxge_intr_alloc(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

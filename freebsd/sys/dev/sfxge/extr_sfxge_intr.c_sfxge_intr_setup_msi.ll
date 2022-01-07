; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_intr.c_sfxge_intr_setup_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_intr, i32 }
%struct.sfxge_intr = type { i32, i32, %struct.sfxge_intr_hdl* }
%struct.sfxge_intr_hdl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_INTR_MESSAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfxge_softc*)* @sfxge_intr_setup_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_intr_setup_msi(%struct.sfxge_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca %struct.sfxge_intr_hdl*, align 8
  %5 = alloca %struct.sfxge_intr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  %9 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %10 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %13 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %12, i32 0, i32 0
  store %struct.sfxge_intr* %13, %struct.sfxge_intr** %5, align 8
  %14 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %15 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %14, i32 0, i32 2
  %16 = load %struct.sfxge_intr_hdl*, %struct.sfxge_intr_hdl** %15, align 8
  store %struct.sfxge_intr_hdl* %16, %struct.sfxge_intr_hdl** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @pci_msi_count(i32 %17)
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @pci_alloc_msi(i32 %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %2, align 4
  br label %48

32:                                               ; preds = %26
  %33 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @sfxge_intr_alloc(%struct.sfxge_softc* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @pci_release_msi(i32 %38)
  %40 = load i32, i32* @ENOMEM, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %32
  %42 = load i32, i32* @EFX_INTR_MESSAGE, align 4
  %43 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %44 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.sfxge_intr*, %struct.sfxge_intr** %5, align 8
  %47 = getelementptr inbounds %struct.sfxge_intr, %struct.sfxge_intr* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %41, %37, %30, %24
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @pci_msi_count(i32) #1

declare dso_local i32 @pci_alloc_msi(i32, i32*) #1

declare dso_local i64 @sfxge_intr_alloc(%struct.sfxge_softc*, i32) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

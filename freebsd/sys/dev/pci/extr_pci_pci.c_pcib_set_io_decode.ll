; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_set_io_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_pci.c_pcib_set_io_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcib_softc = type { i32, i32, i32 }

@PCIR_IOBASEH_1 = common dso_local global i32 0, align 4
@PCIR_IOBASEL_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITH_1 = common dso_local global i32 0, align 4
@PCIR_IOLIMITL_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcib_softc*)* @pcib_set_io_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcib_set_io_decode(%struct.pcib_softc* %0) #0 {
  %2 = alloca %struct.pcib_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.pcib_softc* %0, %struct.pcib_softc** %2, align 8
  %5 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %6 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %9 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 16
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @PCIR_IOBASEH_1, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_write_config(i32 %15, i32 %16, i32 %17, i32 2)
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @PCIR_IOBASEL_1, align 4
  %22 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %23 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 8
  %26 = call i32 @pci_write_config(i32 %20, i32 %21, i32 %25, i32 1)
  %27 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %28 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %29, 16
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @PCIR_IOLIMITH_1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pci_write_config(i32 %34, i32 %35, i32 %36, i32 2)
  br label %38

38:                                               ; preds = %33, %19
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @PCIR_IOLIMITL_1, align 4
  %41 = load %struct.pcib_softc*, %struct.pcib_softc** %2, align 8
  %42 = getelementptr inbounds %struct.pcib_softc, %struct.pcib_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = call i32 @pci_write_config(i32 %39, i32 %40, i32 %44, i32 1)
  ret void
}

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }

@BWI_PCIR_SEL_REGWIN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RETRY_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, i32)* @bwi_regwin_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_regwin_select(%struct.bwi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @BWI_PCIM_REGWIN(i32 %8)
  store i64 %9, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 50
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %15 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BWI_PCIR_SEL_REGWIN, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @pci_write_config(i32 %16, i32 %17, i64 %18, i32 4)
  %20 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BWI_PCIR_SEL_REGWIN, align 4
  %24 = call i64 @pci_read_config(i32 %22, i32 %23, i32 4)
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %35

28:                                               ; preds = %13
  %29 = call i32 @DELAY(i32 10)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %27
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @BWI_PCIM_REGWIN(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i64, i32) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

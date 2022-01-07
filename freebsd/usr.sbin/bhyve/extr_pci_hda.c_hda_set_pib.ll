; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_pib.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_set_pib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i64 }

@HDAC_SDLPIB = common dso_local global i64 0, align 8
@HDA_DMA_PIB_ENTRY_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*, i32, i64)* @hda_set_pib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_set_pib(%struct.hda_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hda_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.hda_softc* %0, %struct.hda_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @hda_get_offset_stream(i32 %8)
  store i64 %9, i64* %7, align 8
  %10 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* @HDAC_SDLPIB, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %10, i64 %13, i64 %14)
  %16 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add nsw i64 8192, %17
  %19 = load i64, i64* @HDAC_SDLPIB, align 8
  %20 = add nsw i64 %18, %19
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %16, i64 %20, i64 %21)
  %23 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %24 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.hda_softc*, %struct.hda_softc** %4, align 8
  %30 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @HDA_DMA_PIB_ENTRY_LEN, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = inttoptr i64 %36 to i64*
  store i64 %28, i64* %37, align 8
  br label %38

38:                                               ; preds = %27, %3
  ret void
}

declare dso_local i64 @hda_get_offset_stream(i32) #1

declare dso_local i32 @hda_set_reg_by_offset(%struct.hda_softc*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

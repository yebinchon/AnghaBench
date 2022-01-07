; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_get_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_get_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i64 }

@ATI_RS300_APSIZE = common dso_local global i32 0, align 4
@ATI_RS100_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ati_get_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_get_aperture(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_ati_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.agp_ati_softc* @device_get_softc(i32 %5)
  store %struct.agp_ati_softc* %6, %struct.agp_ati_softc** %3, align 8
  %7 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %8 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @ATI_RS300_APSIZE, align 4
  %14 = call i32 @pci_read_config(i32 %12, i32 %13, i32 4)
  store i32 %14, i32* %4, align 4
  br label %19

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @ATI_RS100_APSIZE, align 4
  %18 = call i32 @pci_read_config(i32 %16, i32 %17, i32 4)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 14
  %22 = ashr i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = shl i32 33554432, %23
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

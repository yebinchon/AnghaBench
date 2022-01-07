; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_set_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_set_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i64 }

@ATI_RS300_APSIZE = common dso_local global i32 0, align 4
@ATI_RS100_APSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @agp_ati_set_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_set_aperture(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_ati_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_ati_softc* @device_get_softc(i32 %8)
  store %struct.agp_ati_softc* %9, %struct.agp_ati_softc** %5, align 8
  %10 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %5, align 8
  %11 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ATI_RS300_APSIZE, align 4
  store i32 %15, i32* %7, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ATI_RS100_APSIZE, align 4
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @pci_read_config(i32 %19, i32 %20, i32 4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -15
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 33554432
  %26 = call i32 @ffs(i32 %25)
  %27 = sub nsw i32 %26, 1
  %28 = shl i32 %27, 1
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pci_write_config(i32 %31, i32 %32, i32 %33, i32 4)
  ret i32 0
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

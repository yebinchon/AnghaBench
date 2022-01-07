; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_get_aperture.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_get_aperture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32* }

@AGP_AMD64_APCTRL = common dso_local global i32 0, align 4
@AGP_AMD64_APCTRL_SIZE_MASK = common dso_local global i32 0, align 4
@AGP_AMD64_TABLE_SIZE = common dso_local global i64 0, align 8
@agp_amd64_table = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @agp_amd64_get_aperture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @agp_amd64_get_aperture(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_amd64_softc*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_amd64_softc* @device_get_softc(i32 %6)
  store %struct.agp_amd64_softc* %7, %struct.agp_amd64_softc** %4, align 8
  %8 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %4, align 8
  %9 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AGP_AMD64_APCTRL, align 4
  %14 = call i32 @pci_cfgregread(i32 0, i32 %12, i32 3, i32 %13, i32 4)
  %15 = load i32, i32* @AGP_AMD64_APCTRL_SIZE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = ashr i32 %16, 1
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @AGP_AMD64_TABLE_SIZE, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load i64*, i64** @agp_amd64_table, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %23, %22
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_cfgregread(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_mediainit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_miibus_mediainit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32 }
%struct.mii_data = type { %struct.ifmedia }
%struct.ifmedia = type { i32 }

@DC_REVISION_DM9102A = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_HPNA_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @dc_miibus_mediainit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_miibus_mediainit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifmedia*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pci_get_revid(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.dc_softc*
  store %struct.dc_softc* %11, %struct.dc_softc** %3, align 8
  %12 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.mii_data*
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %18 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %17, i32 0, i32 0
  store %struct.ifmedia* %18, %struct.ifmedia** %5, align 8
  %19 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %20 = call i64 @DC_IS_DAVICOM(%struct.dc_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DC_REVISION_DM9102A, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.ifmedia*, %struct.ifmedia** %5, align 8
  %28 = load i32, i32* @IFM_ETHER, align 4
  %29 = load i32, i32* @IFM_HPNA_1, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ifmedia_add(%struct.ifmedia* %27, i32 %30, i32 0, i32* null)
  br label %32

32:                                               ; preds = %26, %22, %1
  ret void
}

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i64 @DC_IS_DAVICOM(%struct.dc_softc*) #1

declare dso_local i32 @ifmedia_add(%struct.ifmedia*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

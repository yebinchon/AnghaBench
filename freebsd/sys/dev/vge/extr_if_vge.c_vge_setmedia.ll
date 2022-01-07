; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_setmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_setmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i32 }
%struct.mii_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }

@VGE_DIAGCTL = common dso_local global i32 0, align 4
@VGE_DIAGCTL_MACFORCE = common dso_local global i32 0, align 4
@VGE_DIAGCTL_FDXFORCE = common dso_local global i32 0, align 4
@IFM_GMASK = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unknown media type: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_setmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_setmedia(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.mii_data*, align 8
  %4 = alloca %struct.ifmedia_entry*, align 8
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %5 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.mii_data* @device_get_softc(i32 %7)
  store %struct.mii_data* %8, %struct.mii_data** %3, align 8
  %9 = load %struct.mii_data*, %struct.mii_data** %3, align 8
  %10 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %11, align 8
  store %struct.ifmedia_entry* %12, %struct.ifmedia_entry** %4, align 8
  %13 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %14 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @IFM_SUBTYPE(i32 %15)
  switch i32 %16, label %58 [
    i32 128, label %17
    i32 131, label %26
    i32 130, label %35
    i32 129, label %35
  ]

17:                                               ; preds = %1
  %18 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %19 = load i32, i32* @VGE_DIAGCTL, align 4
  %20 = load i32, i32* @VGE_DIAGCTL_MACFORCE, align 4
  %21 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %18, i32 %19, i32 %20)
  %22 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %23 = load i32, i32* @VGE_DIAGCTL, align 4
  %24 = load i32, i32* @VGE_DIAGCTL_FDXFORCE, align 4
  %25 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %22, i32 %23, i32 %24)
  br label %67

26:                                               ; preds = %1
  %27 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %28 = load i32, i32* @VGE_DIAGCTL, align 4
  %29 = load i32, i32* @VGE_DIAGCTL_MACFORCE, align 4
  %30 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %32 = load i32, i32* @VGE_DIAGCTL, align 4
  %33 = load i32, i32* @VGE_DIAGCTL_FDXFORCE, align 4
  %34 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %31, i32 %32, i32 %33)
  br label %67

35:                                               ; preds = %1, %1
  %36 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %37 = load i32, i32* @VGE_DIAGCTL, align 4
  %38 = load i32, i32* @VGE_DIAGCTL_MACFORCE, align 4
  %39 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %41 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFM_GMASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @IFM_FDX, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %35
  %48 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %49 = load i32, i32* @VGE_DIAGCTL, align 4
  %50 = load i32, i32* @VGE_DIAGCTL_FDXFORCE, align 4
  %51 = call i32 @CSR_SETBIT_1(%struct.vge_softc* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %35
  %53 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %54 = load i32, i32* @VGE_DIAGCTL, align 4
  %55 = load i32, i32* @VGE_DIAGCTL_FDXFORCE, align 4
  %56 = call i32 @CSR_CLRBIT_1(%struct.vge_softc* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  br label %67

58:                                               ; preds = %1
  %59 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %60 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %4, align 8
  %63 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @IFM_SUBTYPE(i32 %64)
  %66 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %58, %57, %26, %17
  ret void
}

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_CLRBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBIT_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

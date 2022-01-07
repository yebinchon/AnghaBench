; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ali.c_agp_ali_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ali.c_agp_ali_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ali_softc = type { i32, %struct.agp_gatt* }
%struct.agp_gatt = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"bad initial aperture size, disabling\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AGP_ALI_ATTBASE = common dso_local global i32 0, align 4
@AGP_ALI_TLBCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ali_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ali_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_ali_softc*, align 8
  %5 = alloca %struct.agp_gatt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.agp_ali_softc* @device_get_softc(i32 %8)
  store %struct.agp_ali_softc* %9, %struct.agp_ali_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @agp_generic_attach(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %2, align 4
  br label %67

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @AGP_GET_APERTURE(i32 %17)
  %19 = load %struct.agp_ali_softc*, %struct.agp_ali_softc** %4, align 8
  %20 = getelementptr inbounds %struct.agp_ali_softc, %struct.agp_ali_softc* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.agp_ali_softc*, %struct.agp_ali_softc** %4, align 8
  %22 = getelementptr inbounds %struct.agp_ali_softc, %struct.agp_ali_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENXIO, align 4
  store i32 %28, i32* %2, align 4
  br label %67

29:                                               ; preds = %16
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i32, i32* %3, align 4
  %32 = call %struct.agp_gatt* @agp_alloc_gatt(i32 %31)
  store %struct.agp_gatt* %32, %struct.agp_gatt** %5, align 8
  %33 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %34 = icmp ne %struct.agp_gatt* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @AGP_GET_APERTURE(i32 %38)
  %40 = sdiv i32 %39, 2
  %41 = call i64 @AGP_SET_APERTURE(i32 %37, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @agp_generic_detach(i32 %44)
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %2, align 4
  br label %67

47:                                               ; preds = %36
  br label %30

48:                                               ; preds = %35
  %49 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %50 = load %struct.agp_ali_softc*, %struct.agp_ali_softc** %4, align 8
  %51 = getelementptr inbounds %struct.agp_ali_softc, %struct.agp_ali_softc* %50, i32 0, i32 1
  store %struct.agp_gatt* %49, %struct.agp_gatt** %51, align 8
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @AGP_ALI_ATTBASE, align 4
  %54 = call i32 @pci_read_config(i32 %52, i32 %53, i32 4)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @AGP_ALI_ATTBASE, align 4
  %57 = load %struct.agp_gatt*, %struct.agp_gatt** %5, align 8
  %58 = getelementptr inbounds %struct.agp_gatt, %struct.agp_gatt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 4095
  %62 = or i32 %59, %61
  %63 = call i32 @pci_write_config(i32 %55, i32 %56, i32 %62, i32 4)
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @AGP_ALI_TLBCTRL, align 4
  %66 = call i32 @pci_write_config(i32 %64, i32 %65, i32 16, i32 1)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %48, %43, %25, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.agp_ali_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_generic_attach(i32) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.agp_gatt* @agp_alloc_gatt(i32) #1

declare dso_local i64 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @agp_generic_detach(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

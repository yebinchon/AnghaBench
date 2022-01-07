; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i32, i32, i64, i64, i32, i64 }

@ATI_RS300_APSIZE = common dso_local global i32 0, align 4
@ATI_RS100_APSIZE = common dso_local global i32 0, align 4
@ATI_GART_BASE = common dso_local global i32 0, align 4
@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@ATI_GART_MMADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_ati_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_ati_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.agp_ati_softc* @device_get_softc(i32 %6)
  store %struct.agp_ati_softc* %7, %struct.agp_ati_softc** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @agp_free_cdev(i32 %8)
  %10 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %11 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @ATI_RS300_APSIZE, align 4
  store i32 %15, i32* %4, align 4
  br label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ATI_RS100_APSIZE, align 4
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i32, i32* @ATI_GART_BASE, align 4
  %20 = call i32 @WRITE4(i32 %19, i32 0)
  %21 = load i32, i32* %2, align 4
  %22 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %23 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @AGP_SET_APERTURE(i32 %21, i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @pci_read_config(i32 %26, i32 %27, i32 4)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, -2
  %33 = call i32 @pci_write_config(i32 %29, i32 %30, i32 %32, i32 4)
  %34 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %35 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %39 = call i32 @kmem_free(i32 %37, i32 %38)
  %40 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %41 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %45 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @kmem_free(i32 %43, i32 %49)
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SYS_RES_MEMORY, align 4
  %53 = load i32, i32* @ATI_GART_MMADDR, align 4
  %54 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %3, align 8
  %55 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_release_resource(i32 %51, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @agp_free_res(i32 %58)
  ret i32 0
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

declare dso_local i32 @agp_free_cdev(i32) #1

declare dso_local i32 @WRITE4(i32, i32) #1

declare dso_local i32 @AGP_SET_APERTURE(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @kmem_free(i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @agp_free_res(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

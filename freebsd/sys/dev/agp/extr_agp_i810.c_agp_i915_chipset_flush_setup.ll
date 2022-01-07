; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_chipset_flush_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_chipset_flush_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32, i32 }

@AGP_I915_IFPADDR = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Found already configured flush page at 0x%jx\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i915_chipset_flush_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i915_chipset_flush_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.agp_i810_softc* @device_get_softc(i32 %7)
  store %struct.agp_i810_softc* %8, %struct.agp_i810_softc** %4, align 8
  %9 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %10 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AGP_I915_IFPADDR, align 4
  %13 = call i32 @pci_read_config(i32 %11, i32 %12, i32 4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -2
  store i32 %19, i32* %5, align 4
  %20 = load i64, i64* @bootverbose, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %22, %17
  %27 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %28 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = call i32 @agp_i915_chipset_flush_alloc_page(i32 %29, i32 %30, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %63

40:                                               ; preds = %26
  br label %62

41:                                               ; preds = %1
  %42 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %43 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @agp_i915_chipset_flush_alloc_page(i32 %44, i32 0, i32 -1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %2, align 4
  br label %63

50:                                               ; preds = %41
  %51 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %52 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rman_get_start(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %56 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AGP_I915_IFPADDR, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, 1
  %61 = call i32 @pci_write_config(i32 %57, i32 %58, i32 %60, i32 4)
  br label %62

62:                                               ; preds = %50, %40
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %48, %38
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @agp_i915_chipset_flush_alloc_page(i32, i32, i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i965_chipset_flush_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i965_chipset_flush_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32, i32 }

@AGP_I965_IFPADDR = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Found already configured flush page at 0x%jx\0A\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i965_chipset_flush_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i965_chipset_flush_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.agp_i810_softc* @device_get_softc(i32 %9)
  store %struct.agp_i810_softc* %10, %struct.agp_i810_softc** %4, align 8
  %11 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %12 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* @AGP_I965_IFPADDR, align 8
  %15 = add nsw i64 %14, 4
  %16 = call i32 @pci_read_config(i32 %13, i64 %15, i32 4)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %18 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* @AGP_I965_IFPADDR, align 8
  %21 = call i32 @pci_read_config(i32 %19, i64 %20, i32 4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %53

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = shl i32 %26, 32
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, -2
  %30 = or i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %39 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = add nsw i64 %43, %44
  %46 = sub nsw i64 %45, 1
  %47 = call i32 @agp_i915_chipset_flush_alloc_page(i32 %40, i32 %41, i64 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %37
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %2, align 4
  br label %87

52:                                               ; preds = %37
  br label %86

53:                                               ; preds = %1
  %54 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %55 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @agp_i915_chipset_flush_alloc_page(i32 %56, i32 0, i64 -1)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %87

62:                                               ; preds = %53
  %63 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %64 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @rman_get_start(i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %68 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i64, i64* @AGP_I965_IFPADDR, align 8
  %71 = add nsw i64 %70, 4
  %72 = load i32, i32* %5, align 4
  %73 = ashr i32 %72, 32
  %74 = load i32, i32* @UINT32_MAX, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @pci_write_config(i32 %69, i64 %71, i32 %75, i32 4)
  %77 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %78 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i64, i64* @AGP_I965_IFPADDR, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @UINT32_MAX, align 4
  %83 = and i32 %81, %82
  %84 = or i32 %83, 1
  %85 = call i32 @pci_write_config(i32 %79, i64 %80, i32 %84, i32 4)
  br label %86

86:                                               ; preds = %62, %52
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %60, %50
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @agp_i915_chipset_flush_alloc_page(i32, i32, i64) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_chipset_flush_alloc_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i915_chipset_flush_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, i32, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate flush page at 0x%jx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Allocated flush page phys 0x%jx virt %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @agp_i915_chipset_flush_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i915_chipset_flush_alloc_page(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.agp_i810_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.agp_i810_softc* @device_get_softc(i32 %10)
  store %struct.agp_i810_softc* %11, %struct.agp_i810_softc** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %15 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %14, i32 0, i32 0
  store i32 100, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SYS_RES_MEMORY, align 4
  %20 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %21 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = load i32, i32* @RF_ACTIVE, align 4
  %26 = call i32* @BUS_ALLOC_RESOURCE(i32 %17, i32 %18, i32 %19, i32* %21, i64 %22, i64 %23, i32 %24, i32 %25)
  %27 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %28 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %27, i32 0, i32 2
  store i32* %26, i32** %28, align 8
  %29 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %30 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %3
  %34 = load i32, i32* %5, align 4
  %35 = load i64, i64* %6, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %3
  %40 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %41 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @rman_get_virtual(i32* %42)
  %44 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %45 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i64, i64* @bootverbose, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %51 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @rman_get_start(i32* %52)
  %54 = trunc i64 %53 to i32
  %55 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %8, align 8
  %56 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %48, %39
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %33
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32* @BUS_ALLOC_RESOURCE(i32, i32, i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @rman_get_virtual(i32*) #1

declare dso_local i64 @rman_get_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

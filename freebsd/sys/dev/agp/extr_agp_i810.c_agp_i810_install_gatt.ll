; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_install_gatt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_i810.c_agp_i810_install_gatt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_i810_softc = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32* }

@AGP_I810_DRT = common dso_local global i32 0, align 4
@AGP_I810_DRT_POPULATED = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_WRITE_COMBINING = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"contiguous allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AGP_I810_PGTBL_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agp_i810_install_gatt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_i810_install_gatt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_i810_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.agp_i810_softc* @device_get_softc(i32 %5)
  store %struct.agp_i810_softc* %6, %struct.agp_i810_softc** %4, align 8
  %7 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %8 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AGP_I810_DRT, align 4
  %13 = call i32 @bus_read_1(i32 %11, i32 %12)
  %14 = load i32, i32* @AGP_I810_DRT_POPULATED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %19 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %18, i32 0, i32 0
  store i32 4194304, i32* %19, align 8
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %22 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @VM_MEMATTR_WRITE_COMBINING, align 4
  %29 = call i64 @kmem_alloc_contig(i32 65536, i32 %26, i32 0, i32 -1, i32 %27, i32 0, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %33 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32* %31, i32** %35, align 8
  %36 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %37 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %23
  %43 = load i64, i64* @bootverbose, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %2, align 4
  br label %75

50:                                               ; preds = %23
  %51 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %52 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = call i32 @vtophys(i32 %56)
  %58 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %59 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 8
  %62 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %63 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AGP_I810_PGTBL_CTL, align 4
  %68 = load %struct.agp_i810_softc*, %struct.agp_i810_softc** %4, align 8
  %69 = getelementptr inbounds %struct.agp_i810_softc, %struct.agp_i810_softc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, 1
  %74 = call i32 @bus_write_4(i32 %66, i32 %67, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %50, %48
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.agp_i810_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtophys(i32) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

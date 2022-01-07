; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_teardown_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_fire.c_fire_teardown_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.resource = type { i32 }
%struct.fire_softc = type { i32*, i64, i64, i64, i32 }

@FO_PCI_MSI_MAP_BASE = common dso_local global i64 0, align 8
@FO_PCI_MSI_MAP_V = common dso_local global i32 0, align 4
@FO_PCI_EQ_CTRL_CLR_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_CTRL_CLR_COVERR = common dso_local global i32 0, align 4
@FO_PCI_EQ_CTRL_CLR_E2I = common dso_local global i32 0, align 4
@FO_PCI_EQ_CTRL_CLR_DIS = common dso_local global i32 0, align 4
@FO_PCI_EQ_TL_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_TL_SHFT = common dso_local global i32 0, align 4
@FO_PCI_EQ_TL_MASK = common dso_local global i32 0, align 4
@FO_PCI_EQ_HD_BASE = common dso_local global i64 0, align 8
@FO_PCI_EQ_HD_SHFT = common dso_local global i32 0, align 4
@FO_PCI_EQ_HD_MASK = common dso_local global i32 0, align 4
@fire_ic = common dso_local global i32 0, align 4
@intr_vectors = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i8*)* @fire_teardown_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_teardown_intr(i32 %0, i32 %1, %struct.resource* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.fire_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.resource* %2, %struct.resource** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.fire_softc* @device_get_softc(i32 %15)
  store %struct.fire_softc* %16, %struct.fire_softc** %10, align 8
  %17 = load %struct.resource*, %struct.resource** %8, align 8
  %18 = call i64 @rman_get_rid(%struct.resource* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %127

20:                                               ; preds = %4
  %21 = load %struct.resource*, %struct.resource** %8, align 8
  %22 = call i32 @rman_get_start(%struct.resource* %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %24 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %29 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %27, %30
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %35 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %40 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = call i64 @INTMAP_VEC(i32 %36, i64 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %45 = getelementptr inbounds %struct.fire_softc, %struct.fire_softc* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %14, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %51, 3
  store i32 %52, i32* %13, align 4
  %53 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %54 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %59 = load i64, i64* @FO_PCI_MSI_MAP_BASE, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = call i32 @FIRE_PCI_READ_8(%struct.fire_softc* %58, i64 %62)
  %64 = load i32, i32* @FO_PCI_MSI_MAP_V, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %53, i64 %57, i32 %66)
  %68 = load i32, i32* %14, align 4
  %69 = shl i32 %68, 3
  store i32 %69, i32* %14, align 4
  %70 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %71 = load i64, i64* @FO_PCI_EQ_CTRL_CLR_BASE, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = load i32, i32* @FO_PCI_EQ_CTRL_CLR_COVERR, align 4
  %76 = load i32, i32* @FO_PCI_EQ_CTRL_CLR_E2I, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @FO_PCI_EQ_CTRL_CLR_DIS, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %70, i64 %74, i32 %79)
  %81 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %82 = load i64, i64* @FO_PCI_EQ_TL_BASE, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32, i32* @FO_PCI_EQ_TL_SHFT, align 4
  %87 = shl i32 0, %86
  %88 = load i32, i32* @FO_PCI_EQ_TL_MASK, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %81, i64 %85, i32 %89)
  %91 = load %struct.fire_softc*, %struct.fire_softc** %10, align 8
  %92 = load i64, i64* @FO_PCI_EQ_HD_BASE, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = load i32, i32* @FO_PCI_EQ_HD_SHFT, align 4
  %97 = shl i32 0, %96
  %98 = load i32, i32* @FO_PCI_EQ_HD_MASK, align 4
  %99 = and i32 %97, %98
  %100 = call i32 @FIRE_PCI_WRITE_8(%struct.fire_softc* %91, i64 %95, i32 %99)
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intr_vectors, align 8
  %102 = load i64, i64* %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i32* @fire_ic, i32** %104, align 8
  %105 = load %struct.resource*, %struct.resource** %8, align 8
  %106 = load i64, i64* %11, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @rman_set_start(%struct.resource* %105, i32 %107)
  %109 = load %struct.resource*, %struct.resource** %8, align 8
  %110 = load i64, i64* %11, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @rman_set_end(%struct.resource* %109, i32 %111)
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.resource*, %struct.resource** %8, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = call i32 @bus_generic_teardown_intr(i32 %113, i32 %114, %struct.resource* %115, i8* %116)
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %13, align 4
  %119 = ashr i32 %118, 3
  store i32 %119, i32* %13, align 4
  %120 = load %struct.resource*, %struct.resource** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call i32 @rman_set_start(%struct.resource* %120, i32 %121)
  %123 = load %struct.resource*, %struct.resource** %8, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @rman_set_end(%struct.resource* %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %5, align 4
  br label %133

127:                                              ; preds = %4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.resource*, %struct.resource** %8, align 8
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @bus_generic_teardown_intr(i32 %128, i32 %129, %struct.resource* %130, i8* %131)
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %127, %20
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.fire_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_get_rid(%struct.resource*) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @INTMAP_VEC(i32, i64) #1

declare dso_local i32 @FIRE_PCI_WRITE_8(%struct.fire_softc*, i64, i32) #1

declare dso_local i32 @FIRE_PCI_READ_8(%struct.fire_softc*, i64) #1

declare dso_local i32 @rman_set_start(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_end(%struct.resource*, i32) #1

declare dso_local i32 @bus_generic_teardown_intr(i32, i32, %struct.resource*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

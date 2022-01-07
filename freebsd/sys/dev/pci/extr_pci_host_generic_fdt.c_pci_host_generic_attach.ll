; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_pci_host_generic_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_fdt.c_pci_host_generic_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_fdt_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"parsing FDT for ECAM%d:\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-coherent\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Bus is%s cache-coherent\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4
@FLAG_MEM = common dso_local global i32 0, align 4
@FLAG_IO = common dso_local global i32 0, align 4
@PCI_IO_WINDOW_OFFSET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"rman_manage_region() failed.error = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"pci\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_host_generic_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pcie_fdt_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.generic_pcie_fdt_softc* @device_get_softc(i32 %11)
  store %struct.generic_pcie_fdt_softc* %12, %struct.generic_pcie_fdt_softc** %4, align 8
  %13 = load i64, i64* @bootverbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %18 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %25 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %24, i32 0, i32 1
  %26 = call i64 @parse_pci_mem_ranges(i32 %23, %struct.TYPE_4__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %2, align 4
  br label %192

30:                                               ; preds = %22
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @generic_pcie_ofw_bus_attach(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %192

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @ofw_bus_get_node(i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %40 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @OF_hasprop(i32 %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %48 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 %46, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load i64, i64* @bootverbose, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %56 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %62 = call i32 (i32, i8*, ...) @device_printf(i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %53, %50
  %64 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %65 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  store i64 0, i64* %66, align 8
  %67 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %68 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 2
  store i32 255, i32* %69, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @pci_host_generic_core_attach(i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %63
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %192

76:                                               ; preds = %63
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %180, %76
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %183

81:                                               ; preds = %77
  %82 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %83 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  store i64 %90, i64* %5, align 8
  %91 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %92 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 5
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %6, align 8
  %100 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %101 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %7, align 8
  %109 = load i64, i64* %5, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %81
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %81
  br label %180

115:                                              ; preds = %111
  %116 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %117 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FLAG_MEM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %115
  %129 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %130 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 3
  %132 = load i64, i64* %6, align 8
  %133 = load i64, i64* %6, align 8
  %134 = load i64, i64* %7, align 8
  %135 = add nsw i64 %133, %134
  %136 = sub nsw i64 %135, 1
  %137 = call i32 @rman_manage_region(i32* %131, i64 %132, i64 %136)
  store i32 %137, i32* %9, align 4
  br label %167

138:                                              ; preds = %115
  %139 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %140 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @FLAG_IO, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %138
  %152 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %153 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* @PCI_IO_WINDOW_OFFSET, align 8
  %157 = add nsw i64 %155, %156
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* @PCI_IO_WINDOW_OFFSET, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i64, i64* %7, align 8
  %162 = add nsw i64 %160, %161
  %163 = sub nsw i64 %162, 1
  %164 = call i32 @rman_manage_region(i32* %154, i64 %157, i64 %163)
  store i32 %164, i32* %9, align 4
  br label %166

165:                                              ; preds = %138
  br label %180

166:                                              ; preds = %151
  br label %167

167:                                              ; preds = %166, %128
  %168 = load i32, i32* %9, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %167
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %9, align 4
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %171, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %172)
  %174 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %175 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = call i32 @rman_fini(i32* %176)
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %2, align 4
  br label %192

179:                                              ; preds = %167
  br label %180

180:                                              ; preds = %179, %165, %114
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %77

183:                                              ; preds = %77
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.generic_pcie_fdt_softc*, %struct.generic_pcie_fdt_softc** %4, align 8
  %186 = getelementptr inbounds %struct.generic_pcie_fdt_softc, %struct.generic_pcie_fdt_softc* %185, i32 0, i32 0
  %187 = call i32 @ofw_bus_setup_iinfo(i32 %184, i32* %186, i32 4)
  %188 = load i32, i32* %3, align 4
  %189 = call i32 @device_add_child(i32 %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  %190 = load i32, i32* %3, align 4
  %191 = call i32 @bus_generic_attach(i32 %190)
  store i32 %191, i32* %2, align 4
  br label %192

192:                                              ; preds = %183, %170, %74, %34, %28
  %193 = load i32, i32* %2, align 4
  ret i32 %193
}

declare dso_local %struct.generic_pcie_fdt_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @parse_pci_mem_ranges(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @generic_pcie_ofw_bus_attach(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_hasprop(i32, i8*) #1

declare dso_local i32 @pci_host_generic_core_attach(i32) #1

declare dso_local i32 @rman_manage_region(i32*, i64, i64) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @ofw_bus_setup_iinfo(i32, i32*, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

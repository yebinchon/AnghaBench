; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_pci_host_generic_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_host_generic_acpi.c_pci_host_generic_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pcie_acpi_softc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"_BBN\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"No _BBN, using start bus 0\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_SEG\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"No _SEG for PCI Bus, using segment 0\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1
@pci_host_generic_acpi_parse_resource = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"_CCA\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Bus is%s cache-coherent\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" not\00", align 1
@MAX_RANGES_TUPLES = common dso_local global i32 0, align 4
@FLAG_MEM = common dso_local global i32 0, align 4
@FLAG_IO = common dso_local global i32 0, align 4
@PCI_IO_WINDOW_OFFSET = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [40 x i8] c"rman_manage_region() failed.error = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pci_host_generic_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_host_generic_acpi_attach(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.generic_pcie_acpi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %12 = load i64, i64* %3, align 8
  %13 = call %struct.generic_pcie_acpi_softc* @device_get_softc(i64 %12)
  store %struct.generic_pcie_acpi_softc* %13, %struct.generic_pcie_acpi_softc** %4, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @acpi_get_handle(i64 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %18 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = call i32 @acpi_GetInteger(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 (i64, i8*, ...) @device_printf(i64 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 5
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %33 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  %35 = call i32 @acpi_GetInteger(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load i64, i64* %3, align 8
  %41 = call i32 (i64, i8*, ...) @device_printf(i64 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %39, %30
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @pci_host_generic_acpi_parse_resource, align 4
  %48 = load i64, i64* %3, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @AcpiWalkResources(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %47, i8* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @ENXIO, align 4
  store i32 %55, i32* %2, align 4
  br label %206

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = call i32 @acpi_GetInteger(i32 %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64* %60)
  %62 = call i64 @ACPI_FAILURE(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i64, i64* %3, align 8
  %73 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %74 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0)
  %80 = call i32 (i64, i8*, ...) @device_printf(i64 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %71, %68
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @pci_host_acpi_get_ecam_resource(i64 %82)
  %84 = load i64, i64* %3, align 8
  %85 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %85, i32 0, i32 1
  %87 = call i32 @acpi_pcib_fetch_prt(i64 %84, i32* %86)
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @pci_host_generic_core_attach(i64 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %2, align 4
  br label %206

94:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %198, %94
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @MAX_RANGES_TUPLES, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %201

99:                                               ; preds = %95
  %100 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %101 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %6, align 8
  %109 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %110 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %7, align 8
  %118 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %119 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %6, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %99
  %130 = load i64, i64* %8, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129, %99
  br label %198

133:                                              ; preds = %129
  %134 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %135 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @FLAG_MEM, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %133
  %147 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %148 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* %7, align 8
  %152 = load i64, i64* %8, align 8
  %153 = add nsw i64 %151, %152
  %154 = sub nsw i64 %153, 1
  %155 = call i32 @rman_manage_region(i32* %149, i64 %150, i64 %154)
  store i32 %155, i32* %10, align 4
  br label %185

156:                                              ; preds = %133
  %157 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %158 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load %struct.TYPE_3__*, %struct.TYPE_3__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @FLAG_IO, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %156
  %170 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %171 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i64, i64* %7, align 8
  %174 = load i64, i64* @PCI_IO_WINDOW_OFFSET, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i64, i64* %7, align 8
  %177 = load i64, i64* @PCI_IO_WINDOW_OFFSET, align 8
  %178 = add nsw i64 %176, %177
  %179 = load i64, i64* %8, align 8
  %180 = add nsw i64 %178, %179
  %181 = sub nsw i64 %180, 1
  %182 = call i32 @rman_manage_region(i32* %172, i64 %175, i64 %181)
  store i32 %182, i32* %10, align 4
  br label %184

183:                                              ; preds = %156
  br label %198

184:                                              ; preds = %169
  br label %185

185:                                              ; preds = %184, %146
  %186 = load i32, i32* %10, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load i64, i64* %3, align 8
  %190 = load i32, i32* %10, align 4
  %191 = call i32 (i64, i8*, ...) @device_printf(i64 %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %190)
  %192 = load %struct.generic_pcie_acpi_softc*, %struct.generic_pcie_acpi_softc** %4, align 8
  %193 = getelementptr inbounds %struct.generic_pcie_acpi_softc, %struct.generic_pcie_acpi_softc* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = call i32 @rman_fini(i32* %194)
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %2, align 4
  br label %206

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %183, %132
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %95

201:                                              ; preds = %95
  %202 = load i64, i64* %3, align 8
  %203 = call i32 @device_add_child(i64 %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  %204 = load i64, i64* %3, align 8
  %205 = call i32 @bus_generic_attach(i64 %204)
  store i32 %205, i32* %2, align 4
  br label %206

206:                                              ; preds = %201, %188, %92, %54
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local %struct.generic_pcie_acpi_softc* @device_get_softc(i64) #1

declare dso_local i32 @acpi_get_handle(i64) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i64, i8*, ...) #1

declare dso_local i32 @AcpiWalkResources(i32, i8*, i32, i8*) #1

declare dso_local i32 @pci_host_acpi_get_ecam_resource(i64) #1

declare dso_local i32 @acpi_pcib_fetch_prt(i64, i32*) #1

declare dso_local i32 @pci_host_generic_core_attach(i64) #1

declare dso_local i32 @rman_manage_region(i32*, i64, i64) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @device_add_child(i64, i8*, i32) #1

declare dso_local i32 @bus_generic_attach(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

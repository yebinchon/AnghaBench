; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_pci_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_pci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebus_softc = type { i32, i64, %struct.ebus_rinfo*, i32 }
%struct.ebus_rinfo = type { %struct.resource*, i32, %struct.TYPE_3__ }
%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.isa_ranges = type { i64 }

@EBUS_PCI = common dso_local global i32 0, align 4
@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_SERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_PERRESPEN = common dso_local global i32 0, align 4
@PCIM_CMD_BUSMASTEREN = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIR_CACHELNSZ = common dso_local global i32 0, align 4
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"could not get ranges property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"could not allocate range resource %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"mismatch in start of range %d (0x%lx/0x%lx)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"mismatch in size of range %d (0x%lx/0x%x)\0A\00", align 1
@RMAN_ARRAY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"EBus range\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"could not initialize rman for range %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ebus_pci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_pci_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebus_softc*, align 8
  %5 = alloca %struct.ebus_rinfo*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.isa_ranges*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.ebus_softc* @device_get_softc(i32 %12)
  store %struct.ebus_softc* %13, %struct.ebus_softc** %4, align 8
  %14 = load i32, i32* @EBUS_PCI, align 4
  %15 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PCIR_COMMAND, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @PCIR_COMMAND, align 4
  %23 = call i32 @pci_read_config(i32 %21, i32 %22, i32 2)
  %24 = load i32, i32* @PCIM_CMD_SERRESPEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @PCIM_CMD_PERRESPEN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @PCIM_CMD_BUSMASTEREN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @pci_write_config(i32 %19, i32 %20, i32 %31, i32 2)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @PCIR_CACHELNSZ, align 4
  %35 = call i32 @pci_write_config(i32 %33, i32 %34, i32 16, i32 1)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @PCIR_LATTIMER, align 4
  %38 = call i32 @pci_write_config(i32 %36, i32 %37, i32 64, i32 1)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @ofw_bus_get_node(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %42, i32 0, i32 1
  %44 = call i32 @OF_getprop_alloc_multi(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 8, i64* %43)
  %45 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %1
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %216

55:                                               ; preds = %1
  %56 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = mul i64 32, %59
  %61 = trunc i64 %60 to i32
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = load i32, i32* @M_WAITOK, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.ebus_rinfo* @malloc(i32 %61, i32 %62, i32 %65)
  %67 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %68 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %67, i32 0, i32 2
  store %struct.ebus_rinfo* %66, %struct.ebus_rinfo** %68, align 8
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %158, %55
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %161

75:                                               ; preds = %69
  %76 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %77 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %76, i32 0, i32 2
  %78 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %78, i64 %80
  store %struct.ebus_rinfo* %81, %struct.ebus_rinfo** %5, align 8
  %82 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %83 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to %struct.isa_ranges*
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.isa_ranges, %struct.isa_ranges* %85, i64 %87
  store %struct.isa_ranges* %88, %struct.isa_ranges** %7, align 8
  %89 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %90 = call i32 @ofw_isa_range_restype(%struct.isa_ranges* %89)
  %91 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %92 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @PCIR_BAR(i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %97 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @RF_ACTIVE, align 4
  %100 = call %struct.resource* @bus_alloc_resource_any(i32 %95, i32 %98, i32* %11, i32 %99)
  store %struct.resource* %100, %struct.resource** %6, align 8
  %101 = load %struct.resource*, %struct.resource** %6, align 8
  %102 = icmp eq %struct.resource* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %75
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %166

107:                                              ; preds = %75
  %108 = load %struct.resource*, %struct.resource** %6, align 8
  %109 = call i64 @rman_get_start(%struct.resource* %108)
  %110 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %111 = call i64 @ISA_RANGE_PHYS(%struct.isa_ranges* %110)
  %112 = icmp ne i64 %109, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.resource*, %struct.resource** %6, align 8
  %117 = call i64 @rman_get_start(%struct.resource* %116)
  %118 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %119 = call i64 @ISA_RANGE_PHYS(%struct.isa_ranges* %118)
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %115, i64 %117, i64 %119)
  br label %166

121:                                              ; preds = %107
  %122 = load %struct.resource*, %struct.resource** %6, align 8
  %123 = call i64 @rman_get_size(%struct.resource* %122)
  %124 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %125 = getelementptr inbounds %struct.isa_ranges, %struct.isa_ranges* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %123, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.resource*, %struct.resource** %6, align 8
  %132 = call i64 @rman_get_size(%struct.resource* %131)
  %133 = load %struct.isa_ranges*, %struct.isa_ranges** %7, align 8
  %134 = getelementptr inbounds %struct.isa_ranges, %struct.isa_ranges* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %130, i64 %132, i64 %135)
  br label %166

137:                                              ; preds = %121
  %138 = load %struct.resource*, %struct.resource** %6, align 8
  %139 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %140 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %139, i32 0, i32 0
  store %struct.resource* %138, %struct.resource** %140, align 8
  %141 = load i32, i32* @RMAN_ARRAY, align 4
  %142 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %143 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 8
  %145 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %146 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %147, align 8
  %148 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %149 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %148, i32 0, i32 2
  %150 = load %struct.resource*, %struct.resource** %6, align 8
  %151 = call i64 @rman_init_from_resource(%struct.TYPE_3__* %149, %struct.resource* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %137
  %154 = load i32, i32* %3, align 4
  %155 = load i32, i32* %10, align 4
  %156 = call i32 (i32, i8*, ...) @device_printf(i32 %154, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %155)
  br label %166

157:                                              ; preds = %137
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  br label %69

161:                                              ; preds = %69
  %162 = load i32, i32* %3, align 4
  %163 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @ebus_attach(i32 %162, %struct.ebus_softc* %163, i32 %164)
  store i32 %165, i32* %2, align 4
  br label %216

166:                                              ; preds = %153, %128, %113, %103
  %167 = load i32, i32* %10, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %202, %166
  %169 = load i32, i32* %9, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %168
  %172 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %172, i32 0, i32 2
  %174 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %174, i64 %176
  store %struct.ebus_rinfo* %177, %struct.ebus_rinfo** %5, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %185

181:                                              ; preds = %171
  %182 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %183 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %182, i32 0, i32 2
  %184 = call i32 @rman_fini(%struct.TYPE_3__* %183)
  br label %185

185:                                              ; preds = %181, %171
  %186 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %187 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %186, i32 0, i32 0
  %188 = load %struct.resource*, %struct.resource** %187, align 8
  %189 = icmp ne %struct.resource* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load i32, i32* %3, align 4
  %192 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %193 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = call i32 @PCIR_BAR(i32 %195)
  %197 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %5, align 8
  %198 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %197, i32 0, i32 0
  %199 = load %struct.resource*, %struct.resource** %198, align 8
  %200 = call i32 @bus_release_resource(i32 %191, i32 %194, i32 %196, %struct.resource* %199)
  br label %201

201:                                              ; preds = %190, %185
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %9, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %9, align 4
  br label %168

205:                                              ; preds = %168
  %206 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %207 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %206, i32 0, i32 2
  %208 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %207, align 8
  %209 = load i32, i32* @M_DEVBUF, align 4
  %210 = call i32 @free(%struct.ebus_rinfo* %208, i32 %209)
  %211 = load %struct.ebus_softc*, %struct.ebus_softc** %4, align 8
  %212 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = call i32 @OF_prop_free(i64 %213)
  %215 = load i32, i32* @ENXIO, align 4
  store i32 %215, i32* %2, align 4
  br label %216

216:                                              ; preds = %205, %161, %51
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local %struct.ebus_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.ebus_rinfo* @malloc(i32, i32, i32) #1

declare dso_local i32 @ofw_isa_range_restype(%struct.isa_ranges*) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @ISA_RANGE_PHYS(%struct.isa_ranges*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i64 @rman_init_from_resource(%struct.TYPE_3__*, %struct.resource*) #1

declare dso_local i32 @ebus_attach(i32, %struct.ebus_softc*, i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_3__*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @free(%struct.ebus_rinfo*, i32) #1

declare dso_local i32 @OF_prop_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

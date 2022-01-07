; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofwpci.c_ofw_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofw_pci_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.ofw_pci_range*, i32, i64, i64, i32, %struct.ofw_pci_range*, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.ofw_pci_range = type { i32, i64, i64 }
%struct.ofw_pci_cell_info = type { i32, i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bus-range\00", align 1
@OFW_PCI_QUIRK_RANGES_ON_CHILDREN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"range count mismatch\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"could not getranges\0A\00", align 1
@RMAN_ARRAY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"PCI I/O Ports\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"rman_init() failed. error = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"PCI Non Prefetchable Memory\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"PCI Prefetchable Memory\00", align 1
@OFW_PCI_PHYS_HI_SPACEMASK = common dso_local global i32 0, align 4
@OFW_PCI_PHYS_HI_PREFETCHABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [55 x i8] c"rman_manage_region(%x, %#jx, %#jx) failed. error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ofw_pci_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofw_pci_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca %struct.ofw_pci_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ofw_pci_cell_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @ofw_bus_get_node(i32 %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call %struct.ofw_pci_softc* @device_get_softc(i32 %16)
  store %struct.ofw_pci_softc* %17, %struct.ofw_pci_softc** %4, align 8
  %18 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %21 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %20, i32 0, i32 8
  store %struct.ofw_pci_range* null, %struct.ofw_pci_range** %21, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_unit(i32 %22)
  %24 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %25 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @M_DEVBUF, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = load i32, i32* @M_ZERO, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @malloc(i32 24, i32 %26, i32 %29)
  %31 = bitcast i8* %30 to %struct.ofw_pci_cell_info*
  store %struct.ofw_pci_cell_info* %31, %struct.ofw_pci_cell_info** %10, align 8
  %32 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %10, align 8
  %33 = bitcast %struct.ofw_pci_cell_info* %32 to %struct.ofw_pci_range*
  %34 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %35 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %34, i32 0, i32 13
  store %struct.ofw_pci_range* %33, %struct.ofw_pci_range** %35, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %38 = call i32 @OF_getencprop(i64 %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64* %37, i32 16)
  %39 = icmp ne i32 %38, 8
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 0, i64* %41, align 16
  br label %42

42:                                               ; preds = %40, %1
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %45 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %44, i32 0, i32 12
  store i32 %43, i32* %45, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %47, i32 0, i32 11
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %50 = load i64, i64* %49, align 16
  %51 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %51, i32 0, i32 10
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @OFW_PCI_QUIRK_RANGES_ON_CHILDREN, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %137

59:                                               ; preds = %42
  %60 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %61 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %60, i32 0, i32 2
  store i32 0, i32* %61, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @OF_child(i64 %62)
  store i64 %63, i64* %11, align 8
  br label %64

64:                                               ; preds = %82, %59
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %64
  %68 = load i64, i64* %11, align 8
  %69 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %10, align 8
  %70 = bitcast %struct.ofw_pci_cell_info* %69 to %struct.ofw_pci_range*
  %71 = call i8* @ofw_pci_nranges(i64 %68, %struct.ofw_pci_range* %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %78 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = call i64 @OF_peer(i64 %83)
  store i64 %84, i64* %11, align 8
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %87 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @ENXIO, align 4
  store i32 %91, i32* %9, align 4
  br label %338

92:                                               ; preds = %85
  %93 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 24
  %98 = trunc i64 %97 to i32
  %99 = load i32, i32* @M_DEVBUF, align 4
  %100 = load i32, i32* @M_WAITOK, align 4
  %101 = call i8* @malloc(i32 %98, i32 %99, i32 %100)
  %102 = bitcast i8* %101 to %struct.ofw_pci_range*
  %103 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %103, i32 0, i32 8
  store %struct.ofw_pci_range* %102, %struct.ofw_pci_range** %104, align 8
  store i32 0, i32* %13, align 4
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @OF_child(i64 %105)
  store i64 %106, i64* %11, align 8
  br label %107

107:                                              ; preds = %126, %92
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %113 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %112, i32 0, i32 8
  %114 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %114, i64 %116
  %118 = call i32 @ofw_pci_fill_ranges(i64 %111, %struct.ofw_pci_range* %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, %122
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %110
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @OF_peer(i64 %127)
  store i64 %128, i64* %11, align 8
  br label %107

129:                                              ; preds = %107
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %130, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @KASSERT(i32 %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %171

137:                                              ; preds = %42
  %138 = load i64, i64* %5, align 8
  %139 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %10, align 8
  %140 = bitcast %struct.ofw_pci_cell_info* %139 to %struct.ofw_pci_range*
  %141 = call i8* @ofw_pci_nranges(i64 %138, %struct.ofw_pci_range* %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %144 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %146 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = icmp sle i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %137
  %150 = load i32, i32* %3, align 4
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %150, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %9, align 4
  br label %338

153:                                              ; preds = %137
  %154 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = mul i64 %157, 24
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* @M_DEVBUF, align 4
  %161 = load i32, i32* @M_WAITOK, align 4
  %162 = call i8* @malloc(i32 %159, i32 %160, i32 %161)
  %163 = bitcast i8* %162 to %struct.ofw_pci_range*
  %164 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %165 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %164, i32 0, i32 8
  store %struct.ofw_pci_range* %163, %struct.ofw_pci_range** %165, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %168 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %167, i32 0, i32 8
  %169 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %168, align 8
  %170 = call i32 @ofw_pci_fill_ranges(i64 %166, %struct.ofw_pci_range* %169)
  br label %171

171:                                              ; preds = %153, %129
  %172 = load i8*, i8** @RMAN_ARRAY, align 8
  %173 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %174 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %173, i32 0, i32 7
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  store i8* %172, i8** %175, align 8
  %176 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %177 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %176, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8** %178, align 8
  %179 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %180 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %179, i32 0, i32 7
  %181 = call i32 @rman_init(%struct.TYPE_4__* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %171
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 (i32, i8*, ...) @device_printf(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %186)
  br label %338

188:                                              ; preds = %171
  %189 = load i8*, i8** @RMAN_ARRAY, align 8
  %190 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %191 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %190, i32 0, i32 6
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  store i8* %189, i8** %192, align 8
  %193 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %194 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %195, align 8
  %196 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %197 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %196, i32 0, i32 6
  %198 = call i32 @rman_init(%struct.TYPE_4__* %197)
  store i32 %198, i32* %9, align 4
  %199 = load i32, i32* %9, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %188
  %202 = load i32, i32* %3, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i32, i8*, ...) @device_printf(i32 %202, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %203)
  br label %338

205:                                              ; preds = %188
  %206 = load i8*, i8** @RMAN_ARRAY, align 8
  %207 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %208 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 1
  store i8* %206, i8** %209, align 8
  %210 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %211 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8** %212, align 8
  %213 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %214 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %213, i32 0, i32 5
  %215 = call i32 @rman_init(%struct.TYPE_4__* %214)
  store i32 %215, i32* %9, align 4
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %205
  %219 = load i32, i32* %3, align 4
  %220 = load i32, i32* %9, align 4
  %221 = call i32 (i32, i8*, ...) @device_printf(i32 %219, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %220)
  br label %338

222:                                              ; preds = %205
  store i32 0, i32* %8, align 4
  br label %223

223:                                              ; preds = %330, %222
  %224 = load i32, i32* %8, align 4
  %225 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %226 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %333

229:                                              ; preds = %223
  store i32 0, i32* %9, align 4
  %230 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %231 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %230, i32 0, i32 8
  %232 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %231, align 8
  %233 = load i32, i32* %8, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %232, i64 %234
  store %struct.ofw_pci_range* %235, %struct.ofw_pci_range** %7, align 8
  %236 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %237 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %8, align 4
  %240 = shl i32 1, %239
  %241 = and i32 %238, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %229
  br label %330

244:                                              ; preds = %229
  %245 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %246 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %249 = and i32 %247, %248
  switch i32 %249, label %306 [
    i32 131, label %250
    i32 130, label %251
    i32 129, label %266
    i32 128, label %266
  ]

250:                                              ; preds = %244
  br label %306

251:                                              ; preds = %244
  %252 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %253 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %252, i32 0, i32 7
  %254 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %255 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %258 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %261 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %259, %262
  %264 = sub nsw i64 %263, 1
  %265 = call i32 @rman_manage_region(%struct.TYPE_4__* %253, i64 %256, i64 %264)
  store i32 %265, i32* %9, align 4
  br label %306

266:                                              ; preds = %244, %244
  %267 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %268 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @OFW_PCI_PHYS_HI_PREFETCHABLE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %290

273:                                              ; preds = %266
  %274 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %275 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %274, i32 0, i32 4
  store i32 1, i32* %275, align 8
  %276 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %277 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %276, i32 0, i32 5
  %278 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %279 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %282 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %285 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = add nsw i64 %283, %286
  %288 = sub nsw i64 %287, 1
  %289 = call i32 @rman_manage_region(%struct.TYPE_4__* %277, i64 %280, i64 %288)
  store i32 %289, i32* %9, align 4
  br label %305

290:                                              ; preds = %266
  %291 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %292 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %291, i32 0, i32 6
  %293 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %294 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %293, i32 0, i32 2
  %295 = load i64, i64* %294, align 8
  %296 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %297 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %300 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %299, i32 0, i32 1
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %298, %301
  %303 = sub nsw i64 %302, 1
  %304 = call i32 @rman_manage_region(%struct.TYPE_4__* %292, i64 %295, i64 %303)
  store i32 %304, i32* %9, align 4
  br label %305

305:                                              ; preds = %290, %273
  br label %306

306:                                              ; preds = %244, %305, %251, %250
  %307 = load i32, i32* %9, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %329

309:                                              ; preds = %306
  %310 = load i32, i32* %3, align 4
  %311 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %312 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @OFW_PCI_PHYS_HI_SPACEMASK, align 4
  %315 = and i32 %313, %314
  %316 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %317 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %320 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %319, i32 0, i32 2
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %7, align 8
  %323 = getelementptr inbounds %struct.ofw_pci_range, %struct.ofw_pci_range* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %321, %324
  %326 = sub nsw i64 %325, 1
  %327 = load i32, i32* %9, align 4
  %328 = call i32 (i32, i8*, ...) @device_printf(i32 %310, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %315, i64 %318, i64 %326, i32 %327)
  br label %338

329:                                              ; preds = %306
  br label %330

330:                                              ; preds = %329, %243
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %8, align 4
  br label %223

333:                                              ; preds = %223
  %334 = load i64, i64* %5, align 8
  %335 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %336 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %335, i32 0, i32 9
  %337 = call i32 @ofw_bus_setup_iinfo(i64 %334, i32* %336, i32 4)
  store i32 0, i32* %2, align 4
  br label %358

338:                                              ; preds = %309, %218, %201, %184, %149, %90
  %339 = load %struct.ofw_pci_cell_info*, %struct.ofw_pci_cell_info** %10, align 8
  %340 = bitcast %struct.ofw_pci_cell_info* %339 to %struct.ofw_pci_range*
  %341 = load i32, i32* @M_DEVBUF, align 4
  %342 = call i32 @free(%struct.ofw_pci_range* %340, i32 %341)
  %343 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %344 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %343, i32 0, i32 8
  %345 = load %struct.ofw_pci_range*, %struct.ofw_pci_range** %344, align 8
  %346 = load i32, i32* @M_DEVBUF, align 4
  %347 = call i32 @free(%struct.ofw_pci_range* %345, i32 %346)
  %348 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %349 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %348, i32 0, i32 7
  %350 = call i32 @rman_fini(%struct.TYPE_4__* %349)
  %351 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %352 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %351, i32 0, i32 6
  %353 = call i32 @rman_fini(%struct.TYPE_4__* %352)
  %354 = load %struct.ofw_pci_softc*, %struct.ofw_pci_softc** %4, align 8
  %355 = getelementptr inbounds %struct.ofw_pci_softc, %struct.ofw_pci_softc* %354, i32 0, i32 5
  %356 = call i32 @rman_fini(%struct.TYPE_4__* %355)
  %357 = load i32, i32* %9, align 4
  store i32 %357, i32* %2, align 4
  br label %358

358:                                              ; preds = %338, %333
  %359 = load i32, i32* %2, align 4
  ret i32 %359
}

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local %struct.ofw_pci_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getencprop(i64, i8*, i64*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i8* @ofw_pci_nranges(i64, %struct.ofw_pci_range*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @ofw_pci_fill_ranges(i64, %struct.ofw_pci_range*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @rman_init(%struct.TYPE_4__*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_4__*, i64, i64) #1

declare dso_local i32 @ofw_bus_setup_iinfo(i64, i32*, i32) #1

declare dso_local i32 @free(%struct.ofw_pci_range*, i32) #1

declare dso_local i32 @rman_fini(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

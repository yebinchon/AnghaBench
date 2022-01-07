; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, %struct.ntb_plx_mw_info*, i32 }
%struct.ntb_plx_mw_info = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate configuration BAR.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"%u A-LUT entries\0A\00", align 1
@PLX_MAX_SPLIT = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_TYPE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_64 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"hint.%s.%d.b2b\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"NTB-to-Root Port mode (Link Interface)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"NTB-to-Root Port mode (Virtual Interface)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"NTB-to-NTB (back-to-back) mode\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"No memory window BARs enabled.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"hint.%s.%d.split\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Split value is too high (%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't split with disabled A-LUT\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Can't split disabled BAR2\0A\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"Can't split BAR2 consumed by B2B\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Splitting BAR2 into %d memory windows\0A\00", align 1
@PLX_NUM_SPAD = common dso_local global i32 0, align 4
@PLX_NUM_SPAD_PATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ntb_plx_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_plx_softc*, align 8
  %5 = alloca %struct.ntb_plx_mw_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ntb_plx_softc* @device_get_softc(i32 %11)
  store %struct.ntb_plx_softc* %12, %struct.ntb_plx_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %14, i32 0, i32 17
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pci_read_config(i32 %16, i32 3212, i32 4)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, -2147483648
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = call i32 @PCIR_BAR(i32 0)
  %31 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @SYS_RES_MEMORY, align 4
  %35 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %35, i32 0, i32 2
  %37 = load i32, i32* @RF_ACTIVE, align 4
  %38 = call i8* @bus_alloc_resource_any(i32 %33, i32 %34, i32* %36, i32 %37)
  %39 = bitcast i8* %38 to i32*
  %40 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %41 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %40, i32 0, i32 13
  store i32* %39, i32** %41, align 8
  %42 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %43 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %42, i32 0, i32 13
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %1
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %487

50:                                               ; preds = %1
  %51 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %51, i32 0, i32 13
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @bus_read_4(i32* %53, i32 864)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %57 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 8, i32 16
  %62 = ashr i32 %55, %61
  %63 = and i32 %62, 31
  %64 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %65 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %9, align 4
  %67 = ashr i32 %66, 30
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %50
  br label %81

71:                                               ; preds = %50
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %74 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = shl i32 1, %75
  %77 = and i32 %72, %76
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 2, i32 0
  br label %81

81:                                               ; preds = %71, %70
  %82 = phi i32 [ 1, %70 ], [ %80, %71 ]
  %83 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %86 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %92 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 128, %93
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %89, %81
  %97 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %98 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  store i32 2, i32* %7, align 4
  br label %99

99:                                               ; preds = %190, %96
  %100 = load i32, i32* %7, align 4
  %101 = icmp sle i32 %100, 5
  br i1 %101, label %102, label %193

102:                                              ; preds = %99
  %103 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %104 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %103, i32 0, i32 16
  %105 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %104, align 8
  %106 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %107 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %105, i64 %108
  store %struct.ntb_plx_mw_info* %109, %struct.ntb_plx_mw_info** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %112 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %114 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @PCIR_BAR(i32 %115)
  %117 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %118 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* @SYS_RES_MEMORY, align 4
  %121 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %122 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %121, i32 0, i32 1
  %123 = load i32, i32* @RF_ACTIVE, align 4
  %124 = call i8* @bus_alloc_resource_any(i32 %119, i32 %120, i32* %122, i32 %123)
  %125 = bitcast i8* %124 to i32*
  %126 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %127 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %126, i32 0, i32 5
  store i32* %125, i32** %127, align 8
  %128 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %129 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %128, i32 0, i32 5
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %102
  br label %190

133:                                              ; preds = %102
  %134 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %135 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @rman_get_start(i32* %136)
  %138 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %139 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %138, i32 0, i32 7
  store i32 %137, i32* %139, align 4
  %140 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %141 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %140, i32 0, i32 5
  %142 = load i32*, i32** %141, align 8
  %143 = call i32 @rman_get_size(i32* %142)
  %144 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %145 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %147 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @rman_get_virtual(i32* %148)
  %150 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %151 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %150, i32 0, i32 6
  store i32 %149, i32* %151, align 8
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %165, %133
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @PLX_MAX_SPLIT, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %158 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %159 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %158, i32 0, i32 4
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  store i32 %157, i32* %164, align 4
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %8, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %8, align 4
  br label %152

168:                                              ; preds = %152
  %169 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %170 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %170, align 8
  %173 = load i32, i32* %3, align 4
  %174 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %175 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @PCIR_BAR(i32 %176)
  %178 = call i32 @pci_read_config(i32 %173, i32 %177, i32 4)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @PCIM_BAR_MEM_TYPE, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @PCIM_BAR_MEM_64, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %168
  %185 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %186 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %185, i32 0, i32 3
  store i32 1, i32* %186, align 4
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %189

189:                                              ; preds = %184, %168
  br label %190

190:                                              ; preds = %189, %132
  %191 = load i32, i32* %7, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %7, align 4
  br label %99

193:                                              ; preds = %99
  store i32 1, i32* %7, align 4
  %194 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %195 = load i32, i32* %3, align 4
  %196 = call i8* @device_get_name(i32 %195)
  %197 = load i32, i32* %3, align 4
  %198 = call i32 @device_get_unit(i32 %197)
  %199 = call i32 @snprintf(i8* %194, i32 32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %196, i32 %198)
  %200 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %201 = call i32 @TUNABLE_INT_FETCH(i8* %200, i32* %7)
  %202 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %203 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %193
  %207 = load i32, i32* %3, align 4
  %208 = call i32 (i32, i8*, ...) @device_printf(i32 %207, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %209 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %210 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %209, i32 0, i32 6
  store i32 -1, i32* %210, align 8
  br label %262

211:                                              ; preds = %193
  %212 = load i32, i32* %7, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %3, align 4
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %215, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %217 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %218 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %217, i32 0, i32 6
  store i32 -1, i32* %218, align 8
  br label %261

219:                                              ; preds = %211
  %220 = load i32, i32* %3, align 4
  %221 = call i32 (i32, i8*, ...) @device_printf(i32 %220, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %222 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %223 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %222, i32 0, i32 5
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  %227 = load i32, i32* %3, align 4
  %228 = call i32 (i32, i8*, ...) @device_printf(i32 %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %229 = load i32, i32* @ENXIO, align 4
  store i32 %229, i32* %6, align 4
  br label %479

230:                                              ; preds = %219
  %231 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %232 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %233, 1
  %235 = trunc i64 %234 to i32
  %236 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %237 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %236, i32 0, i32 6
  store i32 %235, i32* %237, align 8
  %238 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %239 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %238, i32 0, i32 16
  %240 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %239, align 8
  %241 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %242 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %240, i64 %244
  store %struct.ntb_plx_mw_info* %245, %struct.ntb_plx_mw_info** %5, align 8
  %246 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %247 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp sge i32 %248, 2097152
  br i1 %249, label %250, label %257

250:                                              ; preds = %230
  %251 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %5, align 8
  %252 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = sdiv i32 %253, 2
  %255 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %256 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %255, i32 0, i32 7
  store i32 %254, i32* %256, align 4
  br label %260

257:                                              ; preds = %230
  %258 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %259 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %258, i32 0, i32 7
  store i32 0, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %250
  br label %261

261:                                              ; preds = %260, %214
  br label %262

262:                                              ; preds = %261, %206
  %263 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %264 = load i32, i32* %3, align 4
  %265 = call i8* @device_get_name(i32 %264)
  %266 = load i32, i32* %3, align 4
  %267 = call i32 @device_get_unit(i32 %266)
  %268 = call i32 @snprintf(i8* %263, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %265, i32 %267)
  %269 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %270 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %271 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %270, i32 0, i32 8
  %272 = call i32 @TUNABLE_INT_FETCH(i8* %269, i32* %271)
  %273 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %274 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = icmp sgt i32 %275, 7
  br i1 %276, label %277, label %285

277:                                              ; preds = %262
  %278 = load i32, i32* %3, align 4
  %279 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %280 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 8
  %282 = call i32 (i32, i8*, ...) @device_printf(i32 %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %281)
  %283 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %284 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %283, i32 0, i32 8
  store i32 0, i32* %284, align 8
  br label %359

285:                                              ; preds = %262
  %286 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %287 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %286, i32 0, i32 8
  %288 = load i32, i32* %287, align 8
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %300

290:                                              ; preds = %285
  %291 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %292 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32, i32* %3, align 4
  %297 = call i32 (i32, i8*, ...) @device_printf(i32 %296, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %298 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %299 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %298, i32 0, i32 8
  store i32 0, i32* %299, align 8
  br label %358

300:                                              ; preds = %290, %285
  %301 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %302 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %301, i32 0, i32 8
  %303 = load i32, i32* %302, align 8
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %305, label %323

305:                                              ; preds = %300
  %306 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %307 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %318, label %310

310:                                              ; preds = %305
  %311 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %312 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %311, i32 0, i32 16
  %313 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %312, align 8
  %314 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %313, i64 0
  %315 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 2
  br i1 %317, label %318, label %323

318:                                              ; preds = %310, %305
  %319 = load i32, i32* %3, align 4
  %320 = call i32 (i32, i8*, ...) @device_printf(i32 %319, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %321 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %322 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %321, i32 0, i32 8
  store i32 0, i32* %322, align 8
  br label %357

323:                                              ; preds = %310, %300
  %324 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %325 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 8
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %343

328:                                              ; preds = %323
  %329 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %330 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %329, i32 0, i32 6
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %343

333:                                              ; preds = %328
  %334 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %335 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %334, i32 0, i32 7
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load i32, i32* %3, align 4
  %340 = call i32 (i32, i8*, ...) @device_printf(i32 %339, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %341 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %342 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %341, i32 0, i32 8
  store i32 0, i32* %342, align 8
  br label %356

343:                                              ; preds = %333, %328, %323
  %344 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %345 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 8
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %355

348:                                              ; preds = %343
  %349 = load i32, i32* %3, align 4
  %350 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %351 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %350, i32 0, i32 8
  %352 = load i32, i32* %351, align 8
  %353 = shl i32 1, %352
  %354 = call i32 (i32, i8*, ...) @device_printf(i32 %349, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i32 %353)
  br label %355

355:                                              ; preds = %348, %343
  br label %356

356:                                              ; preds = %355, %338
  br label %357

357:                                              ; preds = %356, %318
  br label %358

358:                                              ; preds = %357, %295
  br label %359

359:                                              ; preds = %358, %277
  %360 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %361 = call i64 @PLX_NTX_OUR_BASE(%struct.ntb_plx_softc* %360)
  %362 = add nsw i64 %361, 3180
  %363 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %364 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %363, i32 0, i32 15
  store i64 %362, i64* %364, align 8
  %365 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %366 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %365, i32 0, i32 14
  store i64 %362, i64* %366, align 8
  %367 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %368 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = mul nsw i32 %369, 8
  %371 = call i32 @PLX_PORT_BASE(i32 %370)
  %372 = add nsw i32 %371, 524
  %373 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %374 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %373, i32 0, i32 10
  store i32 %372, i32* %374, align 8
  %375 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %376 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %375, i32 0, i32 9
  store i32 %372, i32* %376, align 4
  %377 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %378 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %377, i32 0, i32 6
  %379 = load i32, i32* %378, align 8
  %380 = icmp sge i32 %379, 0
  br i1 %380, label %381, label %405

381:                                              ; preds = %359
  %382 = load i32, i32* @PLX_NUM_SPAD, align 4
  %383 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %384 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %383, i32 0, i32 11
  store i32 %382, i32* %384, align 4
  %385 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %386 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %385, i32 0, i32 13
  %387 = load i32*, i32** %386, align 8
  %388 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %389 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %388, i32 0, i32 10
  %390 = load i32, i32* %389, align 8
  %391 = call i32 @bus_write_4(i32* %387, i32 %390, i32 305419896)
  %392 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %393 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %392, i32 0, i32 13
  %394 = load i32*, i32** %393, align 8
  %395 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %396 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %395, i32 0, i32 10
  %397 = load i32, i32* %396, align 8
  %398 = call i32 @bus_read_4(i32* %394, i32 %397)
  %399 = icmp eq i32 %398, 305419896
  br i1 %399, label %400, label %404

400:                                              ; preds = %381
  %401 = load i32, i32* @PLX_NUM_SPAD_PATT, align 4
  %402 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %403 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %402, i32 0, i32 12
  store i32 %401, i32* %403, align 8
  br label %404

404:                                              ; preds = %400, %381
  br label %468

405:                                              ; preds = %359
  %406 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %407 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %426

410:                                              ; preds = %405
  %411 = load i32, i32* @PLX_NUM_SPAD, align 4
  %412 = sdiv i32 %411, 2
  %413 = mul nsw i32 %412, 4
  %414 = sext i32 %413 to i64
  %415 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %416 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %415, i32 0, i32 15
  %417 = load i64, i64* %416, align 8
  %418 = add nsw i64 %417, %414
  store i64 %418, i64* %416, align 8
  %419 = load i32, i32* @PLX_NUM_SPAD_PATT, align 4
  %420 = sdiv i32 %419, 2
  %421 = mul nsw i32 %420, 4
  %422 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %423 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %422, i32 0, i32 10
  %424 = load i32, i32* %423, align 8
  %425 = add nsw i32 %424, %421
  store i32 %425, i32* %423, align 8
  br label %442

426:                                              ; preds = %405
  %427 = load i32, i32* @PLX_NUM_SPAD, align 4
  %428 = sdiv i32 %427, 2
  %429 = mul nsw i32 %428, 4
  %430 = sext i32 %429 to i64
  %431 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %432 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %431, i32 0, i32 14
  %433 = load i64, i64* %432, align 8
  %434 = add nsw i64 %433, %430
  store i64 %434, i64* %432, align 8
  %435 = load i32, i32* @PLX_NUM_SPAD_PATT, align 4
  %436 = sdiv i32 %435, 2
  %437 = mul nsw i32 %436, 4
  %438 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %439 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %438, i32 0, i32 9
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %440, %437
  store i32 %441, i32* %439, align 4
  br label %442

442:                                              ; preds = %426, %410
  %443 = load i32, i32* @PLX_NUM_SPAD, align 4
  %444 = sdiv i32 %443, 2
  %445 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %446 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %445, i32 0, i32 11
  store i32 %444, i32* %446, align 4
  %447 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %448 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %447, i32 0, i32 13
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %451 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %450, i32 0, i32 10
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @bus_write_4(i32* %449, i32 %452, i32 305419896)
  %454 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %455 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %454, i32 0, i32 13
  %456 = load i32*, i32** %455, align 8
  %457 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %458 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %457, i32 0, i32 10
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @bus_read_4(i32* %456, i32 %459)
  %461 = icmp eq i32 %460, 305419896
  br i1 %461, label %462, label %467

462:                                              ; preds = %442
  %463 = load i32, i32* @PLX_NUM_SPAD_PATT, align 4
  %464 = sdiv i32 %463, 2
  %465 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %4, align 8
  %466 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %465, i32 0, i32 12
  store i32 %464, i32* %466, align 8
  br label %467

467:                                              ; preds = %462, %442
  br label %468

468:                                              ; preds = %467, %404
  %469 = load i32, i32* %3, align 4
  %470 = call i32 @ntb_plx_init(i32 %469)
  %471 = load i32, i32* %3, align 4
  %472 = call i32 @ntb_plx_setup_intr(i32 %471)
  store i32 %472, i32* %6, align 4
  %473 = load i32, i32* %6, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %468
  br label %479

476:                                              ; preds = %468
  %477 = load i32, i32* %3, align 4
  %478 = call i32 @ntb_register_device(i32 %477)
  store i32 %478, i32* %6, align 4
  br label %479

479:                                              ; preds = %476, %475, %226
  %480 = load i32, i32* %6, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %479
  %483 = load i32, i32* %3, align 4
  %484 = call i32 @ntb_plx_detach(i32 %483)
  br label %485

485:                                              ; preds = %482, %479
  %486 = load i32, i32* %6, align 4
  store i32 %486, i32* %2, align 4
  br label %487

487:                                              ; preds = %485, %46
  %488 = load i32, i32* %2, align 4
  ret i32 %488
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @bus_read_4(i32*, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @rman_get_size(i32*) #1

declare dso_local i32 @rman_get_virtual(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i64 @PLX_NTX_OUR_BASE(%struct.ntb_plx_softc*) #1

declare dso_local i32 @PLX_PORT_BASE(i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

declare dso_local i32 @ntb_plx_init(i32) #1

declare dso_local i32 @ntb_plx_setup_intr(i32) #1

declare dso_local i32 @ntb_register_device(i32) #1

declare dso_local i32 @ntb_plx_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

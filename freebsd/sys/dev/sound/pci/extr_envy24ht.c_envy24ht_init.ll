; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24ht.c_envy24ht_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64, i64, i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32, %struct.sc_info*, i32, i32)* }
%struct.sc_info = type { i32, i32, i32, %struct.TYPE_6__*, i64, i64*, i64*, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_6__ = type { i32 }

@cfg_table = common dso_local global %struct.TYPE_7__* null, align 8
@ENVY24HT_CCSM_SCFG_ADC = common dso_local global i32 0, align 4
@ENVY24HT_CCSM_SCFG_DAC = common dso_local global i32 0, align 4
@ENVY24HT_CCS_SCFG = common dso_local global i32 0, align 4
@ENVY24HT_CCS_ACL = common dso_local global i32 0, align 4
@ENVY24HT_CCS_I2S = common dso_local global i32 0, align 4
@ENVY24HT_CCS_SPDIF = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@envy24ht_playfmt = common dso_local global i32 0, align 4
@envy24ht_recfmt = common dso_local global i32 0, align 4
@ENVY24HT_CCS_IMASK = common dso_local global i32 0, align 4
@ENVY24HT_CCS_IMASK_PMT = common dso_local global i64 0, align 8
@ENVY24HT_CCS_CTL = common dso_local global i32 0, align 4
@ENVY24HT_CCS_CTL_NATIVE = common dso_local global i64 0, align 8
@ENVY24HT_CCS_CTL_RESET = common dso_local global i64 0, align 8
@ENVY24HT_ROUTE_CLASS_DMA = common dso_local global i32 0, align 4
@ENVY24HT_ROUTE_CLASS_MIX = common dso_local global i32 0, align 4
@ENVY24HT_ROUTE_DAC_1 = common dso_local global i32 0, align 4
@ENVY24HT_ROUTE_DAC_SPDIF = common dso_local global i32 0, align 4
@PCIM_LAC_DISABLE = common dso_local global i64 0, align 8
@PCIR_LAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24ht_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24ht_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %8, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %62, %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %10
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %18, %10
  %27 = phi i1 [ true, %10 ], [ %25, %18 ]
  br i1 %27, label %28, label %65

28:                                               ; preds = %26
  %29 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %30 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @pci_get_subvendor(i32 %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @pci_get_subdevice(i32 %35)
  store i64 %36, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %37, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %28
  %46 = load i64, i64* %7, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 8
  store %struct.TYPE_7__* %58, %struct.TYPE_7__** %60, align 8
  br label %65

61:                                               ; preds = %45, %28
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %10

65:                                               ; preds = %54, %26
  %66 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %67 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %66, i32 0, i32 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = icmp eq %struct.TYPE_7__* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %72 = call %struct.TYPE_7__* @envy24ht_rom2cfg(%struct.sc_info* %71)
  %73 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %74 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %73, i32 0, i32 8
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %74, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %77 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %76, i32 0, i32 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ENVY24HT_CCSM_SCFG_ADC, align 4
  %82 = and i32 %80, %81
  %83 = ashr i32 %82, 2
  %84 = add nsw i32 %83, 1
  %85 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %86 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %88 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %87, i32 0, i32 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @ENVY24HT_CCSM_SCFG_DAC, align 4
  %93 = and i32 %91, %92
  %94 = add nsw i32 %93, 1
  %95 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %96 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %98 = call i32 @envy24ht_putcfg(%struct.sc_info* %97)
  %99 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %100 = load i32, i32* @ENVY24HT_CCS_SCFG, align 4
  %101 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %102 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %101, i32 0, i32 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = call i32 @envy24ht_wrcs(%struct.sc_info* %99, i32 %100, i64 %106, i32 1)
  %108 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %109 = load i32, i32* @ENVY24HT_CCS_ACL, align 4
  %110 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %111 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %110, i32 0, i32 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @envy24ht_wrcs(%struct.sc_info* %108, i32 %109, i64 %114, i32 1)
  %116 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %117 = load i32, i32* @ENVY24HT_CCS_I2S, align 4
  %118 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %119 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %118, i32 0, i32 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @envy24ht_wrcs(%struct.sc_info* %116, i32 %117, i64 %122, i32 1)
  %124 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %125 = load i32, i32* @ENVY24HT_CCS_SPDIF, align 4
  %126 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %127 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %126, i32 0, i32 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @envy24ht_wrcs(%struct.sc_info* %124, i32 %125, i64 %130, i32 1)
  %132 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %133 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %134 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %133, i32 0, i32 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 9
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @envy24ht_gpiosetmask(%struct.sc_info* %132, i32 %137)
  %139 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @envy24ht_gpiosetdir(%struct.sc_info* %139, i32 %144)
  %146 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %147 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %148 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %147, i32 0, i32 8
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 7
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @envy24ht_gpiowr(%struct.sc_info* %146, i32 %151)
  %153 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %154 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %153, i32 0, i32 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 12337
  br i1 %158, label %159, label %173

159:                                              ; preds = %75
  %160 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %161 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %160, i32 0, i32 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 17747
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %168 = call i32 @envy24ht_wri2c(%struct.sc_info* %167, i32 34, i32 0, i32 7)
  %169 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %170 = call i32 @envy24ht_wri2c(%struct.sc_info* %169, i32 34, i32 4, i32 223)
  %171 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %172 = call i32 @envy24ht_wri2c(%struct.sc_info* %171, i32 34, i32 5, i32 223)
  br label %173

173:                                              ; preds = %166, %159, %75
  store i32 0, i32* %5, align 4
  br label %174

174:                                              ; preds = %216, %173
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %177 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %219

180:                                              ; preds = %174
  %181 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %182 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %181, i32 0, i32 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 6
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  %187 = load i32 (i32, %struct.sc_info*, i32, i32)*, i32 (i32, %struct.sc_info*, i32, i32)** %186, align 8
  %188 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %189 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %192 = load i32, i32* @PCMDIR_REC, align 4
  %193 = load i32, i32* %5, align 4
  %194 = call i32 %187(i32 %190, %struct.sc_info* %191, i32 %192, i32 %193)
  %195 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %196 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %195, i32 0, i32 9
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %202 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %201, i32 0, i32 8
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i32 (i32)*, i32 (i32)** %206, align 8
  %208 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %209 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %208, i32 0, i32 9
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 %207(i32 %214)
  br label %216

216:                                              ; preds = %180
  %217 = load i32, i32* %5, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %5, align 4
  br label %174

219:                                              ; preds = %174
  store i32 0, i32* %5, align 4
  br label %220

220:                                              ; preds = %262, %219
  %221 = load i32, i32* %5, align 4
  %222 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %223 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %265

226:                                              ; preds = %220
  %227 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %228 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %227, i32 0, i32 8
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 6
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i32 (i32, %struct.sc_info*, i32, i32)*, i32 (i32, %struct.sc_info*, i32, i32)** %232, align 8
  %234 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %235 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %238 = load i32, i32* @PCMDIR_PLAY, align 4
  %239 = load i32, i32* %5, align 4
  %240 = call i32 %233(i32 %236, %struct.sc_info* %237, i32 %238, i32 %239)
  %241 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %242 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %241, i32 0, i32 7
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  store i32 %240, i32* %246, align 4
  %247 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %248 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %247, i32 0, i32 8
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 6
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32 (i32)*, i32 (i32)** %252, align 8
  %254 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %255 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %254, i32 0, i32 7
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 %253(i32 %260)
  br label %262

262:                                              ; preds = %226
  %263 = load i32, i32* %5, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %5, align 4
  br label %220

265:                                              ; preds = %220
  %266 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %267 = call i64 @envy24ht_dmainit(%struct.sc_info* %266)
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* @ENOSPC, align 4
  store i32 %270, i32* %2, align 4
  br label %315

271:                                              ; preds = %265
  %272 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %273 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %272, i32 0, i32 6
  %274 = load i64*, i64** %273, align 8
  %275 = getelementptr inbounds i64, i64* %274, i64 1
  store i64 0, i64* %275, align 8
  %276 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %277 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %276, i32 0, i32 6
  %278 = load i64*, i64** %277, align 8
  %279 = getelementptr inbounds i64, i64* %278, i64 0
  store i64 0, i64* %279, align 8
  %280 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %281 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %280, i32 0, i32 5
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds i64, i64* %282, i64 1
  store i64 0, i64* %283, align 8
  %284 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %285 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %284, i32 0, i32 5
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 0
  store i64 0, i64* %287, align 8
  %288 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %289 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %288, i32 0, i32 4
  store i64 0, i64* %289, align 8
  %290 = load i32, i32* @envy24ht_playfmt, align 4
  %291 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %292 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %291, i32 0, i32 3
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i64 0
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 0
  store i32 %290, i32* %295, align 4
  %296 = load i32, i32* @envy24ht_recfmt, align 4
  %297 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %298 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %297, i32 0, i32 3
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 1
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 0
  store i32 %296, i32* %301, align 4
  %302 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %303 = load i32, i32* @ENVY24HT_CCS_IMASK, align 4
  %304 = call i64 @envy24ht_rdcs(%struct.sc_info* %302, i32 %303, i32 1)
  store i64 %304, i64* %4, align 8
  %305 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %306 = load i32, i32* @ENVY24HT_CCS_IMASK, align 4
  %307 = load i64, i64* %4, align 8
  %308 = load i64, i64* @ENVY24HT_CCS_IMASK_PMT, align 8
  %309 = xor i64 %308, -1
  %310 = and i64 %307, %309
  %311 = call i32 @envy24ht_wrcs(%struct.sc_info* %305, i32 %306, i64 %310, i32 1)
  %312 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %313 = load i32, i32* @ENVY24HT_CCS_IMASK, align 4
  %314 = call i64 @envy24ht_rdcs(%struct.sc_info* %312, i32 %313, i32 1)
  store i64 %314, i64* %4, align 8
  store i32 0, i32* %2, align 4
  br label %315

315:                                              ; preds = %271, %269
  %316 = load i32, i32* %2, align 4
  ret i32 %316
}

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local %struct.TYPE_7__* @envy24ht_rom2cfg(%struct.sc_info*) #1

declare dso_local i32 @envy24ht_putcfg(%struct.sc_info*) #1

declare dso_local i32 @envy24ht_wrcs(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @envy24ht_gpiosetmask(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24ht_gpiosetdir(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24ht_gpiowr(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24ht_wri2c(%struct.sc_info*, i32, i32, i32) #1

declare dso_local i64 @envy24ht_dmainit(%struct.sc_info*) #1

declare dso_local i64 @envy24ht_rdcs(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

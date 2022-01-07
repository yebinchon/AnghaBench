; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i64, i64, i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (i32)*, i32 (i32, %struct.sc_info*, i32, i32)* }
%struct.sc_info = type { i32, i32, i32, %struct.TYPE_6__*, i64, i64*, i64*, i32*, %struct.TYPE_7__*, i32* }
%struct.TYPE_6__ = type { i32 }

@ENVY24_CCS_CTL = common dso_local global i32 0, align 4
@ENVY24_CCS_CTL_RESET = common dso_local global i64 0, align 8
@ENVY24_CCS_CTL_NATIVE = common dso_local global i64 0, align 8
@PCIR_LAC = common dso_local global i32 0, align 4
@PCIM_LAC_DISABLE = common dso_local global i64 0, align 8
@cfg_table = common dso_local global %struct.TYPE_7__* null, align 8
@PCIM_SCFG_ADC = common dso_local global i32 0, align 4
@PCIM_SCFG_DAC = common dso_local global i32 0, align 4
@PCIR_SCFG = common dso_local global i32 0, align 4
@PCIR_ACL = common dso_local global i32 0, align 4
@PCIR_I2S = common dso_local global i32 0, align 4
@PCIR_SPDIF = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@envy24_playfmt = common dso_local global i32 0, align 4
@envy24_recfmt = common dso_local global i32 0, align 4
@ENVY24_ROUTE_DAC_1 = common dso_local global i32 0, align 4
@ENVY24_ROUTE_CLASS_MIX = common dso_local global i32 0, align 4
@ENVY24_ROUTE_DAC_SPDIF = common dso_local global i32 0, align 4
@ENVY24_ROUTE_CLASS_DMA = common dso_local global i32 0, align 4
@ENVY24_CCS_IMASK = common dso_local global i32 0, align 4
@ENVY24_CCS_IMASK_PMT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @envy24_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @envy24_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %8 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %9 = load i32, i32* @ENVY24_CCS_CTL, align 4
  %10 = load i64, i64* @ENVY24_CCS_CTL_RESET, align 8
  %11 = load i64, i64* @ENVY24_CCS_CTL_NATIVE, align 8
  %12 = or i64 %10, %11
  %13 = call i32 @envy24_wrcs(%struct.sc_info* %8, i32 %9, i64 %12, i32 1)
  %14 = call i32 @DELAY(i32 200)
  %15 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %16 = load i32, i32* @ENVY24_CCS_CTL, align 4
  %17 = load i64, i64* @ENVY24_CCS_CTL_NATIVE, align 8
  %18 = call i32 @envy24_wrcs(%struct.sc_info* %15, i32 %16, i64 %17, i32 1)
  %19 = call i32 @DELAY(i32 200)
  %20 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCIR_LAC, align 4
  %24 = call i64 @pci_read_config(i32 %22, i32 %23, i32 2)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* @PCIM_LAC_DISABLE, align 8
  %26 = load i64, i64* %4, align 8
  %27 = or i64 %26, %25
  store i64 %27, i64* %4, align 8
  %28 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCIR_LAC, align 4
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @pci_write_config(i32 %30, i32 %31, i64 %32, i32 2)
  %34 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %35, align 8
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %88, %1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %44, %36
  %53 = phi i1 [ true, %36 ], [ %51, %44 ]
  br i1 %53, label %54, label %91

54:                                               ; preds = %52
  %55 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %56 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @pci_get_subvendor(i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %60 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @pci_get_subdevice(i32 %61)
  store i64 %62, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %63, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %54
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cfg_table, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %86 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %85, i32 0, i32 8
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  br label %91

87:                                               ; preds = %71, %54
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %36

91:                                               ; preds = %80, %52
  %92 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %93 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %92, i32 0, i32 8
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = icmp eq %struct.TYPE_7__* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %98 = call %struct.TYPE_7__* @envy24_rom2cfg(%struct.sc_info* %97)
  %99 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %100 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %99, i32 0, i32 8
  store %struct.TYPE_7__* %98, %struct.TYPE_7__** %100, align 8
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %103 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %102, i32 0, i32 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @PCIM_SCFG_ADC, align 4
  %108 = and i32 %106, %107
  %109 = ashr i32 %108, 2
  %110 = add nsw i32 %109, 1
  %111 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %112 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %114 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %113, i32 0, i32 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @PCIM_SCFG_DAC, align 4
  %119 = and i32 %117, %118
  %120 = add nsw i32 %119, 1
  %121 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %122 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %124 = call i32 @envy24_putcfg(%struct.sc_info* %123)
  %125 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %126 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @PCIR_SCFG, align 4
  %129 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %130 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %129, i32 0, i32 8
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = call i32 @pci_write_config(i32 %127, i32 %128, i64 %134, i32 1)
  %136 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %137 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @PCIR_ACL, align 4
  %140 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %141 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %140, i32 0, i32 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @pci_write_config(i32 %138, i32 %139, i64 %144, i32 1)
  %146 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %147 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @PCIR_I2S, align 4
  %150 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %151 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %150, i32 0, i32 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @pci_write_config(i32 %148, i32 %149, i64 %154, i32 1)
  %156 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %157 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @PCIR_SPDIF, align 4
  %160 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %161 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %160, i32 0, i32 8
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @pci_write_config(i32 %158, i32 %159, i64 %164, i32 1)
  %166 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %167 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %168 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %167, i32 0, i32 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 9
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @envy24_gpiosetmask(%struct.sc_info* %166, i32 %171)
  %173 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %174 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %175 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %174, i32 0, i32 8
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 8
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @envy24_gpiosetdir(%struct.sc_info* %173, i32 %178)
  %180 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %181 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %182 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %181, i32 0, i32 8
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @envy24_gpiowr(%struct.sc_info* %180, i32 %185)
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %229, %101
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %190 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %232

193:                                              ; preds = %187
  %194 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %195 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %194, i32 0, i32 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 6
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i32 (i32, %struct.sc_info*, i32, i32)*, i32 (i32, %struct.sc_info*, i32, i32)** %199, align 8
  %201 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %202 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %205 = load i32, i32* @PCMDIR_REC, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 %200(i32 %203, %struct.sc_info* %204, i32 %205, i32 %206)
  %208 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %209 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %208, i32 0, i32 9
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %5, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  %214 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %215 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %214, i32 0, i32 8
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 6
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  %220 = load i32 (i32)*, i32 (i32)** %219, align 8
  %221 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %222 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %221, i32 0, i32 9
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = call i32 %220(i32 %227)
  br label %229

229:                                              ; preds = %193
  %230 = load i32, i32* %5, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %5, align 4
  br label %187

232:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %233

233:                                              ; preds = %275, %232
  %234 = load i32, i32* %5, align 4
  %235 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %236 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %278

239:                                              ; preds = %233
  %240 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %241 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %240, i32 0, i32 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 6
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i32 (i32, %struct.sc_info*, i32, i32)*, i32 (i32, %struct.sc_info*, i32, i32)** %245, align 8
  %247 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %248 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %251 = load i32, i32* @PCMDIR_PLAY, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i32 %246(i32 %249, %struct.sc_info* %250, i32 %251, i32 %252)
  %254 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %255 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %254, i32 0, i32 7
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %256, i64 %258
  store i32 %253, i32* %259, align 4
  %260 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %261 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %260, i32 0, i32 8
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  %266 = load i32 (i32)*, i32 (i32)** %265, align 8
  %267 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %268 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %267, i32 0, i32 7
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 %266(i32 %273)
  br label %275

275:                                              ; preds = %239
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %5, align 4
  br label %233

278:                                              ; preds = %233
  %279 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %280 = call i64 @envy24_dmainit(%struct.sc_info* %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = load i32, i32* @ENOSPC, align 4
  store i32 %283, i32* %2, align 4
  br label %336

284:                                              ; preds = %278
  %285 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %286 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %285, i32 0, i32 6
  %287 = load i64*, i64** %286, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 1
  store i64 0, i64* %288, align 8
  %289 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %290 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %289, i32 0, i32 6
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 0
  store i64 0, i64* %292, align 8
  %293 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %294 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %293, i32 0, i32 5
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 1
  store i64 0, i64* %296, align 8
  %297 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %298 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %297, i32 0, i32 5
  %299 = load i64*, i64** %298, align 8
  %300 = getelementptr inbounds i64, i64* %299, i64 0
  store i64 0, i64* %300, align 8
  %301 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %302 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %301, i32 0, i32 4
  store i64 0, i64* %302, align 8
  %303 = load i32, i32* @envy24_playfmt, align 4
  %304 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %305 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %304, i32 0, i32 3
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i64 0
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 0
  store i32 %303, i32* %308, align 4
  %309 = load i32, i32* @envy24_recfmt, align 4
  %310 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %311 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %310, i32 0, i32 3
  %312 = load %struct.TYPE_6__*, %struct.TYPE_6__** %311, align 8
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i64 1
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %313, i32 0, i32 0
  store i32 %309, i32* %314, align 4
  %315 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %316 = load i32, i32* @ENVY24_ROUTE_DAC_1, align 4
  %317 = load i32, i32* @ENVY24_ROUTE_CLASS_MIX, align 4
  %318 = call i32 @envy24_route(%struct.sc_info* %315, i32 %316, i32 %317, i32 0, i32 0)
  %319 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %320 = load i32, i32* @ENVY24_ROUTE_DAC_SPDIF, align 4
  %321 = load i32, i32* @ENVY24_ROUTE_CLASS_DMA, align 4
  %322 = call i32 @envy24_route(%struct.sc_info* %319, i32 %320, i32 %321, i32 0, i32 0)
  %323 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %324 = load i32, i32* @ENVY24_CCS_IMASK, align 4
  %325 = call i64 @envy24_rdcs(%struct.sc_info* %323, i32 %324, i32 1)
  store i64 %325, i64* %4, align 8
  %326 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %327 = load i32, i32* @ENVY24_CCS_IMASK, align 4
  %328 = load i64, i64* %4, align 8
  %329 = load i64, i64* @ENVY24_CCS_IMASK_PMT, align 8
  %330 = xor i64 %329, -1
  %331 = and i64 %328, %330
  %332 = call i32 @envy24_wrcs(%struct.sc_info* %326, i32 %327, i64 %331, i32 1)
  %333 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %334 = load i32, i32* @ENVY24_CCS_IMASK, align 4
  %335 = call i64 @envy24_rdcs(%struct.sc_info* %333, i32 %334, i32 1)
  store i64 %335, i64* %4, align 8
  store i32 0, i32* %2, align 4
  br label %336

336:                                              ; preds = %284, %282
  %337 = load i32, i32* %2, align 4
  ret i32 %337
}

declare dso_local i32 @envy24_wrcs(%struct.sc_info*, i32, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i64, i32) #1

declare dso_local i64 @pci_get_subvendor(i32) #1

declare dso_local i64 @pci_get_subdevice(i32) #1

declare dso_local %struct.TYPE_7__* @envy24_rom2cfg(%struct.sc_info*) #1

declare dso_local i32 @envy24_putcfg(%struct.sc_info*) #1

declare dso_local i32 @envy24_gpiosetmask(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24_gpiosetdir(%struct.sc_info*, i32) #1

declare dso_local i32 @envy24_gpiowr(%struct.sc_info*, i32) #1

declare dso_local i64 @envy24_dmainit(%struct.sc_info*) #1

declare dso_local i32 @envy24_route(%struct.sc_info*, i32, i32, i32, i32) #1

declare dso_local i64 @envy24_rdcs(%struct.sc_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

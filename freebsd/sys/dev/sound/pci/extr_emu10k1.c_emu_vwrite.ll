; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_emu10k1.c_emu_vwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.emu_voice = type { i32, i32, i32, i32, i32, %struct.emu_voice*, i32, i64, i64, i64 }

@EMU_CHAN_CPF = common dso_local global i32 0, align 4
@EMU_CHAN_CPF_STEREO_MASK = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT1 = common dso_local global i32 0, align 4
@EMU_A_CHAN_FXRT2 = common dso_local global i32 0, align 4
@EMU_A_CHAN_SENDAMOUNTS = common dso_local global i32 0, align 4
@EMU_CHAN_FXRT = common dso_local global i32 0, align 4
@EMU_CHAN_PTRX = common dso_local global i32 0, align 4
@EMU_CHAN_DSL = common dso_local global i32 0, align 4
@EMU_CHAN_PSST = common dso_local global i32 0, align 4
@EMU_CHAN_CCCA = common dso_local global i32 0, align 4
@EMU_CHAN_CCCA_8BITSELECT = common dso_local global i32 0, align 4
@EMU_CHAN_Z1 = common dso_local global i32 0, align 4
@EMU_CHAN_Z2 = common dso_local global i32 0, align 4
@EMU_CHAN_MAP_PTI_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_MAPA = common dso_local global i32 0, align 4
@EMU_CHAN_MAPB = common dso_local global i32 0, align 4
@EMU_CHAN_CVCF = common dso_local global i32 0, align 4
@EMU_CHAN_CVCF_CURRFILTER_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_VTFT = common dso_local global i32 0, align 4
@EMU_CHAN_VTFT_FILTERTARGET_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDM = common dso_local global i32 0, align 4
@EMU_CHAN_DCYSUSM = common dso_local global i32 0, align 4
@EMU_CHAN_DCYSUSM_DECAYTIME_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL1 = common dso_local global i32 0, align 4
@EMU_CHAN_LFOVAL2 = common dso_local global i32 0, align 4
@EMU_CHAN_FMMOD = common dso_local global i32 0, align 4
@EMU_CHAN_TREMFRQ = common dso_local global i32 0, align 4
@EMU_CHAN_FM2FRQ2 = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVAL = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDV = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDV_HOLDTIME_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_ATKHLDV_ATTACKTIME_MASK = common dso_local global i32 0, align 4
@EMU_CHAN_ENVVOL = common dso_local global i32 0, align 4
@EMU_CHAN_PEFE_FILTERAMOUNT = common dso_local global i32 0, align 4
@EMU_CHAN_PEFE_PITCHAMOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*, %struct.emu_voice*)* @emu_vwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emu_vwrite(%struct.sc_info* %0, %struct.emu_voice* %1) #0 {
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca %struct.emu_voice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  store %struct.emu_voice* %1, %struct.emu_voice** %4, align 8
  %15 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %16 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %15, i32 0, i32 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  %21 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %22 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %21, i32 0, i32 7
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  %27 = add nsw i32 %20, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %29 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %34 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %39 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  store i32 %40, i32* %8, align 4
  store i32 %40, i32* %7, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %42 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %2
  %46 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %47 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %6, align 4
  br label %53

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  store i32 %54, i32* %6, align 4
  %55 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %56 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %55, i32 0, i32 9
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi i32 [ 0, %59 ], [ %61, %60 ]
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %2
  %65 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %66 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %67 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @EMU_CHAN_CPF, align 4
  %70 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %71 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %70, i32 0, i32 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = load i32, i32* @EMU_CHAN_CPF_STEREO_MASK, align 4
  br label %77

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %74
  %78 = phi i32 [ %75, %74 ], [ 0, %76 ]
  %79 = call i32 @emu_wrptr(%struct.sc_info* %65, i32 %68, i32 %69, i32 %78)
  %80 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %81 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 28, i32 30
  store i32 %85, i32* %13, align 4
  %86 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %87 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 2
  %92 = load i32, i32* %13, align 4
  %93 = mul nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %94, %95
  store i32 %96, i32* %12, align 4
  %97 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %98 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %77
  %102 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %103 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %104 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @EMU_A_CHAN_FXRT1, align 4
  %107 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %108 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @emu_wrptr(%struct.sc_info* %102, i32 %105, i32 %106, i32 %109)
  %111 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %112 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %113 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @EMU_A_CHAN_FXRT2, align 4
  %116 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %117 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @emu_wrptr(%struct.sc_info* %111, i32 %114, i32 %115, i32 %118)
  %120 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %121 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %122 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %121, i32 0, i32 6
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @EMU_A_CHAN_SENDAMOUNTS, align 4
  %125 = call i32 @emu_wrptr(%struct.sc_info* %120, i32 %123, i32 %124, i32 0)
  br label %137

126:                                              ; preds = %77
  %127 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %128 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %129 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @EMU_CHAN_FXRT, align 4
  %132 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %133 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 16
  %136 = call i32 @emu_wrptr(%struct.sc_info* %127, i32 %130, i32 %131, i32 %135)
  br label %137

137:                                              ; preds = %126, %101
  %138 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %139 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %140 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @EMU_CHAN_PTRX, align 4
  %143 = load i32, i32* %8, align 4
  %144 = shl i32 %143, 8
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @emu_wrptr(%struct.sc_info* %138, i32 %141, i32 %142, i32 %146)
  %148 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %149 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %150 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @EMU_CHAN_DSL, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %9, align 4
  %155 = shl i32 %154, 24
  %156 = or i32 %153, %155
  %157 = call i32 @emu_wrptr(%struct.sc_info* %148, i32 %151, i32 %152, i32 %156)
  %158 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %159 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %160 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @EMU_CHAN_PSST, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %6, align 4
  %165 = shl i32 %164, 24
  %166 = or i32 %163, %165
  %167 = call i32 @emu_wrptr(%struct.sc_info* %158, i32 %161, i32 %162, i32 %166)
  %168 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %169 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %170 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @EMU_CHAN_CCCA, align 4
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %175 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %174, i32 0, i32 7
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %137
  br label %181

179:                                              ; preds = %137
  %180 = load i32, i32* @EMU_CHAN_CCCA_8BITSELECT, align 4
  br label %181

181:                                              ; preds = %179, %178
  %182 = phi i32 [ 0, %178 ], [ %180, %179 ]
  %183 = or i32 %173, %182
  %184 = call i32 @emu_wrptr(%struct.sc_info* %168, i32 %171, i32 %172, i32 %183)
  %185 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %186 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %187 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @EMU_CHAN_Z1, align 4
  %190 = call i32 @emu_wrptr(%struct.sc_info* %185, i32 %188, i32 %189, i32 0)
  %191 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %192 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %193 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %192, i32 0, i32 6
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @EMU_CHAN_Z2, align 4
  %196 = call i32 @emu_wrptr(%struct.sc_info* %191, i32 %194, i32 %195, i32 0)
  %197 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %198 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = shl i32 %201, 1
  %203 = load i32, i32* @EMU_CHAN_MAP_PTI_MASK, align 4
  %204 = or i32 %202, %203
  store i32 %204, i32* %14, align 4
  %205 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %206 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %207 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @EMU_CHAN_MAPA, align 4
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @emu_wrptr(%struct.sc_info* %205, i32 %208, i32 %209, i32 %210)
  %212 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %213 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %214 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @EMU_CHAN_MAPB, align 4
  %217 = load i32, i32* %14, align 4
  %218 = call i32 @emu_wrptr(%struct.sc_info* %212, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %220 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %221 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @EMU_CHAN_CVCF, align 4
  %224 = load i32, i32* @EMU_CHAN_CVCF_CURRFILTER_MASK, align 4
  %225 = call i32 @emu_wrptr(%struct.sc_info* %219, i32 %222, i32 %223, i32 %224)
  %226 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %227 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %228 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @EMU_CHAN_VTFT, align 4
  %231 = load i32, i32* @EMU_CHAN_VTFT_FILTERTARGET_MASK, align 4
  %232 = call i32 @emu_wrptr(%struct.sc_info* %226, i32 %229, i32 %230, i32 %231)
  %233 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %234 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %235 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @EMU_CHAN_ATKHLDM, align 4
  %238 = call i32 @emu_wrptr(%struct.sc_info* %233, i32 %236, i32 %237, i32 0)
  %239 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %240 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %241 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @EMU_CHAN_DCYSUSM, align 4
  %244 = load i32, i32* @EMU_CHAN_DCYSUSM_DECAYTIME_MASK, align 4
  %245 = call i32 @emu_wrptr(%struct.sc_info* %239, i32 %242, i32 %243, i32 %244)
  %246 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %247 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %248 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @EMU_CHAN_LFOVAL1, align 4
  %251 = call i32 @emu_wrptr(%struct.sc_info* %246, i32 %249, i32 %250, i32 32768)
  %252 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %253 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %254 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @EMU_CHAN_LFOVAL2, align 4
  %257 = call i32 @emu_wrptr(%struct.sc_info* %252, i32 %255, i32 %256, i32 32768)
  %258 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %259 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %260 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %259, i32 0, i32 6
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @EMU_CHAN_FMMOD, align 4
  %263 = call i32 @emu_wrptr(%struct.sc_info* %258, i32 %261, i32 %262, i32 0)
  %264 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %265 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %266 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @EMU_CHAN_TREMFRQ, align 4
  %269 = call i32 @emu_wrptr(%struct.sc_info* %264, i32 %267, i32 %268, i32 0)
  %270 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %271 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %272 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @EMU_CHAN_FM2FRQ2, align 4
  %275 = call i32 @emu_wrptr(%struct.sc_info* %270, i32 %273, i32 %274, i32 0)
  %276 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %277 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %278 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @EMU_CHAN_ENVVAL, align 4
  %281 = call i32 @emu_wrptr(%struct.sc_info* %276, i32 %279, i32 %280, i32 32768)
  %282 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %283 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %284 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %283, i32 0, i32 6
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @EMU_CHAN_ATKHLDV, align 4
  %287 = load i32, i32* @EMU_CHAN_ATKHLDV_HOLDTIME_MASK, align 4
  %288 = load i32, i32* @EMU_CHAN_ATKHLDV_ATTACKTIME_MASK, align 4
  %289 = or i32 %287, %288
  %290 = call i32 @emu_wrptr(%struct.sc_info* %282, i32 %285, i32 %286, i32 %289)
  %291 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %292 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %293 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @EMU_CHAN_ENVVOL, align 4
  %296 = call i32 @emu_wrptr(%struct.sc_info* %291, i32 %294, i32 %295, i32 32768)
  %297 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %298 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %299 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @EMU_CHAN_PEFE_FILTERAMOUNT, align 4
  %302 = call i32 @emu_wrptr(%struct.sc_info* %297, i32 %300, i32 %301, i32 127)
  %303 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %304 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %305 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @EMU_CHAN_PEFE_PITCHAMOUNT, align 4
  %308 = call i32 @emu_wrptr(%struct.sc_info* %303, i32 %306, i32 %307, i32 0)
  %309 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %310 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %309, i32 0, i32 5
  %311 = load %struct.emu_voice*, %struct.emu_voice** %310, align 8
  %312 = icmp ne %struct.emu_voice* %311, null
  br i1 %312, label %313, label %318

313:                                              ; preds = %181
  %314 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %315 = load %struct.emu_voice*, %struct.emu_voice** %4, align 8
  %316 = getelementptr inbounds %struct.emu_voice, %struct.emu_voice* %315, i32 0, i32 5
  %317 = load %struct.emu_voice*, %struct.emu_voice** %316, align 8
  call void @emu_vwrite(%struct.sc_info* %314, %struct.emu_voice* %317)
  br label %318

318:                                              ; preds = %313, %181
  ret void
}

declare dso_local i32 @emu_wrptr(%struct.sc_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

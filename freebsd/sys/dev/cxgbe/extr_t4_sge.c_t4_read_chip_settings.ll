; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_read_chip_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_read_chip_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, i32, %struct.sge }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.sge_params }
%struct.sge_params = type { i32, i64, i32*, i32 }
%struct.sge = type { i32, i32, %struct.hw_buf_info*, %struct.sw_zone_info* }
%struct.hw_buf_info = type { i32, i32, i32 }
%struct.sw_zone_info = type { i32, i32, i32, i32, i32 }

@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@M_INDICATESIZE = common dso_local global i32 0, align 4
@t4_read_chip_settings.sw_buf_sizes = internal global [4 x i32] [i32 131, i32 128, i32 129, i32 130], align 16
@F_RXPKTCPLMODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"invalid SGE_CONTROL(0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"invalid SGE_HOST_PAGE_SIZE(0x%x)\0A\00", align 1
@SW_ZONE_SIZES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@fl_pad = common dso_local global i64 0, align 8
@safest_rx_cluster = common dso_local global i32 0, align 4
@SGE_FLBUF_SIZES = common dso_local global i32 0, align 4
@CL_METADATA_SIZE = common dso_local global i32 0, align 4
@BUF_PACKING_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"no usable SGE FL buffer size.\0A\00", align 1
@IS_VF = common dso_local global i32 0, align 4
@A_ULP_RX_TDDP_PSZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"invalid ULP_RX_TDDP_PSZ(0x%x)\0A\00", align 1
@F_TDDPTAGTCB = common dso_local global i32 0, align 4
@A_ULP_RX_CTL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"invalid ULP_RX_CTL(0x%x)\0A\00", align 1
@F_REARMDDPOFFSET = common dso_local global i32 0, align 4
@F_RESETDDPOFFSET = common dso_local global i32 0, align 4
@A_TP_PARA_REG5 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"invalid TP_PARA_REG5(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_read_chip_settings(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge*, align 8
  %5 = alloca %struct.sge_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.sw_zone_info*, align 8
  %15 = alloca %struct.sw_zone_info*, align 8
  %16 = alloca %struct.hw_buf_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca %struct.hw_buf_info*, align 8
  %21 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 3
  store %struct.sge* %23, %struct.sge** %4, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store %struct.sge_params* %26, %struct.sge_params** %5, align 8
  store i32 0, i32* %9, align 4
  %27 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %28 = sub nsw i64 %27, 1
  %29 = load i32, i32* @M_INDICATESIZE, align 4
  %30 = call i32 @min(i64 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* @F_RXPKTCPLMODE, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @F_RXPKTCPLMODE, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.adapter*, %struct.adapter** %3, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %1
  %44 = load %struct.adapter*, %struct.adapter** %3, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %43, %1
  %51 = load %struct.sge_params*, %struct.sge_params** %5, align 8
  %52 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %56, %50
  %64 = load %struct.sge*, %struct.sge** %4, align 8
  %65 = getelementptr inbounds %struct.sge, %struct.sge* %64, i32 0, i32 2
  %66 = load %struct.hw_buf_info*, %struct.hw_buf_info** %65, align 8
  %67 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %66, i64 0
  store %struct.hw_buf_info* %67, %struct.hw_buf_info** %16, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %98, %63
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.sge*, %struct.sge** %4, align 8
  %71 = getelementptr inbounds %struct.sge, %struct.sge* %70, i32 0, i32 2
  %72 = load %struct.hw_buf_info*, %struct.hw_buf_info** %71, align 8
  %73 = call i32 @nitems(%struct.hw_buf_info* %72)
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %103

75:                                               ; preds = %68
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %87 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = load i32, i32* %12, align 4
  %90 = call i64 @hwsz_ok(%struct.adapter* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 -1, i32 -2
  %94 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %95 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %97 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %96, i32 0, i32 2
  store i32 -1, i32* %97, align 4
  br label %98

98:                                               ; preds = %75
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  %101 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %102 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %101, i32 1
  store %struct.hw_buf_info* %102, %struct.hw_buf_info** %16, align 8
  br label %68

103:                                              ; preds = %68
  store i32 0, i32* %8, align 4
  %104 = load %struct.sge*, %struct.sge** %4, align 8
  %105 = getelementptr inbounds %struct.sge, %struct.sge* %104, i32 0, i32 3
  %106 = load %struct.sw_zone_info*, %struct.sw_zone_info** %105, align 8
  %107 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %106, i64 0
  store %struct.sw_zone_info* %107, %struct.sw_zone_info** %14, align 8
  store %struct.sw_zone_info* null, %struct.sw_zone_info** %15, align 8
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %301, %103
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @SW_ZONE_SIZES, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %306

112:                                              ; preds = %108
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* @t4_read_chip_settings.sw_buf_sizes, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %118 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %120 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @m_getzone(i32 %121)
  %123 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %124 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 4
  %125 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %126 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @m_gettype(i32 %127)
  %129 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %130 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %132 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @PAGE_SIZE, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %155

136:                                              ; preds = %112
  %137 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %138 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @powerof2(i32 %139)
  %141 = call i32 @MPASS(i32 %140)
  %142 = load i64, i64* @fl_pad, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %136
  %145 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %146 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sge_params*, %struct.sge_params** %5, align 8
  %149 = getelementptr inbounds %struct.sge_params, %struct.sge_params* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = srem i32 %147, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %301

154:                                              ; preds = %144, %136
  br label %155

155:                                              ; preds = %154, %112
  %156 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %157 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @safest_rx_cluster, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  store %struct.sw_zone_info* %162, %struct.sw_zone_info** %15, align 8
  br label %163

163:                                              ; preds = %161, %155
  %164 = load %struct.sge*, %struct.sge** %4, align 8
  %165 = getelementptr inbounds %struct.sge, %struct.sge* %164, i32 0, i32 2
  %166 = load %struct.hw_buf_info*, %struct.hw_buf_info** %165, align 8
  %167 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %166, i64 0
  store %struct.hw_buf_info* %167, %struct.hw_buf_info** %16, align 8
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %262, %163
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @SGE_FLBUF_SIZES, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %267

172:                                              ; preds = %168
  %173 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %174 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %185, label %177

177:                                              ; preds = %172
  %178 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %179 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %182 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp sgt i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %177, %172
  br label %262

186:                                              ; preds = %177
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %189 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %188, i32 0, i32 1
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* %7, align 4
  store i32 %193, i32* %18, align 4
  store i32 %193, i32* %17, align 4
  br label %261

194:                                              ; preds = %186
  %195 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %196 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.sge*, %struct.sge** %4, align 8
  %199 = getelementptr inbounds %struct.sge, %struct.sge* %198, i32 0, i32 2
  %200 = load %struct.hw_buf_info*, %struct.hw_buf_info** %199, align 8
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %200, i64 %202
  %204 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp slt i32 %197, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %194
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.sge*, %struct.sge** %4, align 8
  %210 = getelementptr inbounds %struct.sge, %struct.sge* %209, i32 0, i32 2
  %211 = load %struct.hw_buf_info*, %struct.hw_buf_info** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %211, i64 %213
  %215 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %214, i32 0, i32 2
  store i32 %208, i32* %215, align 4
  %216 = load i32, i32* %7, align 4
  store i32 %216, i32* %18, align 4
  br label %260

217:                                              ; preds = %194
  store i32* %17, i32** %19, align 8
  br label %218

218:                                              ; preds = %256, %217
  %219 = load i32*, i32** %19, align 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %259

222:                                              ; preds = %218
  %223 = load %struct.sge*, %struct.sge** %4, align 8
  %224 = getelementptr inbounds %struct.sge, %struct.sge* %223, i32 0, i32 2
  %225 = load %struct.hw_buf_info*, %struct.hw_buf_info** %224, align 8
  %226 = load i32*, i32** %19, align 8
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %225, i64 %228
  store %struct.hw_buf_info* %229, %struct.hw_buf_info** %20, align 8
  %230 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %231 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.hw_buf_info*, %struct.hw_buf_info** %20, align 8
  %234 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %232, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %222
  %238 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %239 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %238, i32 0, i32 1
  store i32 -2, i32* %239, align 4
  br label %259

240:                                              ; preds = %222
  %241 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %242 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.hw_buf_info*, %struct.hw_buf_info** %20, align 8
  %245 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = icmp sgt i32 %243, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %240
  %249 = load i32*, i32** %19, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %252 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %251, i32 0, i32 2
  store i32 %250, i32* %252, align 4
  %253 = load i32, i32* %7, align 4
  %254 = load i32*, i32** %19, align 8
  store i32 %253, i32* %254, align 4
  br label %259

255:                                              ; preds = %240
  br label %256

256:                                              ; preds = %255
  %257 = load %struct.hw_buf_info*, %struct.hw_buf_info** %20, align 8
  %258 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %257, i32 0, i32 2
  store i32* %258, i32** %19, align 8
  br label %218

259:                                              ; preds = %248, %237, %218
  br label %260

260:                                              ; preds = %259, %207
  br label %261

261:                                              ; preds = %260, %192
  br label %262

262:                                              ; preds = %261, %185
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  %265 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %266 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %265, i32 1
  store %struct.hw_buf_info* %266, %struct.hw_buf_info** %16, align 8
  br label %168

267:                                              ; preds = %168
  %268 = load i32, i32* %17, align 4
  %269 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %270 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %269, i32 0, i32 1
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %18, align 4
  %272 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %273 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %272, i32 0, i32 2
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %18, align 4
  %275 = icmp ne i32 %274, -1
  br i1 %275, label %276, label %300

276:                                              ; preds = %267
  %277 = load i32, i32* %8, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %8, align 4
  %279 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %280 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.sge*, %struct.sge** %4, align 8
  %283 = getelementptr inbounds %struct.sge, %struct.sge* %282, i32 0, i32 2
  %284 = load %struct.hw_buf_info*, %struct.hw_buf_info** %283, align 8
  %285 = load i32, i32* %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %284, i64 %286
  %288 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = sub nsw i32 %281, %289
  %291 = load i32, i32* @CL_METADATA_SIZE, align 4
  %292 = icmp sge i32 %290, %291
  br i1 %292, label %293, label %299

293:                                              ; preds = %276
  %294 = load i32, i32* @BUF_PACKING_OK, align 4
  %295 = load %struct.adapter*, %struct.adapter** %3, align 8
  %296 = getelementptr inbounds %struct.adapter, %struct.adapter* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = or i32 %297, %294
  store i32 %298, i32* %296, align 8
  br label %299

299:                                              ; preds = %293, %276
  br label %300

300:                                              ; preds = %299, %267
  br label %301

301:                                              ; preds = %300, %153
  %302 = load i32, i32* %6, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %6, align 4
  %304 = load %struct.sw_zone_info*, %struct.sw_zone_info** %14, align 8
  %305 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %304, i32 1
  store %struct.sw_zone_info* %305, %struct.sw_zone_info** %14, align 8
  br label %108

306:                                              ; preds = %108
  %307 = load i32, i32* %8, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %315

309:                                              ; preds = %306
  %310 = load %struct.adapter*, %struct.adapter** %3, align 8
  %311 = getelementptr inbounds %struct.adapter, %struct.adapter* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 8
  %313 = call i32 (i32, i8*, ...) @device_printf(i32 %312, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %314 = load i32, i32* @EINVAL, align 4
  store i32 %314, i32* %9, align 4
  br label %315

315:                                              ; preds = %309, %306
  %316 = load %struct.sge*, %struct.sge** %4, align 8
  %317 = getelementptr inbounds %struct.sge, %struct.sge* %316, i32 0, i32 0
  store i32 -1, i32* %317, align 8
  %318 = load %struct.sge*, %struct.sge** %4, align 8
  %319 = getelementptr inbounds %struct.sge, %struct.sge* %318, i32 0, i32 1
  store i32 -1, i32* %319, align 4
  %320 = load %struct.sw_zone_info*, %struct.sw_zone_info** %15, align 8
  %321 = icmp ne %struct.sw_zone_info* %320, null
  br i1 %321, label %322, label %361

322:                                              ; preds = %315
  %323 = load %struct.sw_zone_info*, %struct.sw_zone_info** %15, align 8
  %324 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.sge*, %struct.sge** %4, align 8
  %327 = getelementptr inbounds %struct.sge, %struct.sge* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load %struct.sw_zone_info*, %struct.sw_zone_info** %15, align 8
  %329 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  store i32 %330, i32* %6, align 4
  br label %331

331:                                              ; preds = %356, %322
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, -1
  br i1 %333, label %334, label %360

334:                                              ; preds = %331
  %335 = load %struct.sge*, %struct.sge** %4, align 8
  %336 = getelementptr inbounds %struct.sge, %struct.sge* %335, i32 0, i32 2
  %337 = load %struct.hw_buf_info*, %struct.hw_buf_info** %336, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %337, i64 %339
  store %struct.hw_buf_info* %340, %struct.hw_buf_info** %16, align 8
  %341 = load %struct.sw_zone_info*, %struct.sw_zone_info** %15, align 8
  %342 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %345 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = sub nsw i32 %343, %346
  store i32 %347, i32* %21, align 4
  %348 = load i32, i32* %21, align 4
  %349 = load i32, i32* @CL_METADATA_SIZE, align 4
  %350 = icmp sge i32 %348, %349
  br i1 %350, label %351, label %355

351:                                              ; preds = %334
  %352 = load i32, i32* %6, align 4
  %353 = load %struct.sge*, %struct.sge** %4, align 8
  %354 = getelementptr inbounds %struct.sge, %struct.sge* %353, i32 0, i32 1
  store i32 %352, i32* %354, align 4
  br label %360

355:                                              ; preds = %334
  br label %356

356:                                              ; preds = %355
  %357 = load %struct.hw_buf_info*, %struct.hw_buf_info** %16, align 8
  %358 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %6, align 4
  br label %331

360:                                              ; preds = %351, %331
  br label %361

361:                                              ; preds = %360, %315
  %362 = load %struct.adapter*, %struct.adapter** %3, align 8
  %363 = getelementptr inbounds %struct.adapter, %struct.adapter* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @IS_VF, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  store i32 0, i32* %2, align 4
  br label %459

369:                                              ; preds = %361
  %370 = call i32 @V_HPZ0(i32 0)
  %371 = call i32 @V_HPZ1(i32 2)
  %372 = or i32 %370, %371
  %373 = call i32 @V_HPZ2(i32 4)
  %374 = or i32 %372, %373
  %375 = call i32 @V_HPZ3(i32 6)
  %376 = or i32 %374, %375
  store i32 %376, i32* %11, align 4
  %377 = load %struct.adapter*, %struct.adapter** %3, align 8
  %378 = load i32, i32* @A_ULP_RX_TDDP_PSZ, align 4
  %379 = call i32 @t4_read_reg(%struct.adapter* %377, i32 %378)
  store i32 %379, i32* %12, align 4
  %380 = load i32, i32* %12, align 4
  %381 = load i32, i32* %11, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %390

383:                                              ; preds = %369
  %384 = load %struct.adapter*, %struct.adapter** %3, align 8
  %385 = getelementptr inbounds %struct.adapter, %struct.adapter* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* %12, align 4
  %388 = call i32 (i32, i8*, ...) @device_printf(i32 %386, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %387)
  %389 = load i32, i32* @EINVAL, align 4
  store i32 %389, i32* %9, align 4
  br label %390

390:                                              ; preds = %383, %369
  %391 = load i32, i32* @F_TDDPTAGTCB, align 4
  store i32 %391, i32* %11, align 4
  store i32 %391, i32* %10, align 4
  %392 = load %struct.adapter*, %struct.adapter** %3, align 8
  %393 = load i32, i32* @A_ULP_RX_CTL, align 4
  %394 = call i32 @t4_read_reg(%struct.adapter* %392, i32 %393)
  store i32 %394, i32* %12, align 4
  %395 = load i32, i32* %12, align 4
  %396 = load i32, i32* %10, align 4
  %397 = and i32 %395, %396
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %407

400:                                              ; preds = %390
  %401 = load %struct.adapter*, %struct.adapter** %3, align 8
  %402 = getelementptr inbounds %struct.adapter, %struct.adapter* %401, i32 0, i32 2
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* %12, align 4
  %405 = call i32 (i32, i8*, ...) @device_printf(i32 %403, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %404)
  %406 = load i32, i32* @EINVAL, align 4
  store i32 %406, i32* %9, align 4
  br label %407

407:                                              ; preds = %400, %390
  %408 = load i32, i32* @M_INDICATESIZE, align 4
  %409 = call i32 @V_INDICATESIZE(i32 %408)
  %410 = load i32, i32* @F_REARMDDPOFFSET, align 4
  %411 = or i32 %409, %410
  %412 = load i32, i32* @F_RESETDDPOFFSET, align 4
  %413 = or i32 %411, %412
  store i32 %413, i32* %10, align 4
  %414 = load i32, i32* %13, align 4
  %415 = call i32 @V_INDICATESIZE(i32 %414)
  %416 = load i32, i32* @F_REARMDDPOFFSET, align 4
  %417 = or i32 %415, %416
  %418 = load i32, i32* @F_RESETDDPOFFSET, align 4
  %419 = or i32 %417, %418
  store i32 %419, i32* %11, align 4
  %420 = load %struct.adapter*, %struct.adapter** %3, align 8
  %421 = load i32, i32* @A_TP_PARA_REG5, align 4
  %422 = call i32 @t4_read_reg(%struct.adapter* %420, i32 %421)
  store i32 %422, i32* %12, align 4
  %423 = load i32, i32* %12, align 4
  %424 = load i32, i32* %10, align 4
  %425 = and i32 %423, %424
  %426 = load i32, i32* %11, align 4
  %427 = icmp ne i32 %425, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %407
  %429 = load %struct.adapter*, %struct.adapter** %3, align 8
  %430 = getelementptr inbounds %struct.adapter, %struct.adapter* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* %12, align 4
  %433 = call i32 (i32, i8*, ...) @device_printf(i32 %431, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %432)
  %434 = load i32, i32* @EINVAL, align 4
  store i32 %434, i32* %9, align 4
  br label %435

435:                                              ; preds = %428, %407
  %436 = load %struct.adapter*, %struct.adapter** %3, align 8
  %437 = call i32 @t4_init_tp_params(%struct.adapter* %436, i32 1)
  %438 = load %struct.adapter*, %struct.adapter** %3, align 8
  %439 = load %struct.adapter*, %struct.adapter** %3, align 8
  %440 = getelementptr inbounds %struct.adapter, %struct.adapter* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 8
  %443 = call i32 @t4_read_mtu_tbl(%struct.adapter* %438, i32 %442, i32* null)
  %444 = load %struct.adapter*, %struct.adapter** %3, align 8
  %445 = load %struct.adapter*, %struct.adapter** %3, align 8
  %446 = getelementptr inbounds %struct.adapter, %struct.adapter* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.adapter*, %struct.adapter** %3, align 8
  %450 = getelementptr inbounds %struct.adapter, %struct.adapter* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.adapter*, %struct.adapter** %3, align 8
  %454 = getelementptr inbounds %struct.adapter, %struct.adapter* %453, i32 0, i32 1
  %455 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @t4_load_mtus(%struct.adapter* %444, i32 %448, i32 %452, i32 %456)
  %458 = load i32, i32* %9, align 4
  store i32 %458, i32* %2, align 4
  br label %459

459:                                              ; preds = %435, %368
  %460 = load i32, i32* %2, align 4
  ret i32 %460
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @nitems(%struct.hw_buf_info*) #1

declare dso_local i64 @hwsz_ok(%struct.adapter*, i32) #1

declare dso_local i32 @m_getzone(i32) #1

declare dso_local i32 @m_gettype(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @powerof2(i32) #1

declare dso_local i32 @V_HPZ0(i32) #1

declare dso_local i32 @V_HPZ1(i32) #1

declare dso_local i32 @V_HPZ2(i32) #1

declare dso_local i32 @V_HPZ3(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @V_INDICATESIZE(i32) #1

declare dso_local i32 @t4_init_tp_params(%struct.adapter*, i32) #1

declare dso_local i32 @t4_read_mtu_tbl(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @t4_load_mtus(%struct.adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

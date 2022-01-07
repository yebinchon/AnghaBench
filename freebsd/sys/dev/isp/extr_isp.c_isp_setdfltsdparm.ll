; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_setdfltsdparm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_setdfltsdparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i8*, %struct.TYPE_18__*, i64, i64, i32, i64, i64 }
%struct.TYPE_18__ = type { i32, i8*, i8*, i8*, i8*, i32, i32, i64, i64, i64, i32 }
%struct.TYPE_20__ = type { i32* }

@ISP_HA_SCSI_1040 = common dso_local global i64 0, align 8
@MAX_TARGETS = common dso_local global i32 0, align 4
@ISP_EXEC_THROTTLE = common dso_local global i32 0, align 4
@DPARM_DEFAULT = common dso_local global i32 0, align 4
@ISP_80M_SYNCPARMS = common dso_local global i32 0, align 4
@ISP_40M_SYNCPARMS = common dso_local global i32 0, align 4
@ISP_20M_SYNCPARMS = common dso_local global i32 0, align 4
@ISP_BT_SBUS = common dso_local global i64 0, align 8
@ISP_HA_SCSI_1020A = common dso_local global i64 0, align 8
@ISP_BT_PCI = common dso_local global i64 0, align 8
@ISP_10M_SYNCPARMS = common dso_local global i32 0, align 4
@ISP_20M_SYNCPARMS_1040 = common dso_local global i32 0, align 4
@ISP_CFG_NONVRAM = common dso_local global i32 0, align 4
@MBOX_GET_ACT_NEG_STATE = common dso_local global i32 0, align 4
@MBLOGNONE = common dso_local global i32 0, align 4
@MBOX_COMMAND_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @isp_setdfltsdparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_setdfltsdparm(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %10 = call %struct.TYPE_19__* @SDPARAM(%struct.TYPE_21__* %9, i32 0)
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %4, align 8
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = call i64 @IS_DUALBUS(%struct.TYPE_21__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i64 1
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %5, align 8
  br label %18

17:                                               ; preds = %1
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %5, align 8
  br label %18

18:                                               ; preds = %17, %14
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 14
  store i64 0, i64* %20, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 13
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %26 = call i8* @DEFAULT_IID(%struct.TYPE_21__* %25, i32 0)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 8
  store i8* %26, i8** %28, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ISP_HA_SCSI_1040, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 1
  store i32 9, i32* %36, align 4
  br label %40

37:                                               ; preds = %18
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  store i32 6, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 2
  store i32 250, i32* %42, align 8
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %44 = call i32 @MAXISPREQUEST(%struct.TYPE_21__* %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 12
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 3
  store i32 8, i32* %48, align 4
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 4
  store i32 5, i32* %50, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 11
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 10
  store i64 0, i64* %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %75, %40
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @MAX_TARGETS, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %55
  %60 = load i32, i32* @ISP_EXEC_THROTTLE, align 4
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 10
  store i32 %60, i32* %67, align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 9
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  br label %75

75:                                               ; preds = %59
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %55

78:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %249, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @MAX_TARGETS, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %252

83:                                               ; preds = %79
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 9
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 9
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 9
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 8
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 9
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 7
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @DPARM_DEFAULT, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 9
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %107, align 8
  %109 = load i32, i32* %3, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 5
  store i32 %105, i32* %112, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 9
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 6
  store i32 %105, i32* %119, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %121 = call i64 @IS_ULTRA3(%struct.TYPE_21__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %83
  %124 = load i32, i32* @ISP_80M_SYNCPARMS, align 4
  %125 = ashr i32 %124, 8
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  store i8* %127, i8** %6, align 8
  %128 = load i32, i32* @ISP_80M_SYNCPARMS, align 4
  %129 = and i32 %128, 255
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  store i8* %131, i8** %7, align 8
  br label %218

132:                                              ; preds = %83
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %134 = call i64 @IS_ULTRA2(%struct.TYPE_21__* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %132
  %137 = load i32, i32* @ISP_40M_SYNCPARMS, align 4
  %138 = ashr i32 %137, 8
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** %6, align 8
  %141 = load i32, i32* @ISP_40M_SYNCPARMS, align 4
  %142 = and i32 %141, 255
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  store i8* %144, i8** %7, align 8
  br label %217

145:                                              ; preds = %132
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %147 = call i64 @IS_1240(%struct.TYPE_21__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* @ISP_20M_SYNCPARMS, align 4
  %151 = ashr i32 %150, 8
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  store i8* %153, i8** %6, align 8
  %154 = load i32, i32* @ISP_20M_SYNCPARMS, align 4
  %155 = and i32 %154, 255
  %156 = sext i32 %155 to i64
  %157 = inttoptr i64 %156 to i8*
  store i8* %157, i8** %7, align 8
  br label %216

158:                                              ; preds = %145
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @ISP_BT_SBUS, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %158
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @ISP_HA_SCSI_1020A, align 8
  %169 = icmp slt i64 %167, %168
  br i1 %169, label %197, label %170

170:                                              ; preds = %164, %158
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @ISP_BT_PCI, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @ISP_HA_SCSI_1040, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %197, label %182

182:                                              ; preds = %176, %170
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %182
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = icmp slt i32 %190, 60
  br i1 %191, label %197, label %192

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %192, %187, %176, %164
  %198 = load i32, i32* @ISP_10M_SYNCPARMS, align 4
  %199 = ashr i32 %198, 8
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  store i8* %201, i8** %6, align 8
  %202 = load i32, i32* @ISP_10M_SYNCPARMS, align 4
  %203 = and i32 %202, 255
  %204 = sext i32 %203 to i64
  %205 = inttoptr i64 %204 to i8*
  store i8* %205, i8** %7, align 8
  br label %215

206:                                              ; preds = %192
  %207 = load i32, i32* @ISP_20M_SYNCPARMS_1040, align 4
  %208 = ashr i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = inttoptr i64 %209 to i8*
  store i8* %210, i8** %6, align 8
  %211 = load i32, i32* @ISP_20M_SYNCPARMS_1040, align 4
  %212 = and i32 %211, 255
  %213 = sext i32 %212 to i64
  %214 = inttoptr i64 %213 to i8*
  store i8* %214, i8** %7, align 8
  br label %215

215:                                              ; preds = %206, %197
  br label %216

216:                                              ; preds = %215, %149
  br label %217

217:                                              ; preds = %216, %136
  br label %218

218:                                              ; preds = %217, %123
  %219 = load i8*, i8** %6, align 8
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 9
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 3
  store i8* %219, i8** %226, align 8
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 9
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = load i32, i32* %3, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %232, i32 0, i32 4
  store i8* %219, i8** %233, align 8
  %234 = load i8*, i8** %7, align 8
  %235 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 9
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %236, align 8
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %240, i32 0, i32 1
  store i8* %234, i8** %241, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 9
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = load i32, i32* %3, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 2
  store i8* %234, i8** %248, align 8
  br label %249

249:                                              ; preds = %218
  %250 = load i32, i32* %3, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %3, align 4
  br label %79

252:                                              ; preds = %79
  %253 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %254 = icmp ne %struct.TYPE_19__* %253, null
  br i1 %254, label %255, label %264

255:                                              ; preds = %252
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %258 = bitcast %struct.TYPE_19__* %256 to i8*
  %259 = bitcast %struct.TYPE_19__* %257 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %258, i8* align 8 %259, i64 96, i1 false)
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %261 = call i8* @DEFAULT_IID(%struct.TYPE_21__* %260, i32 1)
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %262, i32 0, i32 8
  store i8* %261, i8** %263, align 8
  br label %264

264:                                              ; preds = %255, %252
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ISP_CFG_NONVRAM, align 4
  %269 = and i32 %267, %268
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %349

271:                                              ; preds = %264
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %273 = call i64 @isp_read_nvram(%struct.TYPE_21__* %272, i32 0)
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %277 = call i64 @IS_DUALBUS(%struct.TYPE_21__* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %281 = call i64 @isp_read_nvram(%struct.TYPE_21__* %280, i32 1)
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %279
  br label %349

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284, %275
  br label %286

286:                                              ; preds = %285, %271
  %287 = load i32, i32* @MBOX_GET_ACT_NEG_STATE, align 4
  %288 = load i32, i32* @MBLOGNONE, align 4
  %289 = call i32 @MBSINIT(%struct.TYPE_20__* %8, i32 %287, i32 %288, i32 0)
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %291 = call i32 @isp_mboxcmd(%struct.TYPE_21__* %290, %struct.TYPE_20__* %8)
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = getelementptr inbounds i32, i32* %293, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @MBOX_COMMAND_COMPLETE, align 4
  %297 = icmp ne i32 %295, %296
  br i1 %297, label %298, label %311

298:                                              ; preds = %286
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 6
  store i32 1, i32* %300, align 8
  %301 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %301, i32 0, i32 7
  store i32 1, i32* %302, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %304 = icmp ne %struct.TYPE_19__* %303, null
  br i1 %304, label %305, label %310

305:                                              ; preds = %298
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 6
  store i32 1, i32* %307, align 8
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 7
  store i32 1, i32* %309, align 4
  br label %310

310:                                              ; preds = %305, %298
  br label %348

311:                                              ; preds = %286
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 1
  %315 = load i32, i32* %314, align 4
  %316 = ashr i32 %315, 4
  %317 = and i32 %316, 1
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i32 0, i32 6
  store i32 %317, i32* %319, align 8
  %320 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  %323 = load i32, i32* %322, align 4
  %324 = ashr i32 %323, 5
  %325 = and i32 %324, 1
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 7
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %329 = icmp ne %struct.TYPE_19__* %328, null
  br i1 %329, label %330, label %347

330:                                              ; preds = %311
  %331 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 2
  %334 = load i32, i32* %333, align 4
  %335 = ashr i32 %334, 4
  %336 = and i32 %335, 1
  %337 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 6
  store i32 %336, i32* %338, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %8, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 2
  %342 = load i32, i32* %341, align 4
  %343 = ashr i32 %342, 5
  %344 = and i32 %343, 1
  %345 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %345, i32 0, i32 7
  store i32 %344, i32* %346, align 4
  br label %347

347:                                              ; preds = %330, %311
  br label %348

348:                                              ; preds = %347, %310
  br label %349

349:                                              ; preds = %283, %348, %264
  ret void
}

declare dso_local %struct.TYPE_19__* @SDPARAM(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @IS_DUALBUS(%struct.TYPE_21__*) #1

declare dso_local i8* @DEFAULT_IID(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @MAXISPREQUEST(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_ULTRA3(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_ULTRA2(%struct.TYPE_21__*) #1

declare dso_local i64 @IS_1240(%struct.TYPE_21__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @isp_read_nvram(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @MBSINIT(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local i32 @isp_mboxcmd(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

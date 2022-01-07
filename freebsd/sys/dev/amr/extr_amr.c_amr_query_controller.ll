; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_query_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_query_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.amr_enquiry3 = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32* }
%struct.amr_prodinfo = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32, i32*, i32* }
%struct.amr_enquiry = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [24 x i8] c"supports extended CDBs.\00", align 1
@AMR_CMD_CONFIG = common dso_local global i32 0, align 4
@AMR_CONFIG_ENQ3 = common dso_local global i32 0, align 4
@AMR_CONFIG_ENQ3_SOLICITED_FULL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"  drive %d: %d state %x properties %x\0A\00", align 1
@M_AMR = common dso_local global i32 0, align 4
@AMR_CONFIG_PRODUCT_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"can't obtain product data from controller\0A\00", align 1
@AMR_TYPE_40LD = common dso_local global i32 0, align 4
@FC_DEL_LOGDRV = common dso_local global i32 0, align 4
@OP_SUP_DEL_LOGDRV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"delete logical drives supported by controller\0A\00", align 1
@AMR_CMD_EXT_ENQUIRY2 = common dso_local global i32 0, align 4
@AMR_CMD_ENQUIRY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"can't obtain configuration data from controller\0A\00", align 1
@AMR_MAXLD = common dso_local global i32 0, align 4
@AMR_LIMITCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amr_softc*)* @amr_query_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amr_query_controller(%struct.amr_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca %struct.amr_enquiry3*, align 8
  %5 = alloca %struct.amr_prodinfo*, align 8
  %6 = alloca %struct.amr_enquiry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %3, align 8
  %9 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %10 = call i64 @amr_support_ext_cdb(%struct.amr_softc* %9)
  %11 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %12 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %11, i32 0, i32 7
  store i64 %10, i64* %12, align 8
  %13 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %21 = load i32, i32* @AMR_CMD_CONFIG, align 4
  %22 = load i32, i32* @AMR_CONFIG_ENQ3, align 4
  %23 = load i32, i32* @AMR_CONFIG_ENQ3_SOLICITED_FULL, align 4
  %24 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %20, i32 2048, i32 %21, i32 %22, i32 %23, i32* %8)
  %25 = bitcast %struct.amr_prodinfo* %24 to %struct.amr_enquiry3*
  store %struct.amr_enquiry3* %25, %struct.amr_enquiry3** %4, align 8
  %26 = icmp ne %struct.amr_enquiry3* %25, null
  br i1 %26, label %27, label %163

27:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %103, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.amr_enquiry3*, %struct.amr_enquiry3** %4, align 8
  %31 = getelementptr inbounds %struct.amr_enquiry3, %struct.amr_enquiry3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %106

34:                                               ; preds = %28
  %35 = load %struct.amr_enquiry3*, %struct.amr_enquiry3** %4, align 8
  %36 = getelementptr inbounds %struct.amr_enquiry3, %struct.amr_enquiry3* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %43 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %42, i32 0, i32 3
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  %49 = load %struct.amr_enquiry3*, %struct.amr_enquiry3** %4, align 8
  %50 = getelementptr inbounds %struct.amr_enquiry3, %struct.amr_enquiry3* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %57 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %56, i32 0, i32 3
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %55, i32* %62, align 4
  %63 = load %struct.amr_enquiry3*, %struct.amr_enquiry3** %4, align 8
  %64 = getelementptr inbounds %struct.amr_enquiry3, %struct.amr_enquiry3* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %71 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %69, i32* %76, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %79 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %78, i32 0, i32 3
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %87 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %95 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %94, i32 0, i32 3
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %85, i32 %93, i32 %101)
  br label %103

103:                                              ; preds = %34
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %28

106:                                              ; preds = %28
  %107 = load %struct.amr_enquiry3*, %struct.amr_enquiry3** %4, align 8
  %108 = bitcast %struct.amr_enquiry3* %107 to %struct.amr_prodinfo*
  %109 = load i32, i32* @M_AMR, align 4
  %110 = call i32 @free(%struct.amr_prodinfo* %108, i32 %109)
  %111 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %112 = load i32, i32* @AMR_CMD_CONFIG, align 4
  %113 = load i32, i32* @AMR_CONFIG_PRODUCT_INFO, align 4
  %114 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %111, i32 2048, i32 %112, i32 %113, i32 0, i32* %8)
  store %struct.amr_prodinfo* %114, %struct.amr_prodinfo** %5, align 8
  %115 = icmp eq %struct.amr_prodinfo* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %106
  %117 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %118 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %309

121:                                              ; preds = %106
  %122 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %123 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %122, i32 0, i32 0
  store i32 40, i32* %123, align 8
  %124 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %5, align 8
  %125 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %128 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %5, align 8
  %130 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %133 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @AMR_TYPE_40LD, align 4
  %135 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %136 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %5, align 8
  %140 = load i32, i32* @M_AMR, align 4
  %141 = call i32 @free(%struct.amr_prodinfo* %139, i32 %140)
  %142 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %143 = load i32, i32* @FC_DEL_LOGDRV, align 4
  %144 = load i32, i32* @OP_SUP_DEL_LOGDRV, align 4
  %145 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %142, i32 0, i32 %143, i32 %144, i32 0, i32* %8)
  store %struct.amr_prodinfo* %145, %struct.amr_prodinfo** %5, align 8
  %146 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %5, align 8
  %147 = icmp ne %struct.amr_prodinfo* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %121
  %149 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %5, align 8
  %150 = load i32, i32* @M_AMR, align 4
  %151 = call i32 @free(%struct.amr_prodinfo* %149, i32 %150)
  br label %152

152:                                              ; preds = %148, %121
  %153 = load i32, i32* %8, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %162, label %155

155:                                              ; preds = %152
  %156 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %157 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %156, i32 0, i32 1
  store i32 1, i32* %157, align 4
  %158 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %159 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @device_printf(i32 %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %162

162:                                              ; preds = %155, %152
  br label %285

163:                                              ; preds = %19
  %164 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %165 = load i32, i32* @AMR_CMD_EXT_ENQUIRY2, align 4
  %166 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %164, i32 2048, i32 %165, i32 0, i32 0, i32* %8)
  %167 = bitcast %struct.amr_prodinfo* %166 to %struct.amr_enquiry*
  store %struct.amr_enquiry* %167, %struct.amr_enquiry** %6, align 8
  %168 = icmp eq %struct.amr_enquiry* %167, null
  br i1 %168, label %169, label %183

169:                                              ; preds = %163
  %170 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %171 = load i32, i32* @AMR_CMD_ENQUIRY, align 4
  %172 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %170, i32 2048, i32 %171, i32 0, i32 0, i32* %8)
  %173 = bitcast %struct.amr_prodinfo* %172 to %struct.amr_enquiry*
  store %struct.amr_enquiry* %173, %struct.amr_enquiry** %6, align 8
  %174 = icmp eq %struct.amr_enquiry* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %177 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %309

180:                                              ; preds = %169
  %181 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %182 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %181, i32 0, i32 4
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %163
  store i32 0, i32* %7, align 4
  br label %184

184:                                              ; preds = %263, %183
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %187 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %185, %189
  br i1 %190, label %191, label %266

191:                                              ; preds = %184
  %192 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %193 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %201 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %200, i32 0, i32 3
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  store i32 %199, i32* %206, align 4
  %207 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %208 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %216 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %215, i32 0, i32 3
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 2
  store i32 %214, i32* %221, align 4
  %222 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %223 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %231 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %230, i32 0, i32 3
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = load i32, i32* %7, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  store i32 %229, i32* %236, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %239 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %238, i32 0, i32 3
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %247 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %246, i32 0, i32 3
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %255 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %254, i32 0, i32 3
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = call i32 (i32, i8*, ...) @debug(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %237, i32 %245, i32 %253, i32 %261)
  br label %263

263:                                              ; preds = %191
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %184

266:                                              ; preds = %184
  %267 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %268 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %267, i32 0, i32 0
  store i32 8, i32* %268, align 8
  %269 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %270 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %274 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  %275 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %276 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %280 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %279, i32 0, i32 2
  store i32 %278, i32* %280, align 8
  %281 = load %struct.amr_enquiry*, %struct.amr_enquiry** %6, align 8
  %282 = bitcast %struct.amr_enquiry* %281 to %struct.amr_prodinfo*
  %283 = load i32, i32* @M_AMR, align 4
  %284 = call i32 @free(%struct.amr_prodinfo* %282, i32 %283)
  br label %285

285:                                              ; preds = %266, %162
  br label %286

286:                                              ; preds = %298, %285
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @AMR_MAXLD, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %292 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %291, i32 0, i32 3
  %293 = load %struct.TYPE_6__*, %struct.TYPE_6__** %292, align 8
  %294 = load i32, i32* %7, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  store i32 -1, i32* %297, align 4
  br label %298

298:                                              ; preds = %290
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %286

301:                                              ; preds = %286
  %302 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %303 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @AMR_LIMITCMD, align 4
  %306 = call i32 @imin(i32 %304, i32 %305)
  %307 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %308 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %307, i32 0, i32 2
  store i32 %306, i32* %308, align 8
  store i32 0, i32* %2, align 4
  br label %309

309:                                              ; preds = %301, %175, %116
  %310 = load i32, i32* %2, align 4
  ret i32 %310
}

declare dso_local i64 @amr_support_ext_cdb(%struct.amr_softc*) #1

declare dso_local i32 @debug(i32, i8*, ...) #1

declare dso_local %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @free(%struct.amr_prodinfo*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @imin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

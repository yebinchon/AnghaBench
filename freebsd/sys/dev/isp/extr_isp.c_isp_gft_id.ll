; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gft_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_gft_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, i32* }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i8*, i32*, i8*, i32, i32, i32 }
%struct.TYPE_16__ = type { i64*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@ISP_LOGDEBUG0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Chan %d requesting GFT_ID\00", align 1
@ISP_LOGERR = common dso_local global i32 0, align 4
@sacq = common dso_local global i32 0, align 4
@CT_REVISION = common dso_local global i32 0, align 4
@CT_FC_TYPE_FC = common dso_local global i32 0, align 4
@CT_FC_SUBTYPE_NS = common dso_local global i32 0, align 4
@SNS_GFT_ID = common dso_local global i8* null, align 8
@SNS_GFT_ID_RESP_SIZE = common dso_local global i32 0, align 4
@SNS_GXX_ID_REQ_SIZE = common dso_local global i32 0, align 4
@RQRSP_ADDR0015 = common dso_local global i64 0, align 8
@RQRSP_ADDR1631 = common dso_local global i64 0, align 8
@RQRSP_ADDR3247 = common dso_local global i64 0, align 8
@RQRSP_ADDR4863 = common dso_local global i64 0, align 8
@LS_ACC = common dso_local global i64 0, align 8
@FC4_SCSI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Chan %d GFT_ID result is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @isp_gft_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_gft_id(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.TYPE_17__* @FCPARAM(i32* %16, i32 %17)
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %8, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %12, align 8
  store i32 -1, i32* %15, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %4, align 4
  br label %203

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %29, i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @FC_SCRATCH_ACQUIRE(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @ISP_LOGERR, align 4
  %40 = load i32, i32* @sacq, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %38, i32 %39, i8* %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %4, align 4
  br label %203

45:                                               ; preds = %28
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @IS_24XX(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %86

49:                                               ; preds = %45
  %50 = call i32 @ISP_MEMZERO(%struct.TYPE_15__* %9, i32 64)
  %51 = load i32, i32* @CT_REVISION, align 4
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 10
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @CT_FC_TYPE_FC, align 4
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 9
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @CT_FC_SUBTYPE_NS, align 4
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 8
  store i32 %55, i32* %56, align 8
  %57 = load i8*, i8** @SNS_GFT_ID, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 7
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* @SNS_GFT_ID_RESP_SIZE, align 4
  %60 = sext i32 %59 to i64
  %61 = sub i64 %60, 64
  %62 = udiv i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = bitcast i32* %66 to %struct.TYPE_15__*
  %68 = call i32 @isp_put_ct_hdr(i32* %65, %struct.TYPE_15__* %9, %struct.TYPE_15__* %67)
  %69 = load i32*, i32** %12, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 64
  store i32* %70, i32** %11, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = call i32 @ISP_IOZPUT_32(i32* %71, i32 %72, i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @SNS_GFT_ID_RESP_SIZE, align 4
  %78 = call i64 @isp_ct_passthru(i32* %75, i32 %76, i32 68, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %49
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @FC_SCRATCH_RELEASE(i32* %81, i32 %82)
  %84 = load i32, i32* %15, align 4
  store i32 %84, i32* %4, align 4
  br label %203

85:                                               ; preds = %49
  br label %150

86:                                               ; preds = %45
  %87 = load i32, i32* @SNS_GXX_ID_REQ_SIZE, align 4
  %88 = call i32 @ISP_MEMZERO(%struct.TYPE_15__* %10, i32 %87)
  %89 = load i32, i32* @SNS_GFT_ID_RESP_SIZE, align 4
  %90 = ashr i32 %89, 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  store i32 %90, i32* %91, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @DMA_WD0(i32 %94)
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @RQRSP_ADDR0015, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %95, i32* %99, align 4
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @DMA_WD1(i32 %102)
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* @RQRSP_ADDR1631, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %103, i32* %107, align 4
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @DMA_WD2(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @RQRSP_ADDR3247, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @DMA_WD3(i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 6
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @RQRSP_ADDR4863, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %119, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 6, i32* %124, align 8
  %125 = load i8*, i8** @SNS_GFT_ID, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 5
  store i8* %125, i8** %126, align 8
  %127 = load i32, i32* @SNS_GFT_ID_RESP_SIZE, align 4
  %128 = sext i32 %127 to i64
  %129 = sub i64 %128, 64
  %130 = udiv i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %7, align 4
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = load i32*, i32** %5, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = bitcast i32* %136 to %struct.TYPE_15__*
  %138 = call i32 @isp_put_gxx_id_request(i32* %135, %struct.TYPE_15__* %10, %struct.TYPE_15__* %137)
  %139 = load i32*, i32** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @SNS_GFT_ID_RESP_SIZE, align 4
  %142 = call i64 @isp_ct_sns(i32* %139, i32 %140, i32 64, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %86
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @FC_SCRATCH_RELEASE(i32* %145, i32 %146)
  %148 = load i32, i32* %15, align 4
  store i32 %148, i32* %4, align 4
  br label %203

149:                                              ; preds = %86
  br label %150

150:                                              ; preds = %149, %85
  %151 = load i32*, i32** %5, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = bitcast i32* %152 to %struct.TYPE_16__*
  %154 = call i32 @isp_get_gft_id_response(i32* %151, %struct.TYPE_16__* %153, %struct.TYPE_16__* %13)
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @LS_ACC, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %193

160:                                              ; preds = %150
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %174, %160
  %162 = load i32, i32* %14, align 4
  %163 = icmp slt i32 %162, 8
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %14, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 0, i32* %15, align 4
  br label %177

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %14, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %14, align 4
  br label %161

177:                                              ; preds = %172, %161
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i32, i32* @FC4_SCSI, align 4
  %181 = sdiv i32 %180, 32
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i64, i64* %179, i64 %182
  %184 = load i64, i64* %183, align 8
  %185 = load i32, i32* @FC4_SCSI, align 4
  %186 = srem i32 %185, 32
  %187 = zext i32 %186 to i64
  %188 = ashr i64 %184, %187
  %189 = and i64 %188, 1
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %177
  store i32 1, i32* %15, align 4
  br label %192

192:                                              ; preds = %191, %177
  br label %193

193:                                              ; preds = %192, %150
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @FC_SCRATCH_RELEASE(i32* %194, i32 %195)
  %197 = load i32*, i32** %5, align 8
  %198 = load i32, i32* @ISP_LOGDEBUG0, align 4
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* %15, align 4
  %201 = call i32 (i32*, i32, i8*, ...) @isp_prt(i32* %197, i32 %198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load i32, i32* %15, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %193, %144, %80, %37, %26
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_17__* @FCPARAM(i32*, i32) #1

declare dso_local i32 @isp_prt(i32*, i32, i8*, ...) #1

declare dso_local i64 @FC_SCRATCH_ACQUIRE(i32*, i32) #1

declare dso_local i64 @IS_24XX(i32*) #1

declare dso_local i32 @ISP_MEMZERO(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @isp_put_ct_hdr(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @ISP_IOZPUT_32(i32*, i32, i32*) #1

declare dso_local i64 @isp_ct_passthru(i32*, i32, i32, i32) #1

declare dso_local i32 @FC_SCRATCH_RELEASE(i32*, i32) #1

declare dso_local i32 @DMA_WD0(i32) #1

declare dso_local i32 @DMA_WD1(i32) #1

declare dso_local i32 @DMA_WD2(i32) #1

declare dso_local i32 @DMA_WD3(i32) #1

declare dso_local i32 @isp_put_gxx_id_request(i32*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i64 @isp_ct_sns(i32*, i32, i32, i32) #1

declare dso_local i32 @isp_get_gft_id_response(i32*, %struct.TYPE_16__*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

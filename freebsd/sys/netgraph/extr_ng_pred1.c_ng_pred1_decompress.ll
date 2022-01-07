; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_decompress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_pred1.c_ng_pred1_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@PRED1_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"ng_pred1: Comp length error (%d) --> len (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@PPP_INITFCS = common dso_local global i32 0, align 4
@PPP_GOODFCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ng_pred1: Pred1: Bad CRC-16\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"ng_pred1: Uncomp length error (%d) --> len (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mbuf*, %struct.mbuf**)* @ng_pred1_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_pred1_decompress(i32 %0, %struct.mbuf* %1, %struct.mbuf** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.TYPE_7__* @NG_NODE_PRIVATE(i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  %17 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* null, %struct.mbuf** %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PRED1_BUF_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = call i32 @NG_FREE_M(%struct.mbuf* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %4, align 4
  br label %241

34:                                               ; preds = %3
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call %struct.mbuf* @m_unshare(%struct.mbuf* %35, i32 %36)
  store %struct.mbuf* %37, %struct.mbuf** %6, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = icmp eq %struct.mbuf* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ENOMEM, align 4
  store i32 %46, i32* %4, align 4
  br label %241

47:                                               ; preds = %34
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = ptrtoint i32* %52 to i32
  %54 = call i32 @m_copydata(%struct.mbuf* %48, i32 0, i32 %49, i32 %53)
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %55
  store i32 %60, i32* %58, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  store i32 %66, i32* %10, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 32768
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, 32767
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %191

80:                                               ; preds = %47
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %94, 4
  %96 = load i32, i32* @PRED1_BUF_SIZE, align 4
  %97 = call i32 @Pred1Decompress(i32 %86, i32* %90, i32* %93, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %114

101:                                              ; preds = %80
  %102 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %103 = call i32 @m_freem(%struct.mbuf* %102)
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* @LOG_NOTICE, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i32, i8*, ...) @log(i32 %109, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @EIO, align 4
  store i32 %113, i32* %4, align 4
  br label %241

114:                                              ; preds = %80
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @htons(i32 %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* @PPP_INITFCS, align 4
  %118 = call i32 @Crc16(i32 %117, i32* %13, i32 2)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @Crc16(i32 %119, i32* %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = getelementptr inbounds i32, i32* %131, i64 -2
  %133 = call i32 @Crc16(i32 %125, i32* %132, i32 2)
  store i32 %133, i32* %14, align 4
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @PPP_GOODFCS, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %114
  %138 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %139 = call i32 @m_freem(%struct.mbuf* %138)
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* @LOG_NOTICE, align 4
  %146 = call i32 (i32, i8*, ...) @log(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @EIO, align 4
  store i32 %147, i32* %4, align 4
  br label %241

148:                                              ; preds = %114
  %149 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = ptrtoint i32* %153 to i32
  %155 = call i32 @m_copyback(%struct.mbuf* %149, i32 0, i32 %150, i32 %154)
  %156 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %157 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %148
  %163 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %164 = call i32 @m_freem(%struct.mbuf* %163)
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* @ENOMEM, align 4
  store i32 %170, i32* %4, align 4
  br label %241

171:                                              ; preds = %148
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %174 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp slt i32 %172, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %171
  %179 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %182 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = sub nsw i32 %180, %184
  %186 = call i32 @m_adj(%struct.mbuf* %179, i32 %185)
  br label %187

187:                                              ; preds = %178, %171
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %190 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %189, %struct.mbuf** %190, align 8
  br label %229

191:                                              ; preds = %47
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, 4
  %200 = icmp ne i32 %197, %199
  br i1 %200, label %201, label %215

201:                                              ; preds = %191
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @LOG_NOTICE, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %9, align 4
  %210 = sub nsw i32 %209, 4
  %211 = call i32 (i32, i8*, ...) @log(i32 %207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %208, i32 %210)
  %212 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %213 = call i32 @NG_FREE_M(%struct.mbuf* %212)
  %214 = load i32, i32* @EIO, align 4
  store i32 %214, i32* %4, align 4
  br label %241

215:                                              ; preds = %191
  %216 = load i32, i32* %5, align 4
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  %221 = load i32, i32* %10, align 4
  %222 = call i32 @Pred1SyncTable(i32 %216, i32* %220, i32 %221)
  %223 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %224 = call i32 @m_adj(%struct.mbuf* %223, i32 2)
  %225 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %226 = call i32 @m_adj(%struct.mbuf* %225, i32 -2)
  %227 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %228 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %227, %struct.mbuf** %228, align 8
  br label %229

229:                                              ; preds = %215, %188
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* %10, align 4
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, %235
  store i32 %240, i32* %238, align 4
  store i32 0, i32* %4, align 4
  br label %241

241:                                              ; preds = %229, %201, %162, %137, %101, %40, %25
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local %struct.TYPE_7__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_unshare(%struct.mbuf*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @Pred1Decompress(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @log(i32, i8*, ...) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @Crc16(i32, i32*, i32) #1

declare dso_local i32 @m_copyback(%struct.mbuf*, i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @Pred1SyncTable(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

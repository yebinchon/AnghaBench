; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_update_dsack_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_sack.c_tcp_update_dsack_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32, %struct.sackblk*, %struct.TYPE_4__* }
%struct.sackblk = type { i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAX_SACK_BLKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"rcv_start < rcv_end\00", align 1
@SO_DEBUG = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"\0ADSACK update: %d..%d, rcv_nxt: %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_update_dsack_list(%struct.tcpcb* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sackblk, align 8
  %8 = alloca %struct.sackblk, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load i32, i32* @MAX_SACK_BLKS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca %struct.sackblk, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %22 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__* %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @SEQ_LT(i64 %25, i64 %26)
  %28 = call i32 @KASSERT(i64 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %30 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SO_DEBUG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %3
  %40 = load i32, i32* @LOG_DEBUG, align 4
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %44 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @log(i32 %40, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %41, i64 %42, i64 %45)
  br label %47

47:                                               ; preds = %39, %3
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %50 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @SEQ_LT(i64 %48, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %76, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %57 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %62 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %67 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %66, i32 0, i32 2
  %68 = load %struct.sackblk*, %struct.sackblk** %67, align 8
  %69 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %68, i64 0
  %70 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %71, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %65, %47
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %79 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %82 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 16
  br label %88

83:                                               ; preds = %65, %60, %54
  %84 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %85 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %84, i32 0, i32 0
  store i64 0, i64* %85, align 16
  %86 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %87 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %83, %76
  %89 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 0, i64* %90, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load i64, i64* %6, align 8
  %94 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  store i64 %93, i64* %94, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %217, %88
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %98 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %220

101:                                              ; preds = %95
  %102 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %103 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %102, i32 0, i32 2
  %104 = load %struct.sackblk*, %struct.sackblk** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %104, i64 %106
  %108 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %15, align 8
  %110 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %111 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %110, i32 0, i32 2
  %112 = load %struct.sackblk*, %struct.sackblk** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %112, i64 %114
  %116 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* %6, align 8
  %119 = load i64, i64* %15, align 8
  %120 = call i64 @SEQ_LT(i64 %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %101
  br label %217

123:                                              ; preds = %101
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* %16, align 8
  %126 = call i64 @SEQ_GT(i64 %124, i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %217

129:                                              ; preds = %123
  %130 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %131 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i64 @SEQ_GT(i64 %132, i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %168

136:                                              ; preds = %129
  %137 = load i64, i64* %5, align 8
  %138 = load i64, i64* %15, align 8
  %139 = call i64 @SEQ_MAX(i64 %137, i64 %138)
  %140 = load i64, i64* %6, align 8
  %141 = load i64, i64* %16, align 8
  %142 = call i64 @SEQ_MIN(i64 %140, i64 %141)
  %143 = icmp ne i64 %139, %142
  br i1 %143, label %144, label %167

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load i64, i64* %15, align 8
  %149 = call i64 @SEQ_MAX(i64 %147, i64 %148)
  %150 = call i64 @SEQ_GT(i64 %146, i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %154, %156
  br i1 %157, label %158, label %167

158:                                              ; preds = %152, %144
  %159 = load i64, i64* %5, align 8
  %160 = load i64, i64* %15, align 8
  %161 = call i64 @SEQ_MAX(i64 %159, i64 %160)
  %162 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 %161, i64* %162, align 8
  %163 = load i64, i64* %6, align 8
  %164 = load i64, i64* %16, align 8
  %165 = call i64 @SEQ_MIN(i64 %163, i64 %164)
  %166 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 %165, i64* %166, align 8
  br label %167

167:                                              ; preds = %158, %152, %136
  br label %217

168:                                              ; preds = %129
  %169 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %170, %172
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load i64, i64* %15, align 8
  %176 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = call i64 @SEQ_LT(i64 %175, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %174, %168
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %5, align 8
  %183 = call i64 @SEQ_GT(i64 %181, i64 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %6, align 8
  %188 = call i64 @SEQ_LEQ(i64 %186, i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i64, i64* %15, align 8
  %192 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  store i64 %191, i64* %192, align 8
  %193 = load i64, i64* %16, align 8
  %194 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  store i64 %193, i64* %194, align 8
  br label %195

195:                                              ; preds = %190, %185, %180, %174
  %196 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %15, align 8
  %199 = call i64 @SEQ_MIN(i64 %197, i64 %198)
  %200 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  store i64 %199, i64* %200, align 8
  %201 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %16, align 8
  %204 = call i64 @SEQ_MAX(i64 %202, i64 %203)
  %205 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  store i64 %204, i64* %205, align 8
  %206 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %15, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %195
  %211 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* %16, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  store i32 1, i32* %14, align 4
  br label %216

216:                                              ; preds = %215, %210, %195
  br label %217

217:                                              ; preds = %216, %167, %128, %122
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %95

220:                                              ; preds = %95
  %221 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @SEQ_LT(i64 %222, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load i64, i64* %5, align 8
  %229 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i64 @SEQ_MAX(i64 %228, i64 %230)
  %232 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %233 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load i64, i64* %6, align 8
  %235 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %7, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i64 @SEQ_MIN(i64 %234, i64 %236)
  %238 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %239 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 16
  br label %240

240:                                              ; preds = %227, %220
  store i32 1, i32* %13, align 4
  %241 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %242 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i64 @SEQ_LT(i64 %243, i64 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %262

248:                                              ; preds = %240
  %249 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %252 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = icmp eq i64 %250, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 0
  %259 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 16
  %261 = icmp eq i64 %257, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %255, %240
  %263 = load i32, i32* %14, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %279

265:                                              ; preds = %262, %255, %248
  %266 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %267 = load i64, i64* %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %269
  %271 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %270, i32 0, i32 1
  store i64 %267, i64* %271, align 8
  %272 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %13, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %13, align 4
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %276
  %278 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %277, i32 0, i32 0
  store i64 %273, i64* %278, align 16
  br label %279

279:                                              ; preds = %265, %262
  store i32 0, i32* %12, align 4
  br label %280

280:                                              ; preds = %346, %279
  %281 = load i32, i32* %12, align 4
  %282 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %283 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = icmp slt i32 %281, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %280
  %287 = load i32, i32* %13, align 4
  %288 = load i32, i32* @MAX_SACK_BLKS, align 4
  %289 = icmp slt i32 %287, %288
  br label %290

290:                                              ; preds = %286, %280
  %291 = phi i1 [ false, %280 ], [ %289, %286 ]
  br i1 %291, label %292, label %349

292:                                              ; preds = %290
  %293 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %294 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %293, i32 0, i32 2
  %295 = load %struct.sackblk*, %struct.sackblk** %294, align 8
  %296 = load i32, i32* %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %295, i64 %297
  %299 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = call i64 @SEQ_LT(i64 %300, i64 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %318, label %305

305:                                              ; preds = %292
  %306 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %307 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %306, i32 0, i32 2
  %308 = load %struct.sackblk*, %struct.sackblk** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %308, i64 %310
  %312 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %8, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = call i64 @SEQ_GT(i64 %313, i64 %315)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %345

318:                                              ; preds = %305, %292
  %319 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %320 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %319, i32 0, i32 2
  %321 = load %struct.sackblk*, %struct.sackblk** %320, align 8
  %322 = load i32, i32* %12, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %321, i64 %323
  %325 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %324, i32 0, i32 1
  %326 = load i64, i64* %325, align 8
  %327 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %328 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = call i64 @SEQ_GT(i64 %326, i64 %329)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %345

332:                                              ; preds = %318
  %333 = load i32, i32* %13, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %13, align 4
  %335 = sext i32 %333 to i64
  %336 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %335
  %337 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %338 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %337, i32 0, i32 2
  %339 = load %struct.sackblk*, %struct.sackblk** %338, align 8
  %340 = load i32, i32* %12, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %339, i64 %341
  %343 = bitcast %struct.sackblk* %336 to i8*
  %344 = bitcast %struct.sackblk* %342 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %343, i8* align 8 %344, i64 16, i1 false)
  br label %345

345:                                              ; preds = %332, %318, %305
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %12, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %12, align 4
  br label %280

349:                                              ; preds = %290
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %350

350:                                              ; preds = %381, %349
  %351 = load i32, i32* %11, align 4
  %352 = load i32, i32* %13, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %384

354:                                              ; preds = %350
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %356
  %358 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %361
  %363 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 16
  %365 = call i64 @SEQ_LT(i64 %359, i64 %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %380

367:                                              ; preds = %354
  %368 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %369 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %368, i32 0, i32 2
  %370 = load %struct.sackblk*, %struct.sackblk** %369, align 8
  %371 = load i32, i32* %12, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %12, align 4
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %370, i64 %373
  %375 = load i32, i32* %11, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.sackblk, %struct.sackblk* %20, i64 %376
  %378 = bitcast %struct.sackblk* %374 to i8*
  %379 = bitcast %struct.sackblk* %377 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %378, i8* align 16 %379, i64 16, i1 false)
  br label %380

380:                                              ; preds = %367, %354
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %11, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %11, align 4
  br label %350

384:                                              ; preds = %350
  %385 = load i32, i32* %12, align 4
  %386 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %387 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %386, i32 0, i32 1
  store i32 %385, i32* %387, align 8
  %388 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %388)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.TYPE_4__*) #2

declare dso_local i32 @KASSERT(i64, i8*) #2

declare dso_local i64 @SEQ_LT(i64, i64) #2

declare dso_local i32 @log(i32, i8*, i64, i64, i64) #2

declare dso_local i64 @SEQ_GT(i64, i64) #2

declare dso_local i64 @SEQ_MAX(i64, i64) #2

declare dso_local i64 @SEQ_MIN(i64, i64) #2

declare dso_local i64 @SEQ_LEQ(i64, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

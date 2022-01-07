; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_prepare_nego.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_prepare_nego.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_15__*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i32 }

@FE_U3EN = common dso_local global i32 0, align 4
@PPR_OPT_MASK = common dso_local global i32 0, align 4
@M_EXTENDED = common dso_local global i32 0, align 4
@M_X_SYNC_REQ = common dso_local global i32 0, align 4
@M_X_WIDE_REQ = common dso_local global i32 0, align 4
@M_X_PPR_REQ = common dso_local global i32 0, align 4
@PPR_OPT_DT = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_NEGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sync msgout\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"wide msgout\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"ppr msgout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32, i32*)* @sym_prepare_nego to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sym_prepare_nego(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i64 %16
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FE_U3EN, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %24, %4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PPR_OPT_MASK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 130, i32* %7, align 4
  br label %79

39:                                               ; preds = %29
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 128, i32* %7, align 4
  br label %78

52:                                               ; preds = %39
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %57, %62
  br i1 %63, label %76, label %64

64:                                               ; preds = %52
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %69, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %64, %52
  store i32 129, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %51
  br label %79

79:                                               ; preds = %78, %38
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %218 [
    i32 129, label %81
    i32 128, label %121
    i32 130, label %150
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* @M_EXTENDED, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  store i32 %82, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  store i32 3, i32* %92, align 4
  %93 = load i32, i32* @M_X_SYNC_REQ, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32*, i32** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  %119 = sext i32 %117 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %218

121:                                              ; preds = %79
  %122 = load i32, i32* @M_EXTENDED, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  %131 = sext i32 %129 to i64
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  store i32 2, i32* %132, align 4
  %133 = load i32, i32* @M_X_WIDE_REQ, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load i32*, i32** %8, align 8
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %144, i32* %149, align 4
  br label %218

150:                                              ; preds = %79
  %151 = load i32, i32* @M_EXTENDED, align 4
  %152 = load i32*, i32** %8, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  store i32 %151, i32* %156, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = load i32, i32* %10, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %10, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  store i32 6, i32* %161, align 4
  %162 = load i32, i32* @M_X_PPR_REQ, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  %166 = sext i32 %164 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = trunc i64 %172 to i32
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  store i32 %173, i32* %178, align 4
  %179 = load i32*, i32** %8, align 8
  %180 = load i32, i32* %10, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %10, align 4
  %182 = sext i32 %180 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  store i32 0, i32* %183, align 4
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32 %189, i32* %194, align 4
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  %204 = sext i32 %202 to i64
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  store i32 %200, i32* %205, align 4
  %206 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @PPR_OPT_DT, align 4
  %212 = and i32 %210, %211
  %213 = load i32*, i32** %8, align 8
  %214 = load i32, i32* %10, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %10, align 4
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  store i32 %212, i32* %217, align 4
  br label %218

218:                                              ; preds = %79, %150, %121, %81
  %219 = load i32, i32* %7, align 4
  %220 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* %7, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %247

224:                                              ; preds = %218
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  store %struct.TYPE_15__* %225, %struct.TYPE_15__** %227, align 8
  %228 = load i32, i32* @DEBUG_FLAGS, align 4
  %229 = load i32, i32* @DEBUG_NEGO, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %246

232:                                              ; preds = %224
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %234 = load i32, i32* %7, align 4
  %235 = icmp eq i32 %234, 129
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %242

237:                                              ; preds = %232
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 128
  %240 = zext i1 %239 to i64
  %241 = select i1 %239, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  br label %242

242:                                              ; preds = %237, %236
  %243 = phi i8* [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %236 ], [ %241, %237 ]
  %244 = load i32*, i32** %8, align 8
  %245 = call i32 @sym_print_msg(%struct.TYPE_15__* %233, i8* %243, i32* %244)
  br label %246

246:                                              ; preds = %242, %224
  br label %247

247:                                              ; preds = %246, %218
  %248 = load i32, i32* %10, align 4
  ret i32 %248
}

declare dso_local i32 @sym_print_msg(%struct.TYPE_15__*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

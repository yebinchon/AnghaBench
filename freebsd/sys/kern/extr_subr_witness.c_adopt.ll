; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_adopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_adopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.witness = type { i32, i32, i32 }

@witness_cold = common dso_local global i64 0, align 8
@w_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@WITNESS_PARENT = common dso_local global i32 0, align 4
@w_rmatrix = common dso_local global i32** null, align 8
@WITNESS_CHILD = common dso_local global i32 0, align 4
@WITNESS_ANCESTOR = common dso_local global i32 0, align 4
@w_max_used_index = common dso_local global i32 0, align 4
@WITNESS_ANCESTOR_MASK = common dso_local global i32 0, align 4
@WITNESS_DESCENDANT = common dso_local global i32 0, align 4
@w_data = common dso_local global %struct.TYPE_2__* null, align 8
@WITNESS_DESCENDANT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"witness rmatrix paradox! [%d][%d]=%d both ancestor and descendant\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Witness disabled.\0A\00", align 1
@witness_watch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.witness*, %struct.witness*)* @adopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adopt(%struct.witness* %0, %struct.witness* %1) #0 {
  %3 = alloca %struct.witness*, align 8
  %4 = alloca %struct.witness*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.witness* %0, %struct.witness** %3, align 8
  store %struct.witness* %1, %struct.witness** %4, align 8
  %9 = load i64, i64* @witness_cold, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @mtx_assert(i32* @w_mtx, i32 %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.witness*, %struct.witness** %3, align 8
  %16 = load %struct.witness*, %struct.witness** %4, align 8
  %17 = call i64 @isitmychild(%struct.witness* %15, %struct.witness* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %266

20:                                               ; preds = %14
  %21 = call i32 (...) @witness_increment_graph_generation()
  %22 = load %struct.witness*, %struct.witness** %3, align 8
  %23 = getelementptr inbounds %struct.witness, %struct.witness* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  %25 = load %struct.witness*, %struct.witness** %4, align 8
  %26 = getelementptr inbounds %struct.witness, %struct.witness* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @WITNESS_INDEX_ASSERT(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WITNESS_INDEX_ASSERT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @MPASS(i32 %35)
  %37 = load i32, i32* @WITNESS_PARENT, align 4
  %38 = load i32**, i32*** @w_rmatrix, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %37
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @WITNESS_CHILD, align 4
  %49 = load i32**, i32*** @w_rmatrix, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %48
  store i32 %58, i32* %56, align 4
  %59 = load i32**, i32*** @w_rmatrix, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @WITNESS_ANCESTOR, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %20
  %72 = load %struct.witness*, %struct.witness** %3, align 8
  %73 = getelementptr inbounds %struct.witness, %struct.witness* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.witness*, %struct.witness** %4, align 8
  %77 = getelementptr inbounds %struct.witness, %struct.witness* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %71, %20
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %263, %80
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @w_max_used_index, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %266

85:                                               ; preds = %81
  %86 = load i32**, i32*** @w_rmatrix, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @WITNESS_ANCESTOR_MASK, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %85
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %263

103:                                              ; preds = %98, %85
  store i32 1, i32* %8, align 4
  br label %104

104:                                              ; preds = %259, %103
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @w_max_used_index, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %262

108:                                              ; preds = %104
  %109 = load i32**, i32*** @w_rmatrix, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @WITNESS_ANCESTOR_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  br label %259

122:                                              ; preds = %108
  %123 = load i32**, i32*** @w_rmatrix, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @WITNESS_ANCESTOR_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  br label %259

140:                                              ; preds = %135, %122
  %141 = load i32, i32* @WITNESS_ANCESTOR, align 4
  %142 = load i32**, i32*** @w_rmatrix, align 8
  %143 = load i32, i32* %7, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32*, i32** %142, i64 %144
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %141
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @WITNESS_DESCENDANT, align 4
  %153 = load i32**, i32*** @w_rmatrix, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32*, i32** %153, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %152
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** @w_data, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** @w_data, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load i32**, i32*** @w_rmatrix, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @WITNESS_ANCESTOR_MASK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %217

189:                                              ; preds = %140
  %190 = load i32**, i32*** @w_rmatrix, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @WITNESS_DESCENDANT_MASK, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %217

202:                                              ; preds = %189
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %8, align 4
  %205 = load i32**, i32*** @w_rmatrix, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %203, i32 %204, i32 %213)
  %215 = call i32 (...) @kdb_backtrace()
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @witness_watch, align 4
  br label %217

217:                                              ; preds = %202, %189, %140
  %218 = load i32**, i32*** @w_rmatrix, align 8
  %219 = load i32, i32* %8, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i32, i32* %222, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @WITNESS_ANCESTOR_MASK, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %258

230:                                              ; preds = %217
  %231 = load i32**, i32*** @w_rmatrix, align 8
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @WITNESS_DESCENDANT_MASK, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %258

243:                                              ; preds = %230
  %244 = load i32, i32* %8, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32**, i32*** @w_rmatrix, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* %7, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %244, i32 %245, i32 %254)
  %256 = call i32 (...) @kdb_backtrace()
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* @witness_watch, align 4
  br label %258

258:                                              ; preds = %243, %230, %217
  br label %259

259:                                              ; preds = %258, %139, %121
  %260 = load i32, i32* %8, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %8, align 4
  br label %104

262:                                              ; preds = %104
  br label %263

263:                                              ; preds = %262, %102
  %264 = load i32, i32* %7, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %7, align 4
  br label %81

266:                                              ; preds = %19, %81
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @isitmychild(%struct.witness*, %struct.witness*) #1

declare dso_local i32 @witness_increment_graph_generation(...) #1

declare dso_local i32 @WITNESS_INDEX_ASSERT(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @kdb_backtrace(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

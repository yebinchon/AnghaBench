; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_calc_eclosure_iter.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_calc_eclosure_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i64* }
%struct.TYPE_13__ = type { i32, i64, i32 }

@REG_NOERROR = common dso_local global i64 0, align 8
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*, %struct.TYPE_16__*, i32, i32)* @calc_eclosure_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_eclosure_iter(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = call i64 @re_node_set_alloc(%struct.TYPE_15__* %12, i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* @REG_NOERROR, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @BE(i32 %30, i32 0)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  store i64 %34, i64* %5, align 8
  br label %247

35:                                               ; preds = %4
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 4
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %35
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %52
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %64, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 1
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %103, label %80

80:                                               ; preds = %62
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @duplicate_node_closure(%struct.TYPE_16__* %81, i32 %82, i32 %83, i32 %84, i64 %92)
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* @REG_NOERROR, align 8
  %96 = icmp ne i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i64 @BE(i32 %97, i32 0)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %80
  %101 = load i64, i64* %10, align 8
  store i64 %101, i64* %5, align 8
  br label %247

102:                                              ; preds = %80
  br label %103

103:                                              ; preds = %102, %62, %52, %35
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @IS_EPSILON_NODE(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %209

114:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %205, %114
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp slt i32 %116, %124
  br i1 %125, label %126, label %208

126:                                              ; preds = %115
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %16, align 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %141, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %150

149:                                              ; preds = %126
  store i32 1, i32* %14, align 4
  br label %205

150:                                              ; preds = %126
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %150
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = load i32, i32* %16, align 4
  %163 = call i64 @calc_eclosure_iter(%struct.TYPE_15__* %15, %struct.TYPE_16__* %161, i32 %162, i32 0)
  store i64 %163, i64* %10, align 8
  %164 = load i64, i64* %10, align 8
  %165 = load i64, i64* @REG_NOERROR, align 8
  %166 = icmp ne i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i64 @BE(i32 %167, i32 0)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %160
  %171 = load i64, i64* %10, align 8
  store i64 %171, i64* %5, align 8
  br label %247

172:                                              ; preds = %160
  br label %182

173:                                              ; preds = %150
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = load i32, i32* %16, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i64 %178
  %180 = bitcast %struct.TYPE_15__* %15 to i8*
  %181 = bitcast %struct.TYPE_15__* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %180, i8* align 4 %181, i64 4, i1 false)
  br label %182

182:                                              ; preds = %173, %172
  %183 = call i64 @re_node_set_merge(%struct.TYPE_15__* %12, %struct.TYPE_15__* %15)
  store i64 %183, i64* %10, align 8
  %184 = load i64, i64* %10, align 8
  %185 = load i64, i64* @REG_NOERROR, align 8
  %186 = icmp ne i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i64 @BE(i32 %187, i32 0)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = load i64, i64* %10, align 8
  store i64 %191, i64* %5, align 8
  br label %247

192:                                              ; preds = %182
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = load i32, i32* %16, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %192
  store i32 1, i32* %14, align 4
  %203 = call i32 @re_node_set_free(%struct.TYPE_15__* %15)
  br label %204

204:                                              ; preds = %202, %192
  br label %205

205:                                              ; preds = %204, %149
  %206 = load i32, i32* %11, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %11, align 4
  br label %115

208:                                              ; preds = %115
  br label %209

209:                                              ; preds = %208, %103
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @re_node_set_insert(%struct.TYPE_15__* %12, i32 %210)
  store i32 %211, i32* %13, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp slt i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = call i64 @BE(i32 %214, i32 0)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %209
  %218 = load i64, i64* @REG_ESPACE, align 8
  store i64 %218, i64* %5, align 8
  br label %247

219:                                              ; preds = %209
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %219
  %223 = load i32, i32* %9, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %233, label %225

225:                                              ; preds = %222
  %226 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 0
  store i32 0, i32* %232, align 4
  br label %242

233:                                              ; preds = %222, %219
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i64 %238
  %240 = bitcast %struct.TYPE_15__* %239 to i8*
  %241 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %240, i8* align 4 %241, i64 4, i1 false)
  br label %242

242:                                              ; preds = %233, %225
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %244 = bitcast %struct.TYPE_15__* %243 to i8*
  %245 = bitcast %struct.TYPE_15__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %244, i8* align 4 %245, i64 4, i1 false)
  %246 = load i64, i64* @REG_NOERROR, align 8
  store i64 %246, i64* %5, align 8
  br label %247

247:                                              ; preds = %242, %217, %190, %170, %100, %33
  %248 = load i64, i64* %5, align 8
  ret i64 %248
}

declare dso_local i64 @re_node_set_alloc(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i64 @duplicate_node_closure(%struct.TYPE_16__*, i32, i32, i32, i64) #1

declare dso_local i64 @IS_EPSILON_NODE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @re_node_set_merge(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local i32 @re_node_set_free(%struct.TYPE_15__*) #1

declare dso_local i32 @re_node_set_insert(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

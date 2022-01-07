; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateActorMovement_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneUpdateActorMovement_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32, i32 }

@actors = common dso_local global %struct.TYPE_6__* null, align 8
@update_dir = common dso_local global i32 0, align 4
@script_ptr = common dso_local global i64 0, align 8
@actor_move_settings = common dso_local global i32 0, align 4
@ACTOR_NOCLIP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@check_triggers = common dso_local global i8* null, align 8
@scene_num_actors = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@scene_width = common dso_local global i64 0, align 8
@scene_height = common dso_local global i64 0, align 8
@ACTOR_MAX_Y = common dso_local global i64 0, align 8
@scene_col_tiles = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneUpdateActorMovement_b(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %8 = load i64, i64* %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* @update_dir, align 4
  %12 = call i32 @memcpy(%struct.TYPE_5__* %10, i32 %11, i32 4)
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @SceneRenderActor_b(i64 %13)
  %15 = load i64, i64* @script_ptr, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %1
  %18 = load i32, i32* @actor_move_settings, align 4
  %19 = load i32, i32* @ACTOR_NOCLIP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load i64, i64* %2, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i8*, i8** @TRUE, align 8
  store i8* %26, i8** @check_triggers, align 8
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i8*, i8** @TRUE, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %30 = load i64, i64* %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  br label %219

33:                                               ; preds = %17, %1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %35 = load i64, i64* %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @DIV_8(i64 %39)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %42 = load i64, i64* %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add i64 %40, %47
  store i64 %48, i64* %3, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %50 = load i64, i64* %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @DIV_8(i64 %54)
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %55, %62
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* %2, align 8
  %65 = load i64, i64* %3, align 8
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @SceneNpcAt_b(i64 %64, i64 %65, i64 %66)
  store i64 %67, i64* %5, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @scene_num_actors, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %33
  %72 = load i8*, i8** @FALSE, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %74 = load i64, i64* %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i8* %72, i8** %76, align 8
  br label %219

77:                                               ; preds = %33
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %79 = load i64, i64* %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load i64, i64* %3, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i8*, i8** @FALSE, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %91 = load i64, i64* %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i8* %89, i8** %93, align 8
  br label %219

94:                                               ; preds = %85, %77
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %96 = load i64, i64* %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %112

102:                                              ; preds = %94
  %103 = load i64, i64* %3, align 8
  %104 = load i64, i64* @scene_width, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %109 = load i64, i64* %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i8* %107, i8** %111, align 8
  br label %219

112:                                              ; preds = %102, %94
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %114 = load i64, i64* %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load i64, i64* %4, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i8*, i8** @FALSE, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %126 = load i64, i64* %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  br label %219

129:                                              ; preds = %120, %112
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %131 = load i64, i64* %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %157

137:                                              ; preds = %129
  %138 = load i64, i64* %4, align 8
  %139 = load i64, i64* @scene_height, align 8
  %140 = add i64 %139, 1
  %141 = icmp eq i64 %138, %140
  br i1 %141, label %151, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %144 = load i64, i64* %2, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ACTOR_MAX_Y, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %142, %137
  %152 = load i8*, i8** @FALSE, align 8
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %154 = load i64, i64* %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  br label %219

157:                                              ; preds = %142, %129
  %158 = load i64, i64* @scene_width, align 8
  %159 = load i64, i64* %4, align 8
  %160 = sub i64 %159, 1
  %161 = mul i64 %158, %160
  %162 = load i64, i64* %3, align 8
  %163 = sub i64 %162, 1
  %164 = add i64 %161, %163
  store i64 %164, i64* %6, align 8
  %165 = load i32*, i32** @scene_col_tiles, align 8
  %166 = load i64, i64* %6, align 8
  %167 = lshr i64 %166, 3
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %6, align 8
  %171 = and i64 %170, 7
  %172 = trunc i64 %171 to i32
  %173 = shl i32 1, %172
  %174 = and i32 %169, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %157
  %177 = load i8*, i8** @FALSE, align 8
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %179 = load i64, i64* %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  store i8* %177, i8** %181, align 8
  br label %219

182:                                              ; preds = %157
  %183 = load i64, i64* @scene_width, align 8
  %184 = load i64, i64* %4, align 8
  %185 = sub i64 %184, 1
  %186 = mul i64 %183, %185
  %187 = load i64, i64* %3, align 8
  %188 = sub i64 %187, 1
  %189 = add i64 %186, %188
  %190 = add i64 %189, 1
  store i64 %190, i64* %6, align 8
  %191 = load i32*, i32** @scene_col_tiles, align 8
  %192 = load i64, i64* %6, align 8
  %193 = lshr i64 %192, 3
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = load i64, i64* %6, align 8
  %197 = and i64 %196, 7
  %198 = trunc i64 %197 to i32
  %199 = shl i32 1, %198
  %200 = and i32 %195, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %182
  %203 = load i8*, i8** @FALSE, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %205 = load i64, i64* %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i8* %203, i8** %207, align 8
  br label %219

208:                                              ; preds = %182
  %209 = load i64, i64* %2, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = load i8*, i8** @TRUE, align 8
  store i8* %212, i8** @check_triggers, align 8
  br label %213

213:                                              ; preds = %211, %208
  %214 = load i8*, i8** @TRUE, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** @actors, align 8
  %216 = load i64, i64* %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  store i8* %214, i8** %218, align 8
  br label %219

219:                                              ; preds = %213, %202, %176, %151, %123, %106, %88, %71, %27
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SceneRenderActor_b(i64) #1

declare dso_local i64 @DIV_8(i64) #1

declare dso_local i64 @SceneNpcAt_b(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

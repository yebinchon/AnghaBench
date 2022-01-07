; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneHandleInput.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneHandleInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i8*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@scene_loaded = common dso_local global i64 0, align 8
@scene_input_ready = common dso_local global i32 0, align 4
@joy = common dso_local global i32 0, align 4
@script_ptr = common dso_local global i64 0, align 8
@emote_timer = common dso_local global i64 0, align 8
@fade_running = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@actors = common dso_local global %struct.TYPE_9__* null, align 8
@last_joy = common dso_local global i32 0, align 4
@input_script_ptrs = common dso_local global %struct.TYPE_8__* null, align 8
@J_A = common dso_local global i32 0, align 4
@scene_num_actors = common dso_local global i32 0, align 4
@NONE = common dso_local global i64 0, align 8
@AI_ROTATE_TRB = common dso_local global i64 0, align 8
@script_actor = common dso_local global i32 0, align 4
@J_LEFT = common dso_local global i32 0, align 4
@dir_left = common dso_local global i32 0, align 4
@update_dir = common dso_local global i32* null, align 8
@J_RIGHT = common dso_local global i32 0, align 4
@dir_right = common dso_local global i32 0, align 4
@J_UP = common dso_local global i32 0, align 4
@dir_up = common dso_local global i32 0, align 4
@J_DOWN = common dso_local global i32 0, align 4
@dir_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @SceneHandleInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SceneHandleInput() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @scene_loaded, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @scene_input_ready, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @scene_loaded, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* @joy, align 4
  %16 = and i32 %15, 240
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* @scene_input_ready, align 4
  br label %19

19:                                               ; preds = %14, %11
  br label %228

20:                                               ; preds = %8
  %21 = call i32 (...) @UIOnInteract()
  %22 = call i32 @ACTOR_ON_TILE(i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %228

25:                                               ; preds = %20
  %26 = load i64, i64* @script_ptr, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* @emote_timer, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @fade_running, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %28, %25
  %35 = load i8*, i8** @FALSE, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  store i8* %35, i8** %38, align 8
  br label %228

39:                                               ; preds = %31
  %40 = load i32, i32* @joy, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %82

42:                                               ; preds = %39
  %43 = load i32, i32* @joy, align 4
  %44 = load i32, i32* @last_joy, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %82

46:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  %47 = load i32, i32* @joy, align 4
  store i32 %47, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %78, %46
  %49 = load i32, i32* %3, align 4
  %50 = icmp ne i32 %49, 8
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @input_script_ptrs, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load i8*, i8** @FALSE, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* @joy, align 4
  store i32 %68, i32* @last_joy, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @input_script_ptrs, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %71
  %73 = call i32 @ScriptStart(%struct.TYPE_8__* %72)
  br label %228

74:                                               ; preds = %55
  br label %75

75:                                               ; preds = %74, %51
  %76 = load i32, i32* %4, align 4
  %77 = ashr i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  br label %48

81:                                               ; preds = %48
  br label %82

82:                                               ; preds = %81, %42, %39
  %83 = load i32, i32* @J_A, align 4
  %84 = call i64 @JOY_PRESSED(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %186

86:                                               ; preds = %82
  %87 = load i32, i32* @joy, align 4
  store i32 %87, i32* @last_joy, align 4
  %88 = load i8*, i8** @FALSE, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @DIV_8(i32 %96)
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %97, %102
  store i32 %103, i32* %1, align 4
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @DIV_8(i32 %108)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %109, %114
  store i32 %115, i32* %2, align 4
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* %2, align 4
  %118 = call i32 @SceneNpcAt_b(i32 0, i32 %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @scene_num_actors, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %185

122:                                              ; preds = %86
  %123 = load i8*, i8** @FALSE, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @NONE, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %169

135:                                              ; preds = %122
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AI_ROTATE_TRB, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %135
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 0, %149
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i32 %150, i32* %156, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sub nsw i32 0, %161
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  store i32 %162, i32* %168, align 8
  br label %169

169:                                              ; preds = %144, %135, %122
  %170 = load i8*, i8** @FALSE, align 8
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  store i8* %170, i8** %175, align 8
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @SceneRenderActor_b(i32 %176)
  %178 = load i32, i32* %5, align 4
  store i32 %178, i32* @script_actor, align 4
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %180 = load i32, i32* %5, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = call i32 @ScriptStart(%struct.TYPE_8__* %183)
  br label %185

185:                                              ; preds = %169, %86
  br label %228

186:                                              ; preds = %82
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %196, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* @joy, align 4
  %194 = load i32, i32* @last_joy, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %227

196:                                              ; preds = %192, %186
  %197 = load i32, i32* @joy, align 4
  store i32 %197, i32* @last_joy, align 4
  %198 = load i32, i32* @J_LEFT, align 4
  %199 = call i64 @JOY(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %196
  store i32* @dir_left, i32** @update_dir, align 8
  br label %225

202:                                              ; preds = %196
  %203 = load i32, i32* @J_RIGHT, align 4
  %204 = call i64 @JOY(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %202
  store i32* @dir_right, i32** @update_dir, align 8
  br label %224

207:                                              ; preds = %202
  %208 = load i32, i32* @J_UP, align 4
  %209 = call i64 @JOY(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  store i32* @dir_up, i32** @update_dir, align 8
  br label %223

212:                                              ; preds = %207
  %213 = load i32, i32* @J_DOWN, align 4
  %214 = call i64 @JOY(i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32* @dir_down, i32** @update_dir, align 8
  br label %222

217:                                              ; preds = %212
  %218 = load i8*, i8** @FALSE, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** @actors, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i64 0
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  store i8* %218, i8** %221, align 8
  br label %228

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %211
  br label %224

224:                                              ; preds = %223, %206
  br label %225

225:                                              ; preds = %224, %201
  %226 = call i32 @SceneUpdateActorMovement_b(i32 0)
  br label %227

227:                                              ; preds = %225, %192
  br label %228

228:                                              ; preds = %19, %24, %34, %63, %217, %227, %185
  ret void
}

declare dso_local i32 @UIOnInteract(...) #1

declare dso_local i32 @ACTOR_ON_TILE(i32) #1

declare dso_local i32 @ScriptStart(%struct.TYPE_8__*) #1

declare dso_local i64 @JOY_PRESSED(i32) #1

declare dso_local i32 @DIV_8(i32) #1

declare dso_local i32 @SceneNpcAt_b(i32, i32, i32) #1

declare dso_local i32 @SceneRenderActor_b(i32) #1

declare dso_local i64 @JOY(i32) #1

declare dso_local i32 @SceneUpdateActorMovement_b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

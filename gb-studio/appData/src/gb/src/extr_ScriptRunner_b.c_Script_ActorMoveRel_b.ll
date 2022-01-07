; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorMoveRel_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_ActorMoveRel_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@ACTOR_MOVE_ENABLED = common dso_local global i32 0, align 4
@actor_move_settings = common dso_local global i32 0, align 4
@ACTOR_NOCLIP = common dso_local global i32 0, align 4
@actor_move_dest = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@actors = common dso_local global %struct.TYPE_5__* null, align 8
@script_actor = common dso_local global i64 0, align 8
@script_cmd_args = common dso_local global i32* null, align 8
@ACTOR_MIN_X = common dso_local global i64 0, align 8
@ACTOR_MAX_X = common dso_local global i64 0, align 8
@ACTOR_MIN_Y = common dso_local global i64 0, align 8
@ACTOR_MAX_Y = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@script_action_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_ActorMoveRel_b() #0 {
  %1 = load i32, i32* @ACTOR_MOVE_ENABLED, align 4
  %2 = load i32, i32* @actor_move_settings, align 4
  %3 = or i32 %2, %1
  store i32 %3, i32* @actor_move_settings, align 4
  %4 = load i32, i32* @ACTOR_NOCLIP, align 4
  %5 = load i32, i32* @actor_move_settings, align 4
  %6 = or i32 %5, %4
  store i32 %6, i32* @actor_move_settings, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %8 = load i64, i64* @script_actor, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %13 = load i32*, i32** @script_cmd_args, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %68

17:                                               ; preds = %0
  %18 = load i32*, i32** @script_cmd_args, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %48

22:                                               ; preds = %17
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %24 = load i32*, i32** @script_cmd_args, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 3
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %23, %28
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %32 = load i64, i64* @script_actor, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %30, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i64, i64* @ACTOR_MIN_X, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  br label %47

40:                                               ; preds = %22
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %42 = load i64, i64* @ACTOR_MIN_X, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* @ACTOR_MIN_X, align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %44, %40
  br label %47

47:                                               ; preds = %46, %38
  br label %67

48:                                               ; preds = %17
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %50 = load i32*, i32** @script_cmd_args, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 3
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %49, %54
  store i64 %55, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %58 = load i64, i64* @script_actor, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %56, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i64, i64* @ACTOR_MAX_X, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 0), align 8
  br label %66

66:                                               ; preds = %64, %48
  br label %67

67:                                               ; preds = %66, %47
  br label %68

68:                                               ; preds = %67, %0
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %70 = load i64, i64* @script_actor, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %75 = load i32*, i32** @script_cmd_args, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %130

79:                                               ; preds = %68
  %80 = load i32*, i32** @script_cmd_args, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %110

84:                                               ; preds = %79
  %85 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %86 = load i32*, i32** @script_cmd_args, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %85, %90
  store i64 %91, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %94 = load i64, i64* @script_actor, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %92, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %84
  %101 = load i64, i64* @ACTOR_MIN_Y, align 8
  store i64 %101, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  br label %109

102:                                              ; preds = %84
  %103 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %104 = load i64, i64* @ACTOR_MIN_Y, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i64, i64* @ACTOR_MIN_Y, align 8
  store i64 %107, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %100
  br label %129

110:                                              ; preds = %79
  %111 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %112 = load i32*, i32** @script_cmd_args, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = load i32, i32* %113, align 4
  %115 = shl i32 %114, 3
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %111, %116
  store i64 %117, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %118 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %120 = load i64, i64* @script_actor, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %118, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %110
  %127 = load i64, i64* @ACTOR_MAX_Y, align 8
  store i64 %127, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @actor_move_dest, i32 0, i32 1), align 8
  br label %128

128:                                              ; preds = %126, %110
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129, %68
  %131 = load i64, i64* @script_cmd_args_len, align 8
  %132 = add nsw i64 1, %131
  %133 = load i32, i32* @script_ptr, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* @script_ptr, align 4
  %137 = load i32, i32* @FALSE, align 4
  store i32 %137, i32* @script_action_complete, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

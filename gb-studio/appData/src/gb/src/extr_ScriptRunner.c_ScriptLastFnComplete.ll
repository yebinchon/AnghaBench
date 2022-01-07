; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner.c_ScriptLastFnComplete.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner.c_ScriptLastFnComplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_fn = common dso_local global i64 0, align 8
@Script_FadeIn_b = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@Script_FadeOut_b = common dso_local global i64 0, align 8
@Script_LoadScene_b = common dso_local global i64 0, align 8
@Script_ScenePopState_b = common dso_local global i64 0, align 8
@Script_ScenePopAllState_b = common dso_local global i64 0, align 8
@Script_LoadData_b = common dso_local global i64 0, align 8
@Script_ActorSetEmote_b = common dso_local global i64 0, align 8
@Script_Text_b = common dso_local global i64 0, align 8
@Script_Choice_b = common dso_local global i64 0, align 8
@Script_TextMenu_b = common dso_local global i64 0, align 8
@Script_OverlayMoveTo_b = common dso_local global i64 0, align 8
@Script_AwaitInput_b = common dso_local global i64 0, align 8
@Script_CameraMoveTo_b = common dso_local global i64 0, align 8
@camera_settings = common dso_local global i32 0, align 4
@CAMERA_TRANSITION_FLAG = common dso_local global i32 0, align 4
@Script_CameraLock_b = common dso_local global i64 0, align 8
@CAMERA_LOCK_FLAG = common dso_local global i32 0, align 4
@Script_TextWithAvatar_b = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ScriptLastFnComplete() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @IsFading()
  store i32 %3, i32* %2, align 4
  %4 = load i64, i64* @last_fn, align 8
  %5 = load i64, i64* @Script_FadeIn_b, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %1, align 4
  br label %139

12:                                               ; preds = %7, %0
  %13 = load i64, i64* @last_fn, align 8
  %14 = load i64, i64* @Script_FadeOut_b, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %2, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %1, align 4
  br label %139

21:                                               ; preds = %16, %12
  %22 = load i64, i64* @last_fn, align 8
  %23 = load i64, i64* @Script_LoadScene_b, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* %1, align 4
  br label %139

30:                                               ; preds = %25, %21
  %31 = load i64, i64* @last_fn, align 8
  %32 = load i64, i64* @Script_ScenePopState_b, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %1, align 4
  br label %139

36:                                               ; preds = %30
  %37 = load i64, i64* @last_fn, align 8
  %38 = load i64, i64* @Script_ScenePopAllState_b, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %1, align 4
  br label %139

42:                                               ; preds = %36
  %43 = load i64, i64* @last_fn, align 8
  %44 = load i64, i64* @Script_LoadData_b, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %1, align 4
  br label %139

51:                                               ; preds = %46, %42
  %52 = load i64, i64* @last_fn, align 8
  %53 = load i64, i64* @Script_ActorSetEmote_b, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = call i32 (...) @SceneIsEmoting()
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @TRUE, align 4
  store i32 %59, i32* %1, align 4
  br label %139

60:                                               ; preds = %55, %51
  %61 = load i64, i64* @last_fn, align 8
  %62 = load i64, i64* @Script_Text_b, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = call i64 (...) @UIIsClosed()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @TRUE, align 4
  store i32 %68, i32* %1, align 4
  br label %139

69:                                               ; preds = %64, %60
  %70 = load i64, i64* @last_fn, align 8
  %71 = load i64, i64* @Script_Choice_b, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = call i64 (...) @UIIsClosed()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* @TRUE, align 4
  store i32 %77, i32* %1, align 4
  br label %139

78:                                               ; preds = %73, %69
  %79 = load i64, i64* @last_fn, align 8
  %80 = load i64, i64* @Script_TextMenu_b, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = call i64 (...) @UIIsClosed()
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %1, align 4
  br label %139

87:                                               ; preds = %82, %78
  %88 = load i64, i64* @last_fn, align 8
  %89 = load i64, i64* @Script_OverlayMoveTo_b, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i64 (...) @UIAtDest()
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32, i32* @TRUE, align 4
  store i32 %95, i32* %1, align 4
  br label %139

96:                                               ; preds = %91, %87
  %97 = load i64, i64* @last_fn, align 8
  %98 = load i64, i64* @Script_AwaitInput_b, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = call i64 (...) @SceneAwaitInputPressed()
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %1, align 4
  br label %139

105:                                              ; preds = %100, %96
  %106 = load i64, i64* @last_fn, align 8
  %107 = load i64, i64* @Script_CameraMoveTo_b, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %105
  %110 = call i64 (...) @SceneCameraAtDest()
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* @camera_settings, align 4
  %114 = load i32, i32* @CAMERA_TRANSITION_FLAG, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* @camera_settings, align 4
  %117 = load i32, i32* @TRUE, align 4
  store i32 %117, i32* %1, align 4
  br label %139

118:                                              ; preds = %109, %105
  %119 = load i64, i64* @last_fn, align 8
  %120 = load i64, i64* @Script_CameraLock_b, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = call i64 (...) @SceneCameraAtDest()
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load i32, i32* @CAMERA_LOCK_FLAG, align 4
  store i32 %126, i32* @camera_settings, align 4
  %127 = load i32, i32* @TRUE, align 4
  store i32 %127, i32* %1, align 4
  br label %139

128:                                              ; preds = %122, %118
  %129 = load i64, i64* @last_fn, align 8
  %130 = load i64, i64* @Script_TextWithAvatar_b, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = call i64 (...) @UIIsClosed()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %1, align 4
  br label %139

137:                                              ; preds = %132, %128
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %1, align 4
  br label %139

139:                                              ; preds = %137, %135, %125, %112, %103, %94, %85, %76, %67, %58, %49, %40, %34, %28, %19, %10
  %140 = load i32, i32* %1, align 4
  ret i32 %140
}

declare dso_local i32 @IsFading(...) #1

declare dso_local i32 @SceneIsEmoting(...) #1

declare dso_local i64 @UIIsClosed(...) #1

declare dso_local i64 @UIAtDest(...) #1

declare dso_local i64 @SceneAwaitInputPressed(...) #1

declare dso_local i64 @SceneCameraAtDest(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

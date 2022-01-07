; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_PlayerSetSprite_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_PlayerSetSprite_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@script_cmd_args = common dso_local global i64* null, align 8
@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@sprite_bank_ptrs = common dso_local global i32* null, align 8
@bank_data_ptrs = common dso_local global i64* null, align 8
@actors = common dso_local global %struct.TYPE_5__* null, align 8
@SPRITE_ACTOR_ANIMATED = common dso_local global i32 0, align 4
@SPRITE_ACTOR = common dso_local global i32 0, align 4
@SPRITE_STATIC = common dso_local global i32 0, align 4
@map_next_sprite = common dso_local global i64 0, align 8
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_PlayerSetSprite_b() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = load i64*, i64** @script_cmd_args, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %3, align 8
  %9 = load i32, i32* @DATA_PTRS_BANK, align 4
  %10 = load i32*, i32** @sprite_bank_ptrs, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = call i32 @ReadBankedBankPtr(i32 %9, %struct.TYPE_4__* %1, i32* %12)
  %14 = load i64*, i64** @bank_data_ptrs, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %14, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %2, align 8
  %25 = call i64 @ReadBankedUBYTE(i64 %23, i64 %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @MUL_4(i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %2, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @SetBankedSpriteData(i64 %29, i32 0, i64 %30, i64 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i64, i64* %4, align 8
  %41 = icmp eq i64 %40, 6
  br i1 %41, label %42, label %44

42:                                               ; preds = %0
  %43 = load i32, i32* @SPRITE_ACTOR_ANIMATED, align 4
  br label %53

44:                                               ; preds = %0
  %45 = load i64, i64* %4, align 8
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @SPRITE_ACTOR, align 4
  br label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @SPRITE_STATIC, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  br label %53

53:                                               ; preds = %51, %42
  %54 = phi i32 [ %43, %42 ], [ %52, %51 ]
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i64, i64* %4, align 8
  %59 = icmp eq i64 %58, 6
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %69

61:                                               ; preds = %53
  %62 = load i64, i64* %4, align 8
  %63 = icmp eq i64 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %4, align 8
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i64 [ 1, %64 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi i64 [ 2, %60 ], [ %68, %67 ]
  %71 = trunc i64 %70 to i32
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = call i32 @SceneRenderActor(i32 0)
  %76 = load i64, i64* %3, align 8
  store i64 %76, i64* @map_next_sprite, align 8
  %77 = load i64, i64* @script_cmd_args_len, align 8
  %78 = add nsw i64 1, %77
  %79 = load i32, i32* @script_ptr, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* @script_ptr, align 4
  %83 = load i32, i32* @TRUE, align 4
  store i32 %83, i32* @script_continue, align 4
  ret void
}

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @ReadBankedUBYTE(i64, i64) #1

declare dso_local i64 @MUL_4(i64) #1

declare dso_local i32 @SetBankedSpriteData(i64, i32, i64, i64) #1

declare dso_local i32 @SceneRenderActor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

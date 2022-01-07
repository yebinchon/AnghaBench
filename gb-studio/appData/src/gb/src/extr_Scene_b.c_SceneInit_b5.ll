; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b5.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneInit_b5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@sprite_bank_ptrs = common dso_local global i32* null, align 8
@map_next_sprite = common dso_local global i64 0, align 8
@bank_data_ptrs = common dso_local global i64* null, align 8
@actors = common dso_local global %struct.TYPE_5__* null, align 8
@FALSE = common dso_local global i32 0, align 4
@SPRITE_ACTOR_ANIMATED = common dso_local global i32 0, align 4
@SPRITE_ACTOR = common dso_local global i32 0, align 4
@SPRITE_STATIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneInit_b5() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DATA_PTRS_BANK, align 4
  %6 = load i32*, i32** @sprite_bank_ptrs, align 8
  %7 = load i64, i64* @map_next_sprite, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call i32 @ReadBankedBankPtr(i32 %5, %struct.TYPE_4__* %1, i32* %8)
  %10 = load i64*, i64** @bank_data_ptrs, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %14, %16
  store i64 %17, i64* %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @ReadBankedUBYTE(i64 %19, i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @MUL_4(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i64, i64* %2, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @SetBankedSpriteData(i64 %25, i32 0, i32 %26, i64 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 6
  br i1 %41, label %42, label %44

42:                                               ; preds = %0
  %43 = load i32, i32* @SPRITE_ACTOR_ANIMATED, align 4
  br label %53

44:                                               ; preds = %0
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 3
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
  %58 = load i32, i32* %3, align 4
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %69

61:                                               ; preds = %53
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 1, %64 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi i32 [ 2, %60 ], [ %68, %67 ]
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** @actors, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = call i32 @SceneRenderActor_b(i32 0)
  ret void
}

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_4__*, i32*) #1

declare dso_local i32 @ReadBankedUBYTE(i64, i64) #1

declare dso_local i32 @MUL_4(i32) #1

declare dso_local i32 @SetBankedSpriteData(i64, i32, i32, i64) #1

declare dso_local i32 @SceneRenderActor_b(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

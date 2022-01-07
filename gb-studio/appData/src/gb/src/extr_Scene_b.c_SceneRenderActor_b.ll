; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderActor_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneRenderActor_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@ACTOR_SPRITE_OFFSET = common dso_local global i64 0, align 8
@actors = common dso_local global %struct.TYPE_4__* null, align 8
@SPRITE_STATIC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@SPRITE_ACTOR_ANIMATED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@S_FLIPX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SceneRenderActor_b(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @MUL_2(i32 %8)
  %10 = sext i32 %9 to i64
  %11 = load i64, i64* @ACTOR_SPRITE_OFFSET, align 8
  %12 = add i64 %10, %11
  store i64 %12, i64* %3, align 8
  store i64 0, i64* %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %14 = load i64, i64* %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %19 = load i64, i64* %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SPRITE_STATIC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %1
  %26 = load i8*, i8** @FALSE, align 8
  %27 = ptrtoint i8* %26 to i64
  store i64 %27, i64* %4, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @IS_NEG(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %38 = load i64, i64* %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPRITE_ACTOR_ANIMATED, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = add nsw i32 1, %44
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %6, align 8
  br label %80

47:                                               ; preds = %25
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %57 = load i64, i64* %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SPRITE_ACTOR_ANIMATED, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @MUL_2(i32 %63)
  %65 = add nsw i32 2, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %6, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %68 = load i64, i64* %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i64 @IS_NEG(i64 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %55
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %4, align 8
  br label %77

77:                                               ; preds = %75, %55
  br label %79

78:                                               ; preds = %47
  store i64 0, i64* %6, align 8
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %36
  %81 = load i8*, i8** @FALSE, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %84 = load i64, i64* %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i64 %82, i64* %86, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %89 = load i64, i64* %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %80, %1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %94 = load i64, i64* %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %99 = load i64, i64* %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = load i64, i64* %6, align 8
  %105 = add i64 %103, %104
  %106 = call i64 @MUL_4(i64 %105)
  store i64 %106, i64* %5, align 8
  %107 = load i64, i64* %4, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %92
  %110 = load i64, i64* %3, align 8
  %111 = load i32, i32* @S_FLIPX, align 4
  %112 = call i32 @set_sprite_prop_pair(i64 %110, i32 %111)
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* %5, align 8
  %115 = add i64 %114, 2
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @set_sprite_tile_pair(i64 %113, i64 %115, i64 %116)
  br label %126

118:                                              ; preds = %92
  %119 = load i64, i64* %3, align 8
  %120 = call i32 @set_sprite_prop_pair(i64 %119, i32 0)
  %121 = load i64, i64* %3, align 8
  %122 = load i64, i64* %5, align 8
  %123 = load i64, i64* %5, align 8
  %124 = add i64 %123, 2
  %125 = call i32 @set_sprite_tile_pair(i64 %121, i64 %122, i64 %124)
  br label %126

126:                                              ; preds = %118, %109
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %128 = load i64, i64* %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 2
  store i64 0, i64* %130, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @actors, align 8
  %133 = load i64, i64* %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  store i64 %131, i64* %135, align 8
  ret void
}

declare dso_local i32 @MUL_2(i32) #1

declare dso_local i64 @IS_NEG(i64) #1

declare dso_local i64 @MUL_4(i64) #1

declare dso_local i32 @set_sprite_prop_pair(i64, i32) #1

declare dso_local i32 @set_sprite_tile_pair(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

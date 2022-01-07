; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneTriggerAt_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_Scene_b.c_SceneTriggerAt_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@scene_num_triggers = common dso_local global i64 0, align 8
@triggers = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @SceneTriggerAt_b(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %11

11:                                               ; preds = %62, %2
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @scene_num_triggers, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %11
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @triggers, align 8
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @triggers, align 8
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @triggers, align 8
  %31 = load i64, i64* %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %29, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @triggers, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %36, %41
  %43 = sub i64 %42, 1
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %15
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* %9, align 8
  %50 = icmp ule i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp uge i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %10, align 8
  %58 = icmp ule i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  store i64 %60, i64* %3, align 8
  br label %67

61:                                               ; preds = %55, %51, %47, %15
  br label %62

62:                                               ; preds = %61
  %63 = load i64, i64* %6, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %6, align 8
  br label %11

65:                                               ; preds = %11
  %66 = load i64, i64* @scene_num_triggers, align 8
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i64, i64* %3, align 8
  ret i64 %68
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

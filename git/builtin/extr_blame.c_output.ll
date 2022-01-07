; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_blame.c_output.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_blame.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { %struct.blame_entry* }
%struct.blame_entry = type { %struct.blame_entry*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.commit* }
%struct.commit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.blame_origin = type { i64, %struct.blame_origin* }

@OUTPUT_PORCELAIN = common dso_local global i32 0, align 4
@MORE_THAN_ONE_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, i32)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(%struct.blame_scoreboard* %0, i32 %1) #0 {
  %3 = alloca %struct.blame_scoreboard*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blame_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.blame_origin*, align 8
  %8 = alloca %struct.commit*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @OUTPUT_PORCELAIN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %2
  %14 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %15 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %14, i32 0, i32 0
  %16 = load %struct.blame_entry*, %struct.blame_entry** %15, align 8
  store %struct.blame_entry* %16, %struct.blame_entry** %5, align 8
  br label %17

17:                                               ; preds = %62, %13
  %18 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %19 = icmp ne %struct.blame_entry* %18, null
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  %21 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %22 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.commit*, %struct.commit** %24, align 8
  store %struct.commit* %25, %struct.commit** %8, align 8
  %26 = load %struct.commit*, %struct.commit** %8, align 8
  %27 = getelementptr inbounds %struct.commit, %struct.commit* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MORE_THAN_ONE_PATH, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %62

34:                                               ; preds = %20
  %35 = load %struct.commit*, %struct.commit** %8, align 8
  %36 = call %struct.blame_origin* @get_blame_suspects(%struct.commit* %35)
  store %struct.blame_origin* %36, %struct.blame_origin** %7, align 8
  br label %37

37:                                               ; preds = %57, %34
  %38 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %39 = icmp ne %struct.blame_origin* %38, null
  br i1 %39, label %40, label %61

40:                                               ; preds = %37
  %41 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %42 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i32, i32* @MORE_THAN_ONE_PATH, align 4
  %51 = load %struct.commit*, %struct.commit** %8, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %50
  store i32 %55, i32* %53, align 4
  br label %61

56:                                               ; preds = %45, %40
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.blame_origin*, %struct.blame_origin** %7, align 8
  %59 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %58, i32 0, i32 1
  %60 = load %struct.blame_origin*, %struct.blame_origin** %59, align 8
  store %struct.blame_origin* %60, %struct.blame_origin** %7, align 8
  br label %37

61:                                               ; preds = %49, %37
  br label %62

62:                                               ; preds = %61, %33
  %63 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %64 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %63, i32 0, i32 0
  %65 = load %struct.blame_entry*, %struct.blame_entry** %64, align 8
  store %struct.blame_entry* %65, %struct.blame_entry** %5, align 8
  br label %17

66:                                               ; preds = %17
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %69 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %68, i32 0, i32 0
  %70 = load %struct.blame_entry*, %struct.blame_entry** %69, align 8
  store %struct.blame_entry* %70, %struct.blame_entry** %5, align 8
  br label %71

71:                                               ; preds = %90, %67
  %72 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %73 = icmp ne %struct.blame_entry* %72, null
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @OUTPUT_PORCELAIN, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %81 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @emit_porcelain(%struct.blame_scoreboard* %80, %struct.blame_entry* %81, i32 %82)
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %3, align 8
  %86 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @emit_other(%struct.blame_scoreboard* %85, %struct.blame_entry* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %79
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.blame_entry*, %struct.blame_entry** %5, align 8
  %92 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %91, i32 0, i32 0
  %93 = load %struct.blame_entry*, %struct.blame_entry** %92, align 8
  store %struct.blame_entry* %93, %struct.blame_entry** %5, align 8
  br label %71

94:                                               ; preds = %71
  ret void
}

declare dso_local %struct.blame_origin* @get_blame_suspects(%struct.commit*) #1

declare dso_local i32 @emit_porcelain(%struct.blame_scoreboard*, %struct.blame_entry*, i32) #1

declare dso_local i32 @emit_other(%struct.blame_scoreboard*, %struct.blame_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

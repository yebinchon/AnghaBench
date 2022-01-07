; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_directory.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_grep.c_grep_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grep_opt = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pathspec = type { i32 }
%struct.dir_struct = type { i32, %struct.TYPE_4__**, i32 }
%struct.TYPE_4__ = type { i32 }

@DIR_NO_GITLINKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_opt*, %struct.pathspec*, i32, i32)* @grep_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grep_directory(%struct.grep_opt* %0, %struct.pathspec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.grep_opt*, align 8
  %6 = alloca %struct.pathspec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_struct, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.grep_opt* %0, %struct.grep_opt** %5, align 8
  store %struct.pathspec* %1, %struct.pathspec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = call i32 @memset(%struct.dir_struct* %9, i32 0, i32 24)
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @DIR_NO_GITLINKS, align 4
  %17 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @setup_standard_excludes(%struct.dir_struct* %9)
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %27 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %32 = call i32 @fill_directory(%struct.dir_struct* %9, i32 %30, %struct.pathspec* %31)
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %76, %25
  %34 = load i32, i32* %10, align 4
  %35 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %79

38:                                               ; preds = %33
  %39 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %40 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 1
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %45, i64 %47
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load %struct.pathspec*, %struct.pathspec** %6, align 8
  %51 = call i32 @dir_path_match(i32 %43, %struct.TYPE_4__* %49, %struct.pathspec* %50, i32 0, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %38
  br label %76

54:                                               ; preds = %38
  %55 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %56 = getelementptr inbounds %struct.dir_struct, %struct.dir_struct* %9, i32 0, i32 1
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @grep_file(%struct.grep_opt* %55, i32 %63)
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %54
  %70 = load %struct.grep_opt*, %struct.grep_opt** %5, align 8
  %71 = getelementptr inbounds %struct.grep_opt, %struct.grep_opt* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %79

75:                                               ; preds = %69, %54
  br label %76

76:                                               ; preds = %75, %53
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %33

79:                                               ; preds = %74, %33
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @memset(%struct.dir_struct*, i32, i32) #1

declare dso_local i32 @setup_standard_excludes(%struct.dir_struct*) #1

declare dso_local i32 @fill_directory(%struct.dir_struct*, i32, %struct.pathspec*) #1

declare dso_local i32 @dir_path_match(i32, %struct.TYPE_4__*, %struct.pathspec*, i32, i32*) #1

declare dso_local i32 @grep_file(%struct.grep_opt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

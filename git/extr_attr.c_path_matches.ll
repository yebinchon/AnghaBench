; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_path_matches.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_path_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { i8*, i32, i32, i32 }

@PATTERN_FLAG_MUSTBEDIR = common dso_local global i32 0, align 4
@PATTERN_FLAG_NODIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.pattern*, i8*, i32)* @path_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_matches(i8* %0, i32 %1, i32 %2, %struct.pattern* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pattern*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.pattern* %3, %struct.pattern** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.pattern*, %struct.pattern** %11, align 8
  %18 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %14, align 8
  %20 = load %struct.pattern*, %struct.pattern** %11, align 8
  %21 = getelementptr inbounds %struct.pattern, %struct.pattern* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %6
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 47
  br label %34

34:                                               ; preds = %25, %6
  %35 = phi i1 [ false, %6 ], [ %33, %25 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %16, align 4
  %37 = load %struct.pattern*, %struct.pattern** %11, align 8
  %38 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PATTERN_FLAG_MUSTBEDIR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %89

47:                                               ; preds = %43, %34
  %48 = load %struct.pattern*, %struct.pattern** %11, align 8
  %49 = getelementptr inbounds %struct.pattern, %struct.pattern* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PATTERN_FLAG_NODIR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %59, %60
  %62 = load i32, i32* %16, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i8*, i8** %14, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.pattern*, %struct.pattern** %11, align 8
  %67 = getelementptr inbounds %struct.pattern, %struct.pattern* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.pattern*, %struct.pattern** %11, align 8
  %70 = getelementptr inbounds %struct.pattern, %struct.pattern* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @match_basename(i8* %58, i32 %63, i8* %64, i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %89

73:                                               ; preds = %47
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i8*, i8** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.pattern*, %struct.pattern** %11, align 8
  %83 = getelementptr inbounds %struct.pattern, %struct.pattern* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.pattern*, %struct.pattern** %11, align 8
  %86 = getelementptr inbounds %struct.pattern, %struct.pattern* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @match_pathname(i8* %74, i32 %77, i8* %78, i32 %79, i8* %80, i32 %81, i32 %84, i32 %87)
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %73, %54, %46
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @match_basename(i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @match_pathname(i8*, i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_gitdiff_index.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_gitdiff_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gitdiff_data = type { i32 }
%struct.patch = type { i64*, i64* }

@the_hash_algo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gitdiff_data*, i8*, %struct.patch*)* @gitdiff_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gitdiff_index(%struct.gitdiff_data* %0, i8* %1, %struct.patch* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gitdiff_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.patch*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gitdiff_data* %0, %struct.gitdiff_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.patch* %2, %struct.patch** %7, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_hash_algo, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 46)
  store i8* %16, i8** %8, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 46
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  %27 = zext i32 %26 to i64
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = ptrtoint i8* %28 to i64
  %31 = ptrtoint i8* %29 to i64
  %32 = sub i64 %30, %31
  %33 = icmp slt i64 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25, %19, %3
  store i32 0, i32* %4, align 4
  br label %103

35:                                               ; preds = %25
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %10, align 4
  %42 = load %struct.patch*, %struct.patch** %7, align 8
  %43 = getelementptr inbounds %struct.patch, %struct.patch* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @memcpy(i64* %44, i8* %45, i32 %46)
  %48 = load %struct.patch*, %struct.patch** %7, align 8
  %49 = getelementptr inbounds %struct.patch, %struct.patch* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  store i64 0, i64* %53, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 2
  store i8* %55, i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 32)
  store i8* %57, i8** %8, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i8* @strchrnul(i8* %58, i8 signext 10)
  store i8* %59, i8** %9, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %35
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = icmp ult i8* %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %35
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %8, align 8
  br label %68

68:                                               ; preds = %66, %62
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.patch*, %struct.patch** %7, align 8
  %81 = getelementptr inbounds %struct.patch, %struct.patch* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @memcpy(i64* %82, i8* %83, i32 %84)
  %86 = load %struct.patch*, %struct.patch** %7, align 8
  %87 = getelementptr inbounds %struct.patch, %struct.patch* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  %92 = load i8*, i8** %8, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 32
  br i1 %95, label %96, label %102

96:                                               ; preds = %79
  %97 = load %struct.gitdiff_data*, %struct.gitdiff_data** %5, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = load %struct.patch*, %struct.patch** %7, align 8
  %101 = call i32 @gitdiff_oldmode(%struct.gitdiff_data* %97, i8* %99, %struct.patch* %100)
  store i32 %101, i32* %4, align 4
  br label %103

102:                                              ; preds = %79
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %96, %78, %34
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @gitdiff_oldmode(%struct.gitdiff_data*, i8*, %struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

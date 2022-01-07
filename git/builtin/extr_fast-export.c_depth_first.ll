; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fast-export.c_depth_first.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fast-export.c_depth_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_filepair = type { i8, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @depth_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @depth_first(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.diff_filepair*, align 8
  %7 = alloca %struct.diff_filepair*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.diff_filepair**
  %16 = load %struct.diff_filepair*, %struct.diff_filepair** %15, align 8
  store %struct.diff_filepair* %16, %struct.diff_filepair** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.diff_filepair**
  %19 = load %struct.diff_filepair*, %struct.diff_filepair** %18, align 8
  store %struct.diff_filepair* %19, %struct.diff_filepair** %7, align 8
  %20 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %21 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %26 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %32 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = phi i8* [ %29, %24 ], [ %35, %30 ]
  store i8* %37, i8** %8, align 8
  %38 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %39 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %44 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  br label %54

48:                                               ; preds = %36
  %49 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %50 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  br label %54

54:                                               ; preds = %48, %42
  %55 = phi i8* [ %47, %42 ], [ %53, %48 ]
  store i8* %55, i8** %9, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strlen(i8* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %10, align 4
  br label %67

65:                                               ; preds = %54
  %66 = load i32, i32* %11, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  store i32 %68, i32* %12, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @memcmp(i8* %69, i8* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %3, align 4
  br label %99

77:                                               ; preds = %67
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %77
  %86 = load %struct.diff_filepair*, %struct.diff_filepair** %6, align 8
  %87 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 8
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 82
  %91 = zext i1 %90 to i32
  %92 = load %struct.diff_filepair*, %struct.diff_filepair** %7, align 8
  %93 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 8
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 82
  %97 = zext i1 %96 to i32
  %98 = sub nsw i32 %91, %97
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %85, %83, %75
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

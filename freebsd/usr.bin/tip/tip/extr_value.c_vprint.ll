; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_value.c_vprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i32 }

@col = common dso_local global i64 0, align 8
@MIDDLE = common dso_local global i64 0, align 8
@TMASK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s=%-5ld\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @vprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vprint(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load i64, i64* @col, align 8
  %5 = icmp sgt i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load i64, i64* @col, align 8
  %8 = load i64, i64* @MIDDLE, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  br label %11

11:                                               ; preds = %16, %10
  %12 = load i64, i64* @col, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* @col, align 8
  %14 = load i64, i64* @MIDDLE, align 8
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 @putchar(i8 signext 32)
  br label %11

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %6, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @size(i8* %22)
  %24 = load i64, i64* @col, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* @col, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TMASK, align 4
  %30 = and i32 %28, %29
  switch i32 %30, label %105 [
    i32 131, label %31
    i32 128, label %47
    i32 129, label %70
    i32 130, label %81
  ]

31:                                               ; preds = %19
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @boolean(i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i64, i64* @col, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @col, align 8
  %41 = call i32 @putchar(i8 signext 33)
  br label %42

42:                                               ; preds = %38, %31
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %45)
  br label %105

47:                                               ; preds = %19
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i64, i64* @col, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @col, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %47
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @interp(i32 %61)
  store i8* %62, i8** %3, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = call i64 @size(i8* %63)
  %65 = load i64, i64* @col, align 8
  %66 = add nsw i64 %65, %64
  store i64 %66, i64* @col, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %58, %47
  br label %105

70:                                               ; preds = %19
  %71 = load i64, i64* @col, align 8
  %72 = add nsw i64 %71, 6
  store i64 %72, i64* @col, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @number(i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %75, i32 %79)
  br label %105

81:                                               ; preds = %19
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %84)
  %86 = load i64, i64* @col, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* @col, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %81
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @character(i32 %95)
  %97 = call i8* @ctrl(i32 %96)
  store i8* %97, i8** %3, align 8
  %98 = load i8*, i8** %3, align 8
  %99 = call i64 @size(i8* %98)
  %100 = load i64, i64* @col, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* @col, align 8
  %102 = load i8*, i8** %3, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %92, %81
  br label %105

105:                                              ; preds = %19, %104, %70, %69, %42
  %106 = load i64, i64* @col, align 8
  %107 = load i64, i64* @MIDDLE, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  store i64 0, i64* @col, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i64 @size(i8*) #1

declare dso_local i32 @boolean(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @interp(i32) #1

declare dso_local i32 @number(i32) #1

declare dso_local i8* @ctrl(i32) #1

declare dso_local i32 @character(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

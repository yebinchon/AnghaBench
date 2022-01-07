; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_disk_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_disk.c_disk_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"%s: %s \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s%d: %s \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"disk??: %s \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"cmd=read \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cmd=write \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"cmd=delete \00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"cmd=getattr \00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"cmd=flush \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"cmd=%x \00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"fsbn %jd%s\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"fsbn %jd of \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%jd-%jd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @disk_err(%struct.bio* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bio*, %struct.bio** %5, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %4
  %15 = load %struct.bio*, %struct.bio** %5, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i8* @devtoname(i32* %17)
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  br label %43

21:                                               ; preds = %4
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.bio*, %struct.bio** %5, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %36, i8* %37)
  br label %42

39:                                               ; preds = %21
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %39, %26
  br label %43

43:                                               ; preds = %42, %14
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %57 [
    i32 129, label %47
    i32 128, label %49
    i32 132, label %51
    i32 130, label %53
    i32 131, label %55
  ]

47:                                               ; preds = %43
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %62

49:                                               ; preds = %43
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %62

51:                                               ; preds = %43
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %62

53:                                               ; preds = %43
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  br label %62

55:                                               ; preds = %43
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %62

57:                                               ; preds = %43
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = getelementptr inbounds %struct.bio, %struct.bio* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %55, %53, %51, %49, %47
  %63 = load %struct.bio*, %struct.bio** %5, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.bio*, %struct.bio** %5, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DEV_BSIZE, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %62
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %73, i8* %77)
  br label %112

79:                                               ; preds = %62
  %80 = load i32, i32* %7, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %9, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %9, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %82, %79
  %91 = load %struct.bio*, %struct.bio** %5, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load %struct.bio*, %struct.bio** %5, align 8
  %96 = getelementptr inbounds %struct.bio, %struct.bio* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.bio*, %struct.bio** %5, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* @DEV_BSIZE, align 4
  %103 = sdiv i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %97, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %94, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %90
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %112

112:                                              ; preds = %71, %110, %90
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @devtoname(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

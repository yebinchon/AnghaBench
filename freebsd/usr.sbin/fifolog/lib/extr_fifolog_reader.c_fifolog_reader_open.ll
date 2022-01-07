; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_reader.c_fifolog_reader_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_reader.c_fifolog_reader_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_reader = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"Cannot malloc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@Z_OK = common dso_local global i32 0, align 4
@FIFOLOG_READER_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fifolog_reader* @fifolog_reader_open(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fifolog_reader*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = call i8* @calloc(i32 1, i32 24)
  %7 = bitcast i8* %6 to %struct.fifolog_reader*
  store %struct.fifolog_reader* %7, %struct.fifolog_reader** %4, align 8
  %8 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %9 = icmp eq %struct.fifolog_reader* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %14 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %13, i32 0, i32 2
  %15 = load i8*, i8** %2, align 8
  %16 = call i8* @fifolog_int_open(%struct.TYPE_2__** %14, i8* %15, i32 0)
  store i8* %16, i8** %3, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %24 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @calloc(i32 16, i32 %27)
  %29 = bitcast i8* %28 to i32*
  %30 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %31 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %30, i32 0, i32 3
  store i32* %29, i32** %31, align 8
  %32 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %33 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %22
  %39 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %40 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 16
  %45 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %46 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %48 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @inflateInit(i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @Z_OK, align 4
  %55 = icmp eq i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32, i32* @FIFOLOG_READER_MAGIC, align 4
  %59 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  %60 = getelementptr inbounds %struct.fifolog_reader, %struct.fifolog_reader* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.fifolog_reader*, %struct.fifolog_reader** %4, align 8
  ret %struct.fifolog_reader* %61
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @fifolog_int_open(%struct.TYPE_2__**, i8*, i32) #1

declare dso_local i32 @inflateInit(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

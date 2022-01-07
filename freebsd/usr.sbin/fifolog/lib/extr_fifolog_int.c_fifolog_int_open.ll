; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fifolog/lib/extr_fifolog_int.c_fifolog_int_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fifolog_file = type { i32, i32 }

@errno = common dso_local global i32 0, align 4
@FIFOLOG_FILE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @fifolog_int_open(%struct.fifolog_file** %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fifolog_file**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fifolog_file, align 4
  %9 = alloca %struct.fifolog_file*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.fifolog_file** %0, %struct.fifolog_file*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fifolog_file* %8, %struct.fifolog_file** %9, align 8
  %12 = load %struct.fifolog_file*, %struct.fifolog_file** %9, align 8
  %13 = call i32 @memset(%struct.fifolog_file* %12, i32 0, i32 8)
  %14 = load %struct.fifolog_file*, %struct.fifolog_file** %9, align 8
  %15 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load %struct.fifolog_file*, %struct.fifolog_file** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @fifolog_int_open_i(%struct.fifolog_file* %16, i8* %17, i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i8*, i8** %10, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = call %struct.fifolog_file* @malloc(i32 8)
  %25 = load %struct.fifolog_file**, %struct.fifolog_file*** %5, align 8
  store %struct.fifolog_file* %24, %struct.fifolog_file** %25, align 8
  %26 = load %struct.fifolog_file**, %struct.fifolog_file*** %5, align 8
  %27 = load %struct.fifolog_file*, %struct.fifolog_file** %26, align 8
  %28 = icmp ne %struct.fifolog_file* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.fifolog_file**, %struct.fifolog_file*** %5, align 8
  %31 = load %struct.fifolog_file*, %struct.fifolog_file** %30, align 8
  %32 = load %struct.fifolog_file*, %struct.fifolog_file** %9, align 8
  %33 = call i32 @memcpy(%struct.fifolog_file* %31, %struct.fifolog_file* %32, i32 8)
  %34 = load i32, i32* @FIFOLOG_FILE_MAGIC, align 4
  %35 = load %struct.fifolog_file**, %struct.fifolog_file*** %5, align 8
  %36 = load %struct.fifolog_file*, %struct.fifolog_file** %35, align 8
  %37 = getelementptr inbounds %struct.fifolog_file, %struct.fifolog_file* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %4, align 8
  br label %44

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %3
  %41 = call i32 @fifolog_int_close(%struct.fifolog_file** %9)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* @errno, align 4
  %43 = load i8*, i8** %10, align 8
  store i8* %43, i8** %4, align 8
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i8*, i8** %4, align 8
  ret i8* %45
}

declare dso_local i32 @memset(%struct.fifolog_file*, i32, i32) #1

declare dso_local i8* @fifolog_int_open_i(%struct.fifolog_file*, i8*, i32) #1

declare dso_local %struct.fifolog_file* @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.fifolog_file*, %struct.fifolog_file*, i32) #1

declare dso_local i32 @fifolog_int_close(%struct.fifolog_file**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

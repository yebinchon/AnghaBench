; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_term_chk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/write/extr_write.c_term_chk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i32 0, align 4
@S_IWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @term_chk(i32 %0, i8* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.stat, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = call i64 @fstatat(i32 %13, i8* %14, %struct.stat* %12, i32 0)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %5
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* @_PATH_DEV, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @warn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22)
  br label %24

24:                                               ; preds = %20, %17
  store i32 1, i32* %6, align 4
  br label %37

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @S_IWRITE, align 4
  %29 = ashr i32 %28, 3
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %12, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %10, align 8
  store i32 %35, i32* %36, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %25, %24
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i64 @fstatat(i32, i8*, %struct.stat*, i32) #1

declare dso_local i32 @warn(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

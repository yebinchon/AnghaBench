; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diffreg.c_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { i32 }

@SIZE_MAX = common dso_local global i32 0, align 4
@len = common dso_local global i64* null, align 8
@file = common dso_local global %struct.line** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, i32)* @prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare(i32 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.line*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @rewind(i32* %13)
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @SIZE_MAX, align 4
  %17 = call i32 @MIN(i64 %15, i32 %16)
  %18 = sdiv i32 %17, 25
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = icmp ult i64 %20, 100
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i64 100, i64* %11, align 8
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i64, i64* %11, align 8
  %25 = add i64 %24, 3
  %26 = call %struct.line* @xcalloc(i64 %25, i32 4)
  store %struct.line* %26, %struct.line** %9, align 8
  store i64 0, i64* %12, align 8
  br label %27

27:                                               ; preds = %44, %23
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @readhash(i32* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = load i64, i64* %11, align 8
  %38 = mul i64 %37, 3
  %39 = udiv i64 %38, 2
  store i64 %39, i64* %11, align 8
  %40 = load %struct.line*, %struct.line** %9, align 8
  %41 = load i64, i64* %11, align 8
  %42 = add i64 %41, 3
  %43 = call %struct.line* @xreallocarray(%struct.line* %40, i64 %42, i32 4)
  store %struct.line* %43, %struct.line** %9, align 8
  br label %44

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.line*, %struct.line** %9, align 8
  %47 = load i64, i64* %12, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %12, align 8
  %49 = getelementptr inbounds %struct.line, %struct.line* %46, i64 %48
  %50 = getelementptr inbounds %struct.line, %struct.line* %49, i32 0, i32 0
  store i32 %45, i32* %50, align 4
  br label %27

51:                                               ; preds = %27
  %52 = load i64, i64* %12, align 8
  %53 = load i64*, i64** @len, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %52, i64* %56, align 8
  %57 = load %struct.line*, %struct.line** %9, align 8
  %58 = load %struct.line**, %struct.line*** @file, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.line*, %struct.line** %58, i64 %60
  store %struct.line* %57, %struct.line** %61, align 8
  ret void
}

declare dso_local i32 @rewind(i32*) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local %struct.line* @xcalloc(i64, i32) #1

declare dso_local i32 @readhash(i32*, i32) #1

declare dso_local %struct.line* @xreallocarray(%struct.line*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

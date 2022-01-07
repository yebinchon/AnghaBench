; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_case.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_case.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @ignore_case(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %7 = load i32, i32* @MB_CUR_MAX, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %11 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %16 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %24, %9
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %3, align 8
  %23 = icmp ult i8* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call zeroext i8 @toupper(i8 zeroext %26)
  %28 = load i8*, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %20

31:                                               ; preds = %20
  br label %55

32:                                               ; preds = %1
  %33 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %34 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %6, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %39 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32* %42, i32** %5, align 8
  br label %43

43:                                               ; preds = %47, %32
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = icmp ult i32* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @towupper(i32 %49)
  %51 = load i32*, i32** %6, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %6, align 8
  br label %43

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %31
  %56 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %56
}

declare dso_local zeroext i8 @toupper(i8 zeroext) #1

declare dso_local i32 @towupper(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_nonprinting.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_ignore_nonprinting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @ignore_nonprinting(%struct.bwstring* %0) #0 {
  %2 = alloca %struct.bwstring*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %2, align 8
  %12 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %13 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load i32, i32* @MB_CUR_MAX, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %19 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %25 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  store i8* %27, i8** %5, align 8
  br label %28

28:                                               ; preds = %50, %17
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i8*, i8** %6, align 8
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %7, align 1
  %35 = load i8, i8* %7, align 1
  %36 = call i64 @isprint(i8 zeroext %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i8, i8* %7, align 1
  %40 = load i8*, i8** %4, align 8
  store i8 %39, i8* %40, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %4, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  br label %50

45:                                               ; preds = %32
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  %48 = load i64, i64* %3, align 8
  %49 = add i64 %48, -1
  store i64 %49, i64* %3, align 8
  br label %50

50:                                               ; preds = %45, %38
  br label %28

51:                                               ; preds = %28
  br label %87

52:                                               ; preds = %1
  %53 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %54 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %10, align 8
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %60 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32* %62, i32** %9, align 8
  br label %63

63:                                               ; preds = %85, %52
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = icmp ult i32* %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i64 @iswprint(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %8, align 8
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  br label %85

80:                                               ; preds = %67
  %81 = load i32*, i32** %10, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %10, align 8
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %80, %73
  br label %63

86:                                               ; preds = %63
  br label %87

87:                                               ; preds = %86, %51
  %88 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @bws_setlen(%struct.bwstring* %88, i64 %89)
  %91 = load %struct.bwstring*, %struct.bwstring** %2, align 8
  ret %struct.bwstring* %91
}

declare dso_local i64 @isprint(i8 zeroext) #1

declare dso_local i64 @iswprint(i32) #1

declare dso_local i32 @bws_setlen(%struct.bwstring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

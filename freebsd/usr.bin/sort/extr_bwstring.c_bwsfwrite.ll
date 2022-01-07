; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsfwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsfwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 99, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 37, i32 108, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bwsfwrite(%struct.bwstring* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bwstring* %0, %struct.bwstring** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MB_CUR_MAX, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %18 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %16
  %23 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %24 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  store i8 10, i8* %28, align 1
  %29 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %30 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @fwrite(i8* %32, i64 %34, i32 1, i32* %35)
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = call i32 @err(i32 2, i32* null)
  br label %40

40:                                               ; preds = %38, %22
  %41 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %42 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8 0, i8* %46, align 1
  br label %60

47:                                               ; preds = %16
  %48 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %49 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = add i64 %52, 1
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @fwrite(i8* %51, i64 %53, i32 1, i32* %54)
  %56 = icmp slt i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = call i32 @err(i32 2, i32* null)
  br label %59

59:                                               ; preds = %57, %47
  br label %60

60:                                               ; preds = %59, %40
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %4, align 8
  br label %119

63:                                               ; preds = %3
  store i64 0, i64* %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @btowc(i8 signext 0)
  br label %70

68:                                               ; preds = %63
  %69 = call i32 @btowc(i8 signext 10)
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %112, %70
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %75 = call i64 @BWSLEN(%struct.bwstring* %74)
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %77, label %113

77:                                               ; preds = %72
  %78 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %79 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %11, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %77
  %88 = load i32*, i32** %6, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32*, i8*, ...) @fwprintf(i32* %88, i8* bitcast ([4 x i32]* @.str to i8*), i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @err(i32 2, i32* null)
  br label %96

96:                                               ; preds = %94, %87
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %112

99:                                               ; preds = %77
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = call i32 (i32*, i8*, ...) @fwprintf(i32* %100, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32* %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = call i32 @err(i32 2, i32* null)
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* %10, align 8
  %111 = add i64 %110, %109
  store i64 %111, i64* %10, align 8
  br label %112

112:                                              ; preds = %107, %96
  br label %72

113:                                              ; preds = %72
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32*, i8*, ...) @fwprintf(i32* %114, i8* bitcast ([4 x i32]* @.str to i8*), i32 %115)
  %117 = load i64, i64* %10, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %4, align 8
  br label %119

119:                                              ; preds = %113, %60
  %120 = load i64, i64* %4, align 8
  ret i64 %120
}

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local i32 @btowc(i8 signext) #1

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i32 @fwprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

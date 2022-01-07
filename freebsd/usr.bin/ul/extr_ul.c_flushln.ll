; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_flushln.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ul/extr_ul.c_flushln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8, i32 }

@NORMAL = common dso_local global i32 0, align 4
@maxcol = common dso_local global i32 0, align 4
@obuf = common dso_local global %struct.TYPE_2__* null, align 8
@upln = common dso_local global i64 0, align 8
@CURS_RIGHT = common dso_local global i32 0, align 4
@must_overstrike = common dso_local global i64 0, align 8
@iflag = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @flushln to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flushln() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @NORMAL, align 4
  store i32 %4, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %85, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @maxcol, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %88

9:                                                ; preds = %5
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %9
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @setnewmode(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %1, align 4
  br label %34

34:                                               ; preds = %18, %9
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %36 = load i32, i32* %2, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i8, i8* %39, align 4
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %34
  %44 = load i64, i64* @upln, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @CURS_RIGHT, align 4
  %48 = call i32 @PRINT(i32 %47)
  br label %51

49:                                               ; preds = %43
  %50 = call i32 @outc(i8 signext 32, i32 1)
  br label %51

51:                                               ; preds = %49, %46
  br label %66

52:                                               ; preds = %34
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @outc(i8 signext %58, i32 %64)
  br label %66

66:                                               ; preds = %52, %51
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp sgt i32 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @obuf, align 8
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %80, 1
  %82 = load i32, i32* %2, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %74, %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %5

88:                                               ; preds = %5
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @NORMAL, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = call i32 @setnewmode(i32 0)
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i64, i64* @must_overstrike, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %3, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = call i32 (...) @overstrike()
  br label %102

102:                                              ; preds = %100, %97, %94
  %103 = call i32 @putwchar(i8 signext 10)
  %104 = load i64, i64* @iflag, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (...) @iattr()
  br label %111

111:                                              ; preds = %109, %106, %102
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @fflush(i32 %112)
  %114 = load i64, i64* @upln, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i64, i64* @upln, align 8
  %118 = add nsw i64 %117, -1
  store i64 %118, i64* @upln, align 8
  br label %119

119:                                              ; preds = %116, %111
  %120 = call i32 (...) @initbuf()
  ret void
}

declare dso_local i32 @setnewmode(i32) #1

declare dso_local i32 @PRINT(i32) #1

declare dso_local i32 @outc(i8 signext, i32) #1

declare dso_local i32 @overstrike(...) #1

declare dso_local i32 @putwchar(i8 signext) #1

declare dso_local i32 @iattr(...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @initbuf(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fold/extr_fold.c_fold.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fold/extr_fold.c_fold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fold.buf = internal global i8* null, align 8
@fold.buf_max = internal global i32 0, align 4
@WEOF = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [7 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 10, i32 0], align 4
@sflag = common dso_local global i64 0, align 8
@LINE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"realloc()\00", align 1
@.str.2 = private unnamed_addr constant [6 x i32] [i32 37, i32 46, i32 42, i32 108, i32 115, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fold(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %121, %18, %1
  %9 = call signext i8 (...) @getwchar()
  store i8 %9, i8* %7, align 1
  %10 = sext i8 %9 to i32
  %11 = load i8, i8* @WEOF, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %128

14:                                               ; preds = %8
  %15 = load i8, i8* %7, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i8*, i8** @fold.buf, align 8
  %21 = call i32 @wprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %19, i8* %20)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %8

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = load i8, i8* %7, align 1
  %25 = call i32 @newpos(i32 %23, i8 signext %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %22
  %29 = load i64, i64* @sflag, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %48, %31
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load i8*, i8** @fold.buf, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @iswblank(i8 signext %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %37, %33
  %47 = phi i1 [ false, %33 ], [ %45, %37 ]
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  br label %33

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %28
  %52 = load i64, i64* @sflag, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %91

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i8*, i8** @fold.buf, align 8
  %62 = call i32 @wprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %60, i8* %61)
  %63 = load i8*, i8** @fold.buf, align 8
  %64 = load i8*, i8** @fold.buf, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @wmemmove(i8* %63, i8* %67, i32 %70)
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %5, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %5, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %87, %57
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %75
  %80 = load i32, i32* %3, align 4
  %81 = load i8*, i8** @fold.buf, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = call i32 @newpos(i32 %80, i8 signext %85)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %75

90:                                               ; preds = %75
  br label %95

91:                                               ; preds = %54, %51
  %92 = load i32, i32* %5, align 4
  %93 = load i8*, i8** @fold.buf, align 8
  %94 = call i32 @wprintf(i8* bitcast ([7 x i32]* @.str to i8*), i32 %92, i8* %93)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %91, %90
  %96 = load i32, i32* %3, align 4
  %97 = load i8, i8* %7, align 1
  %98 = call i32 @newpos(i32 %96, i8 signext %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %95, %22
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* @fold.buf_max, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %99
  %105 = load i64, i64* @LINE_MAX, align 8
  %106 = load i32, i32* @fold.buf_max, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %105
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* @fold.buf_max, align 4
  %110 = load i8*, i8** @fold.buf, align 8
  %111 = load i32, i32* @fold.buf_max, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 1, %112
  %114 = trunc i64 %113 to i32
  %115 = call i8* @realloc(i8* %110, i32 %114)
  store i8* %115, i8** @fold.buf, align 8
  %116 = load i8*, i8** @fold.buf, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %104
  br label %121

121:                                              ; preds = %120, %99
  %122 = load i8, i8* %7, align 1
  %123 = load i8*, i8** @fold.buf, align 8
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %5, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  store i8 %122, i8* %127, align 1
  br label %8

128:                                              ; preds = %8
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i8*, i8** @fold.buf, align 8
  %134 = call i32 @wprintf(i8* bitcast ([6 x i32]* @.str.2 to i8*), i32 %132, i8* %133)
  br label %135

135:                                              ; preds = %131, %128
  ret void
}

declare dso_local signext i8 @getwchar(...) #1

declare dso_local i32 @wprintf(i8*, i32, i8*) #1

declare dso_local i32 @newpos(i32, i8 signext) #1

declare dso_local i32 @iswblank(i8 signext) #1

declare dso_local i32 @wmemmove(i8*, i8*, i32) #1

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

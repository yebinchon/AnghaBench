; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@line = common dso_local global i8* null, align 8
@exp_file = common dso_local global i32 0, align 4
@linesize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_line() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i8*, i8** @line, align 8
  store i8* %7, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %110, %0
  %9 = load i32, i32* @exp_file, align 4
  %10 = call i8* @fgetln(i32 %9, i64* %4)
  store i8* %10, i8** %2, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %113

13:                                               ; preds = %8
  %14 = load i8*, i8** %2, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %3, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %52, %13
  %19 = load i8*, i8** %3, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = icmp uge i8* %19, %20
  br i1 %21, label %22, label %44

22:                                               ; preds = %18
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i8*, i8** %3, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 92
  br label %42

42:                                               ; preds = %37, %32, %27, %22
  %43 = phi i1 [ true, %32 ], [ true, %27 ], [ true, %22 ], [ %41, %37 ]
  br label %44

44:                                               ; preds = %42, %18
  %45 = phi i1 [ false, %18 ], [ %43, %42 ]
  br i1 %45, label %46, label %57

46:                                               ; preds = %44
  %47 = load i8*, i8** %3, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1, i32* %6, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 -1
  store i8* %54, i8** %3, align 8
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, -1
  store i64 %56, i64* %4, align 8
  br label %18

57:                                               ; preds = %44
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i8*, i8** %3, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %3, align 8
  store i8 32, i8* %62, align 1
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i64, i64* @linesize, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %67, %69
  %71 = add i64 %70, 1
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = load i64, i64* %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = add i64 %74, %76
  %78 = add i64 %77, 1
  store i64 %78, i64* @linesize, align 8
  %79 = load i8*, i8** @line, align 8
  %80 = load i64, i64* @linesize, align 8
  %81 = call i8* @realloc(i8* %79, i64 %80)
  store i8* %81, i8** @line, align 8
  %82 = load i8*, i8** @line, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %73
  %85 = call i32 (...) @out_of_mem()
  br label %86

86:                                               ; preds = %84, %73
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i8*, i8** @line, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8*, i8** %2, align 8
  %93 = load i64, i64* %4, align 8
  %94 = call i32 @memcpy(i8* %91, i8* %92, i64 %93)
  %95 = load i64, i64* %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  %100 = load i8*, i8** @line, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 0, i8* %103, align 1
  br label %104

104:                                              ; preds = %87
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br label %110

110:                                              ; preds = %107, %104
  %111 = phi i1 [ true, %104 ], [ %109, %107 ]
  br i1 %111, label %8, label %112

112:                                              ; preds = %110
  store i32 1, i32* %1, align 4
  br label %113

113:                                              ; preds = %112, %12
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i8* @fgetln(i32, i64*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @out_of_mem(...) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

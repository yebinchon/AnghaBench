; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_do_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/tablegen/extr_tablegen.c_do_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lflag = common dso_local global i64 0, align 8
@fb_flags = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@cflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"END_MAP\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @do_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_conv(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %65, %2
  %13 = load i32, i32* %9, align 4
  %14 = load i64, i64* @lflag, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1048576, i32 65536
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %68

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 55296
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 57088
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %65

29:                                               ; preds = %25, %22, %19
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %36

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @magnitude(i32 %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i32 [ 4, %32 ], [ %35, %33 ]
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %5, align 8
  store i64 4, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %39 = bitcast i32* %8 to i8*
  store i8* %39, i8** %11, align 8
  %40 = bitcast i32* %9 to i8*
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @iconv(i32 %41, i8** null, i64* null, i8** null, i64* null)
  store i64 0, i64* @fb_flags, align 8
  store i64 0, i64* @errno, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @iconv(i32 %43, i8** %10, i64* %5, i8** %11, i64* %6)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, -1
  br i1 %46, label %47, label %58

47:                                               ; preds = %36
  %48 = load i64, i64* @dflag, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @format(i32 %51)
  %53 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %54 = load i64, i64* @errno, align 8
  %55 = call i32 @format_diag(i64 %54)
  %56 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %50, %47
  br label %65

58:                                               ; preds = %36
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @format(i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @format(i32 %62)
  %64 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %57, %28
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %12

68:                                               ; preds = %12
  %69 = load i64, i64* @cflag, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %68
  ret void
}

declare dso_local i32 @magnitude(i32) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

declare dso_local i32 @format(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @format_diag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

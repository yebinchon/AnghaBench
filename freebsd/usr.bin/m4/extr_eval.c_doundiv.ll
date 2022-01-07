; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_doundiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_eval.c_doundiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@mimic_gnu = common dso_local global i64 0, align 8
@maxout = common dso_local global i32 0, align 4
@outfile = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, i32)* @doundiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doundiv(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %60

10:                                               ; preds = %2
  store i32 2, i32* %5, align 4
  br label %11

11:                                               ; preds = %56, %10
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load i8**, i8*** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  %21 = load i32, i32* @INT_MAX, align 4
  %22 = call i32 @strtonum(i8* %20, i32 1, i32 %21, i8** %7)
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %15
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINVAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i64, i64* @mimic_gnu, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8**, i8*** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @getdivfile(i8* %37)
  br label %39

39:                                               ; preds = %32, %29, %25
  br label %55

40:                                               ; preds = %15
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @maxout, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32**, i32*** @outfile, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @getdiv(i32 %52)
  br label %54

54:                                               ; preds = %51, %44, %40
  br label %55

55:                                               ; preds = %54, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %11

59:                                               ; preds = %11
  br label %80

60:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @maxout, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %61
  %66 = load i32**, i32*** @outfile, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @getdiv(i32 %73)
  br label %75

75:                                               ; preds = %72, %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %61

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %59
  ret void
}

declare dso_local i32 @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i32 @getdivfile(i8*) #1

declare dso_local i32 @getdiv(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

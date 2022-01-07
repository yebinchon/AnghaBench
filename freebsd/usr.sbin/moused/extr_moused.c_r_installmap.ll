; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_r_installmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_r_installmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@MOUSE_MAXBUTTON = common dso_local global i32 0, align 4
@p2l = common dso_local global i32* null, align 8
@bstate = common dso_local global i32* null, align 8
@mstate = common dso_local global i32** null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @r_installmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r_installmap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  br label %7

7:                                                ; preds = %87, %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i8, i8* %8, align 1
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %106

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @skipspace(i8* %12)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %6, align 8
  br label %15

15:                                               ; preds = %20, %11
  %16 = load i8*, i8** %3, align 8
  %17 = load i8, i8* %16, align 1
  %18 = call i64 @isdigit(i8 signext %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %15

23:                                               ; preds = %15
  %24 = load i8*, i8** %3, align 8
  %25 = call i8* @skipspace(i8* %24)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = icmp ule i8* %26, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 61
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %2, align 4
  br label %108

36:                                               ; preds = %29
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @atoi(i8* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %3, align 8
  %41 = call i8* @skipspace(i8* %40)
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  store i8* %42, i8** %6, align 8
  br label %43

43:                                               ; preds = %48, %36
  %44 = load i8*, i8** %3, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i8*, i8** %3, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %3, align 8
  br label %43

51:                                               ; preds = %43
  %52 = load i8*, i8** %3, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = icmp ule i8* %52, %53
  br i1 %54, label %65, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %3, align 8
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @isspace(i8 signext %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60, %51
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %108

67:                                               ; preds = %60, %55
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @atoi(i8* %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sle i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @MOUSE_MAXBUTTON, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %67
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %2, align 4
  br label %108

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MOUSE_MAXBUTTON, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %78
  %86 = load i32, i32* @FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %108

87:                                               ; preds = %81
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = shl i32 1, %89
  %91 = load i32*, i32** @p2l, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load i32*, i32** @bstate, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32**, i32*** @mstate, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  store i32* %100, i32** %105, align 8
  br label %7

106:                                              ; preds = %7
  %107 = load i32, i32* @TRUE, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %85, %76, %65, %34
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i8* @skipspace(i8*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

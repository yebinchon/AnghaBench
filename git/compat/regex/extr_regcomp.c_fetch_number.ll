; ModuleID = '/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_fetch_number.c'
source_filename = "/home/carl/AnghaBench/git/compat/regex/extr_regcomp.c_fetch_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8 }

@END_OF_RE = common dso_local global i64 0, align 8
@OP_CLOSE_DUP_NUM = common dso_local global i64 0, align 8
@CHARACTER = common dso_local global i64 0, align 8
@RE_DUP_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32)* @fetch_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fetch_number(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  br label %10

10:                                               ; preds = %3, %81
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @fetch_token(%struct.TYPE_6__* %11, i32* %12, i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 8
  store i8 %18, i8* %9, align 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @END_OF_RE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @BE(i32 %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %10
  store i32 -2, i32* %4, align 4
  br label %85

28:                                               ; preds = %10
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OP_CLOSE_DUP_NUM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i8, i8* %9, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %28
  br label %83

39:                                               ; preds = %34
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHARACTER, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %39
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp slt i32 %47, 48
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load i8, i8* %9, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp slt i32 57, %51
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = icmp eq i32 %54, -2
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %49, %45, %39
  br label %73

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load i8, i8* %9, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 %62, 48
  br label %71

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 10
  %67 = load i8, i8* %9, align 1
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %66, %68
  %70 = sub nsw i32 %69, 48
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i32 [ %63, %60 ], [ %70, %64 ]
  br label %73

73:                                               ; preds = %71, %56
  %74 = phi i32 [ -2, %56 ], [ %72, %71 ]
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @RE_DUP_MAX, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %8, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = phi i32 [ -2, %78 ], [ %80, %79 ]
  store i32 %82, i32* %8, align 4
  br label %10

83:                                               ; preds = %38
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %27
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @fetch_token(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i64 @BE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

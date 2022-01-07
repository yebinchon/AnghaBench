; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_reset_time_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/localedef/extr_time.c_reset_time_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32**, i32**, i32**, i32** }

@last_kw = common dso_local global i32 0, align 4
@tm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_time_list() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @last_kw, align 4
  switch i32 %2, label %90 [
    i32 131, label %3
    i32 128, label %23
    i32 132, label %43
    i32 129, label %63
    i32 130, label %83
  ]

3:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %19, %3
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 12
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 5), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32*, i32** %8, i64 %10
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = call i32 @free(i8* %13)
  %15 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 5), align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %1, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %4

22:                                               ; preds = %4
  br label %90

23:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 12
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 4), align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @free(i8* %33)
  %35 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 4), align 8
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %1, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %1, align 4
  br label %24

42:                                               ; preds = %24
  br label %90

43:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %1, align 4
  %46 = icmp slt i32 %45, 7
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 3), align 8
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to i8*
  %54 = call i32 @free(i8* %53)
  %55 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 3), align 8
  %56 = load i32, i32* %1, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %47
  %60 = load i32, i32* %1, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %1, align 4
  br label %44

62:                                               ; preds = %44
  br label %90

63:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %1, align 4
  %66 = icmp slt i32 %65, 7
  br i1 %66, label %67, label %82

67:                                               ; preds = %64
  %68 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = call i32 @free(i8* %73)
  %75 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 2), align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32*, i32** %75, i64 %77
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %67
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %64

82:                                               ; preds = %64
  br label %90

83:                                               ; preds = %0
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  %85 = bitcast i32* %84 to i8*
  %86 = call i32 @free(i8* %85)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 1), align 8
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  %88 = bitcast i32* %87 to i8*
  %89 = call i32 @free(i8* %88)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tm, i32 0, i32 0), align 8
  br label %90

90:                                               ; preds = %0, %83, %82, %62, %42, %22
  ret void
}

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

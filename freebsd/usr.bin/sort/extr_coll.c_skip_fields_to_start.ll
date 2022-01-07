; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_skip_fields_to_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_skip_fields_to_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }
%struct.bwstring = type { i32 }

@sort_opts_vals = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.bwstring*, i64, i32*)* @skip_fields_to_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @skip_fields_to_start(%struct.bwstring* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.bwstring* %0, %struct.bwstring** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %12, 2
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %16 = call i64 @BWSLEN(%struct.bwstring* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32*, i32** %7, align 8
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %14
  store i64 0, i64* %4, align 8
  br label %90

21:                                               ; preds = %3
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 1), align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %21
  store i64 0, i64* %8, align 8
  store i32 1, i32* %9, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %28 = call i64 @BWSLEN(%struct.bwstring* %27)
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  %31 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @BWS_GET(%struct.bwstring* %31, i64 %32)
  %34 = call i32 @iswblank(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ule i64 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* %8, align 8
  store i64 %46, i64* %4, align 8
  br label %90

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %37, %30
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %8, align 8
  br label %25

52:                                               ; preds = %25
  %53 = load i64, i64* %6, align 8
  %54 = icmp ugt i64 %53, 1
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %7, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %4, align 8
  br label %90

59:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %63 = call i64 @BWSLEN(%struct.bwstring* %62)
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i64 @BWS_GET(%struct.bwstring* %66, i64 %67)
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sort_opts_vals, i32 0, i32 0), align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, -1
  store i64 %73, i64* %6, align 8
  %74 = load i64, i64* %6, align 8
  %75 = icmp ule i64 %74, 1
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* %11, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  br label %90

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %65
  %81 = load i64, i64* %11, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %11, align 8
  br label %60

83:                                               ; preds = %60
  %84 = load i64, i64* %6, align 8
  %85 = icmp ugt i64 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32*, i32** %7, align 8
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %86, %83
  %89 = load i64, i64* %11, align 8
  store i64 %89, i64* %4, align 8
  br label %90

90:                                               ; preds = %88, %76, %57, %45, %20
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @BWSLEN(%struct.bwstring*) #1

declare dso_local i32 @iswblank(i64) #1

declare dso_local i64 @BWS_GET(%struct.bwstring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

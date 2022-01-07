; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_reuse_combine_diff.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_reuse_combine_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sline = type { i64, i32*, %struct.lline* }
%struct.lline = type { i64, %struct.lline* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sline*, i64, i32, i32)* @reuse_combine_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reuse_combine_diff(%struct.sline* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sline*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.lline*, align 8
  store %struct.sline* %0, %struct.sline** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = zext i32 %13 to i64
  %15 = shl i64 1, %14
  store i64 %15, i64* %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  store i64 %18, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %76, %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ule i64 %20, %21
  br i1 %22, label %23, label %79

23:                                               ; preds = %19
  %24 = load %struct.sline*, %struct.sline** %5, align 8
  %25 = getelementptr inbounds %struct.sline, %struct.sline* %24, i32 0, i32 2
  %26 = load %struct.lline*, %struct.lline** %25, align 8
  store %struct.lline* %26, %struct.lline** %12, align 8
  %27 = load %struct.sline*, %struct.sline** %5, align 8
  %28 = getelementptr inbounds %struct.sline, %struct.sline* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sline*, %struct.sline** %5, align 8
  %35 = getelementptr inbounds %struct.sline, %struct.sline* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32 %33, i32* %39, align 4
  br label %40

40:                                               ; preds = %56, %23
  %41 = load %struct.lline*, %struct.lline** %12, align 8
  %42 = icmp ne %struct.lline* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %40
  %44 = load %struct.lline*, %struct.lline** %12, align 8
  %45 = getelementptr inbounds %struct.lline, %struct.lline* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %11, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.lline*, %struct.lline** %12, align 8
  %53 = getelementptr inbounds %struct.lline, %struct.lline* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = or i64 %54, %51
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.lline*, %struct.lline** %12, align 8
  %58 = getelementptr inbounds %struct.lline, %struct.lline* %57, i32 0, i32 1
  %59 = load %struct.lline*, %struct.lline** %58, align 8
  store %struct.lline* %59, %struct.lline** %12, align 8
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.sline*, %struct.sline** %5, align 8
  %62 = getelementptr inbounds %struct.sline, %struct.sline* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.sline*, %struct.sline** %5, align 8
  %70 = getelementptr inbounds %struct.sline, %struct.sline* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = or i64 %71, %68
  store i64 %72, i64* %70, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.sline*, %struct.sline** %5, align 8
  %75 = getelementptr inbounds %struct.sline, %struct.sline* %74, i32 1
  store %struct.sline* %75, %struct.sline** %5, align 8
  br label %76

76:                                               ; preds = %73
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %9, align 8
  br label %19

79:                                               ; preds = %19
  %80 = load %struct.sline*, %struct.sline** %5, align 8
  %81 = getelementptr inbounds %struct.sline, %struct.sline* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.sline*, %struct.sline** %5, align 8
  %88 = getelementptr inbounds %struct.sline, %struct.sline* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %86, i32* %92, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

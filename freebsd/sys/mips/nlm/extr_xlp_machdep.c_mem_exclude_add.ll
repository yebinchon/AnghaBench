; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_mem_exclude_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_xlp_machdep.c_mem_exclude_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xlp_mem_excl = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64)* @mem_exclude_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_exclude_add(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %77, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i64*, i64** @xlp_mem_excl, align 8
  %12 = call i32 @nitems(i64* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %9
  %15 = load i64, i64* %5, align 8
  %16 = load i64*, i64** @xlp_mem_excl, align 8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %15, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %77

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = load i64*, i64** @xlp_mem_excl, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = load i64*, i64** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i64, i64* %34, i64 %37
  store i64 %33, i64* %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64*, i64** @xlp_mem_excl, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %39, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %32
  %47 = load i64, i64* %6, align 8
  %48 = load i64*, i64** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  store i64 %47, i64* %52, align 8
  br label %64

53:                                               ; preds = %32
  %54 = load i64*, i64** @xlp_mem_excl, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %54, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i64, i64* %59, i64 %62
  store i64 %58, i64* %63, align 8
  br label %64

64:                                               ; preds = %53, %46
  br label %65

65:                                               ; preds = %64, %24
  %66 = load i64*, i64** @xlp_mem_excl, align 8
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %6, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp sle i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %80

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76, %23
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %9

80:                                               ; preds = %75, %9
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp slt i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %80
  %85 = load i64, i64* %5, align 8
  %86 = load i64*, i64** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  store i64 %85, i64* %90, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load i64*, i64** %4, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  store i64 %91, i64* %96, align 8
  br label %97

97:                                               ; preds = %84, %80
  %98 = load i32, i32* %8, align 4
  ret i32 %98
}

declare dso_local i32 @nitems(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

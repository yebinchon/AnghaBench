; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_early_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_early_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i32 }

@phys_avail = common dso_local global i64* null, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"cannot find a large enough size\0A\00", align 1
@mem_affinity = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_phys_early_alloc(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %10, align 8
  store i64 -1, i64* %11, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %54, %2
  %16 = load i64*, i64** @phys_avail, align 8
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load i64*, i64** @phys_avail, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = sub i64 %29, %30
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %23
  %35 = load i64*, i64** @phys_avail, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34, %23
  br label %54

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @vm_phys_avail_size(i32 %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %13, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %8, align 4
  %52 = load i64, i64* %12, align 8
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 2
  store i32 %56, i32* %6, align 4
  br label %15

57:                                               ; preds = %15
  %58 = load i64, i64* %5, align 8
  %59 = call i64 @round_page(i64 %58)
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load i64*, i64** @phys_avail, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* @PAGE_SIZE, align 8
  %70 = load i64*, i64** @phys_avail, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, %69
  store i64 %75, i64* %73, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @vm_phys_avail_check(i32 %76)
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %3, align 8
  br label %138

79:                                               ; preds = %57
  %80 = load i64*, i64** @phys_avail, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %80, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %5, align 8
  %87 = sub i64 %86, 1
  %88 = and i64 %85, %87
  store i64 %88, i64* %14, align 8
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* %13, align 8
  %93 = icmp ugt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %79
  %95 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %79
  %97 = load i64, i64* %14, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %96
  %100 = load i64*, i64** @phys_avail, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = sub i64 %105, %106
  %108 = load i32, i32* %8, align 4
  %109 = call i64 @vm_phys_avail_split(i64 %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %99
  %112 = load i64, i64* %14, align 8
  %113 = load i64*, i64** @phys_avail, align 8
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, i64* %113, i64 %116
  %118 = load i64, i64* %117, align 8
  %119 = sub i64 %118, %112
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %111, %99, %96
  %121 = load i64, i64* %5, align 8
  %122 = load i64*, i64** @phys_avail, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = sub i64 %127, %121
  store i64 %128, i64* %126, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @vm_phys_avail_check(i32 %129)
  %131 = load i64*, i64** @phys_avail, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %120, %63
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local i64 @vm_phys_avail_size(i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_phys_avail_check(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @vm_phys_avail_split(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

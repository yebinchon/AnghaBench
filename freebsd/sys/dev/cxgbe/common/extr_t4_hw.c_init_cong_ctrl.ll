; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_init_cong_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_init_cong_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i16*, i16*)* @init_cong_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_cong_ctrl(i16* %0, i16* %1) #0 {
  %3 = alloca i16*, align 8
  %4 = alloca i16*, align 8
  store i16* %0, i16** %3, align 8
  store i16* %1, i16** %4, align 8
  %5 = load i16*, i16** %3, align 8
  %6 = getelementptr inbounds i16, i16* %5, i64 8
  store i16 1, i16* %6, align 2
  %7 = load i16*, i16** %3, align 8
  %8 = getelementptr inbounds i16, i16* %7, i64 7
  store i16 1, i16* %8, align 2
  %9 = load i16*, i16** %3, align 8
  %10 = getelementptr inbounds i16, i16* %9, i64 6
  store i16 1, i16* %10, align 2
  %11 = load i16*, i16** %3, align 8
  %12 = getelementptr inbounds i16, i16* %11, i64 5
  store i16 1, i16* %12, align 2
  %13 = load i16*, i16** %3, align 8
  %14 = getelementptr inbounds i16, i16* %13, i64 4
  store i16 1, i16* %14, align 2
  %15 = load i16*, i16** %3, align 8
  %16 = getelementptr inbounds i16, i16* %15, i64 3
  store i16 1, i16* %16, align 2
  %17 = load i16*, i16** %3, align 8
  %18 = getelementptr inbounds i16, i16* %17, i64 2
  store i16 1, i16* %18, align 2
  %19 = load i16*, i16** %3, align 8
  %20 = getelementptr inbounds i16, i16* %19, i64 1
  store i16 1, i16* %20, align 2
  %21 = load i16*, i16** %3, align 8
  %22 = getelementptr inbounds i16, i16* %21, i64 0
  store i16 1, i16* %22, align 2
  %23 = load i16*, i16** %3, align 8
  %24 = getelementptr inbounds i16, i16* %23, i64 9
  store i16 2, i16* %24, align 2
  %25 = load i16*, i16** %3, align 8
  %26 = getelementptr inbounds i16, i16* %25, i64 10
  store i16 3, i16* %26, align 2
  %27 = load i16*, i16** %3, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 11
  store i16 4, i16* %28, align 2
  %29 = load i16*, i16** %3, align 8
  %30 = getelementptr inbounds i16, i16* %29, i64 12
  store i16 5, i16* %30, align 2
  %31 = load i16*, i16** %3, align 8
  %32 = getelementptr inbounds i16, i16* %31, i64 13
  store i16 6, i16* %32, align 2
  %33 = load i16*, i16** %3, align 8
  %34 = getelementptr inbounds i16, i16* %33, i64 14
  store i16 7, i16* %34, align 2
  %35 = load i16*, i16** %3, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 15
  store i16 8, i16* %36, align 2
  %37 = load i16*, i16** %3, align 8
  %38 = getelementptr inbounds i16, i16* %37, i64 16
  store i16 9, i16* %38, align 2
  %39 = load i16*, i16** %3, align 8
  %40 = getelementptr inbounds i16, i16* %39, i64 17
  store i16 10, i16* %40, align 2
  %41 = load i16*, i16** %3, align 8
  %42 = getelementptr inbounds i16, i16* %41, i64 18
  store i16 14, i16* %42, align 2
  %43 = load i16*, i16** %3, align 8
  %44 = getelementptr inbounds i16, i16* %43, i64 19
  store i16 17, i16* %44, align 2
  %45 = load i16*, i16** %3, align 8
  %46 = getelementptr inbounds i16, i16* %45, i64 20
  store i16 21, i16* %46, align 2
  %47 = load i16*, i16** %3, align 8
  %48 = getelementptr inbounds i16, i16* %47, i64 21
  store i16 25, i16* %48, align 2
  %49 = load i16*, i16** %3, align 8
  %50 = getelementptr inbounds i16, i16* %49, i64 22
  store i16 30, i16* %50, align 2
  %51 = load i16*, i16** %3, align 8
  %52 = getelementptr inbounds i16, i16* %51, i64 23
  store i16 35, i16* %52, align 2
  %53 = load i16*, i16** %3, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 24
  store i16 45, i16* %54, align 2
  %55 = load i16*, i16** %3, align 8
  %56 = getelementptr inbounds i16, i16* %55, i64 25
  store i16 60, i16* %56, align 2
  %57 = load i16*, i16** %3, align 8
  %58 = getelementptr inbounds i16, i16* %57, i64 26
  store i16 80, i16* %58, align 2
  %59 = load i16*, i16** %3, align 8
  %60 = getelementptr inbounds i16, i16* %59, i64 27
  store i16 100, i16* %60, align 2
  %61 = load i16*, i16** %3, align 8
  %62 = getelementptr inbounds i16, i16* %61, i64 28
  store i16 200, i16* %62, align 2
  %63 = load i16*, i16** %3, align 8
  %64 = getelementptr inbounds i16, i16* %63, i64 29
  store i16 300, i16* %64, align 2
  %65 = load i16*, i16** %3, align 8
  %66 = getelementptr inbounds i16, i16* %65, i64 30
  store i16 400, i16* %66, align 2
  %67 = load i16*, i16** %3, align 8
  %68 = getelementptr inbounds i16, i16* %67, i64 31
  store i16 500, i16* %68, align 2
  %69 = load i16*, i16** %4, align 8
  %70 = getelementptr inbounds i16, i16* %69, i64 8
  store i16 0, i16* %70, align 2
  %71 = load i16*, i16** %4, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 7
  store i16 0, i16* %72, align 2
  %73 = load i16*, i16** %4, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 6
  store i16 0, i16* %74, align 2
  %75 = load i16*, i16** %4, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 5
  store i16 0, i16* %76, align 2
  %77 = load i16*, i16** %4, align 8
  %78 = getelementptr inbounds i16, i16* %77, i64 4
  store i16 0, i16* %78, align 2
  %79 = load i16*, i16** %4, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 3
  store i16 0, i16* %80, align 2
  %81 = load i16*, i16** %4, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 2
  store i16 0, i16* %82, align 2
  %83 = load i16*, i16** %4, align 8
  %84 = getelementptr inbounds i16, i16* %83, i64 1
  store i16 0, i16* %84, align 2
  %85 = load i16*, i16** %4, align 8
  %86 = getelementptr inbounds i16, i16* %85, i64 0
  store i16 0, i16* %86, align 2
  %87 = load i16*, i16** %4, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 10
  store i16 1, i16* %88, align 2
  %89 = load i16*, i16** %4, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 9
  store i16 1, i16* %90, align 2
  %91 = load i16*, i16** %4, align 8
  %92 = getelementptr inbounds i16, i16* %91, i64 12
  store i16 2, i16* %92, align 2
  %93 = load i16*, i16** %4, align 8
  %94 = getelementptr inbounds i16, i16* %93, i64 11
  store i16 2, i16* %94, align 2
  %95 = load i16*, i16** %4, align 8
  %96 = getelementptr inbounds i16, i16* %95, i64 16
  store i16 3, i16* %96, align 2
  %97 = load i16*, i16** %4, align 8
  %98 = getelementptr inbounds i16, i16* %97, i64 15
  store i16 3, i16* %98, align 2
  %99 = load i16*, i16** %4, align 8
  %100 = getelementptr inbounds i16, i16* %99, i64 14
  store i16 3, i16* %100, align 2
  %101 = load i16*, i16** %4, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 13
  store i16 3, i16* %102, align 2
  %103 = load i16*, i16** %4, align 8
  %104 = getelementptr inbounds i16, i16* %103, i64 21
  store i16 4, i16* %104, align 2
  %105 = load i16*, i16** %4, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 20
  store i16 4, i16* %106, align 2
  %107 = load i16*, i16** %4, align 8
  %108 = getelementptr inbounds i16, i16* %107, i64 19
  store i16 4, i16* %108, align 2
  %109 = load i16*, i16** %4, align 8
  %110 = getelementptr inbounds i16, i16* %109, i64 18
  store i16 4, i16* %110, align 2
  %111 = load i16*, i16** %4, align 8
  %112 = getelementptr inbounds i16, i16* %111, i64 17
  store i16 4, i16* %112, align 2
  %113 = load i16*, i16** %4, align 8
  %114 = getelementptr inbounds i16, i16* %113, i64 27
  store i16 5, i16* %114, align 2
  %115 = load i16*, i16** %4, align 8
  %116 = getelementptr inbounds i16, i16* %115, i64 26
  store i16 5, i16* %116, align 2
  %117 = load i16*, i16** %4, align 8
  %118 = getelementptr inbounds i16, i16* %117, i64 25
  store i16 5, i16* %118, align 2
  %119 = load i16*, i16** %4, align 8
  %120 = getelementptr inbounds i16, i16* %119, i64 24
  store i16 5, i16* %120, align 2
  %121 = load i16*, i16** %4, align 8
  %122 = getelementptr inbounds i16, i16* %121, i64 23
  store i16 5, i16* %122, align 2
  %123 = load i16*, i16** %4, align 8
  %124 = getelementptr inbounds i16, i16* %123, i64 22
  store i16 5, i16* %124, align 2
  %125 = load i16*, i16** %4, align 8
  %126 = getelementptr inbounds i16, i16* %125, i64 29
  store i16 6, i16* %126, align 2
  %127 = load i16*, i16** %4, align 8
  %128 = getelementptr inbounds i16, i16* %127, i64 28
  store i16 6, i16* %128, align 2
  %129 = load i16*, i16** %4, align 8
  %130 = getelementptr inbounds i16, i16* %129, i64 31
  store i16 7, i16* %130, align 2
  %131 = load i16*, i16** %4, align 8
  %132 = getelementptr inbounds i16, i16* %131, i64 30
  store i16 7, i16* %132, align 2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

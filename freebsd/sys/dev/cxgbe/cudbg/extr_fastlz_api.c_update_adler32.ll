; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_update_adler32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_update_adler32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADLER32_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i32)* @update_adler32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @update_adler32(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i64, i64* %4, align 8
  %13 = and i64 %12, 65535
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %4, align 8
  %15 = lshr i64 %14, 16
  %16 = and i64 %15, 65535
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %124, %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %131

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 5552
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  br label %26

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 5552, %25 ]
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %34, %26
  %32 = load i32, i32* %10, align 4
  %33 = icmp uge i32 %32, 8
  br i1 %33, label %34, label %109

34:                                               ; preds = %31
  %35 = load i8*, i8** %7, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* %35, align 1
  %38 = zext i8 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %9, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %7, align 8
  %55 = load i8, i8* %53, align 1
  %56 = zext i8 %55 to i64
  %57 = load i64, i64* %8, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %8, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = add i64 %60, %59
  store i64 %61, i64* %9, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  %64 = load i8, i8* %62, align 1
  %65 = zext i8 %64 to i64
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %8, align 8
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %9, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  %73 = load i8, i8* %71, align 1
  %74 = zext i8 %73 to i64
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %9, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i64
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %9, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %7, align 8
  %91 = load i8, i8* %89, align 1
  %92 = zext i8 %91 to i64
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, %92
  store i64 %94, i64* %8, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %9, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  %100 = load i8, i8* %98, align 1
  %101 = zext i8 %100 to i64
  %102 = load i64, i64* %8, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = load i64, i64* %9, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = sub i32 %107, 8
  store i32 %108, i32* %10, align 4
  br label %31

109:                                              ; preds = %31
  br label %110

110:                                              ; preds = %114, %109
  %111 = load i32, i32* %10, align 4
  %112 = add i32 %111, -1
  store i32 %112, i32* %10, align 4
  %113 = icmp ugt i32 %111, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %7, align 8
  %117 = load i8, i8* %115, align 1
  %118 = zext i8 %117 to i64
  %119 = load i64, i64* %8, align 8
  %120 = add i64 %119, %118
  store i64 %120, i64* %8, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %9, align 8
  br label %110

124:                                              ; preds = %110
  %125 = load i64, i64* %8, align 8
  %126 = load i64, i64* @ADLER32_BASE, align 8
  %127 = urem i64 %125, %126
  store i64 %127, i64* %8, align 8
  %128 = load i64, i64* %9, align 8
  %129 = load i64, i64* @ADLER32_BASE, align 8
  %130 = urem i64 %128, %129
  store i64 %130, i64* %9, align 8
  br label %17

131:                                              ; preds = %17
  %132 = load i64, i64* %9, align 8
  %133 = shl i64 %132, 16
  %134 = load i64, i64* %8, align 8
  %135 = add i64 %133, %134
  ret i64 %135
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

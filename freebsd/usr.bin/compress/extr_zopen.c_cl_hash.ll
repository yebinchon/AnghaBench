; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_cl_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/compress/extr_zopen.c_cl_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_zstate = type { i32 }

@htab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_zstate*, i32)* @cl_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cl_hash(%struct.s_zstate* %0, i32 %1) #0 {
  %3 = alloca %struct.s_zstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.s_zstate* %0, %struct.s_zstate** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 -1, i64* %7, align 8
  %8 = load i32*, i32** @htab, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 16
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %6, align 8
  br label %15

15:                                               ; preds = %82, %2
  %16 = load i64, i64* %7, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 -16
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* %7, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 -15
  store i32 %21, i32* %23, align 4
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 -14
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 -13
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 -12
  store i32 %33, i32* %35, align 4
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %5, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 -11
  store i32 %37, i32* %39, align 4
  %40 = load i64, i64* %7, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 -10
  store i32 %41, i32* %43, align 4
  %44 = load i64, i64* %7, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 -9
  store i32 %45, i32* %47, align 4
  %48 = load i64, i64* %7, align 8
  %49 = trunc i64 %48 to i32
  %50 = load i32*, i32** %5, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 -8
  store i32 %49, i32* %51, align 4
  %52 = load i64, i64* %7, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 -7
  store i32 %53, i32* %55, align 4
  %56 = load i64, i64* %7, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 -6
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 -5
  store i32 %61, i32* %63, align 4
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 -4
  store i32 %65, i32* %67, align 4
  %68 = load i64, i64* %7, align 8
  %69 = trunc i64 %68 to i32
  %70 = load i32*, i32** %5, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 -3
  store i32 %69, i32* %71, align 4
  %72 = load i64, i64* %7, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 -2
  store i32 %73, i32* %75, align 4
  %76 = load i64, i64* %7, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 -16
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %15
  %83 = load i64, i64* %6, align 8
  %84 = sub nsw i64 %83, 16
  store i64 %84, i64* %6, align 8
  %85 = icmp sge i64 %84, 0
  br i1 %85, label %15, label %86

86:                                               ; preds = %82
  %87 = load i64, i64* %6, align 8
  %88 = add nsw i64 %87, 16
  store i64 %88, i64* %6, align 8
  br label %89

89:                                               ; preds = %97, %86
  %90 = load i64, i64* %6, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i64, i64* %7, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32*, i32** %5, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 -1
  store i32* %96, i32** %5, align 8
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %92
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %98, -1
  store i64 %99, i64* %6, align 8
  br label %89

100:                                              ; preds = %89
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

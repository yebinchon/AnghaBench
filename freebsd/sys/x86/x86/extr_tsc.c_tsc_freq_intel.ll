; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_intel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_tsc.c_tsc_freq_intel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_exthigh = common dso_local global i32 0, align 4
@tsc_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tsc_freq_intel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsc_freq_intel() #0 {
  %1 = alloca [48 x i8], align 16
  %2 = alloca [4 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @cpu_exthigh, align 4
  %7 = icmp uge i32 %6, -2147483644
  br i1 %7, label %8, label %138

8:                                                ; preds = %0
  %9 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  store i8* %9, i8** %4, align 8
  store i32 -2147483646, i32* %5, align 4
  br label %10

10:                                               ; preds = %22, %8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ult i32 %11, -2147483643
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %16 = call i32 @do_cpuid(i32 %14, i32* %15)
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 0
  %19 = call i32 @memcpy(i8* %17, i32* %18, i32 16)
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 16
  store i8* %21, i8** %4, align 8
  br label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %10

25:                                               ; preds = %10
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %51, %25
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 47
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 72
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 122
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = getelementptr inbounds [48 x i8], [48 x i8]* %1, i64 0, i64 0
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  store i8* %49, i8** %4, align 8
  br label %50

50:                                               ; preds = %45, %37, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %26

54:                                               ; preds = %26
  %55 = load i8*, i8** %4, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %137

57:                                               ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 -5
  store i8* %59, i8** %4, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %67 [
    i32 77, label %64
    i32 71, label %65
    i32 84, label %66
  ]

64:                                               ; preds = %57
  store i32 1, i32* %5, align 4
  br label %68

65:                                               ; preds = %57
  store i32 1000, i32* %5, align 4
  br label %68

66:                                               ; preds = %57
  store i32 1000000, i32* %5, align 4
  br label %68

67:                                               ; preds = %57
  br label %138

68:                                               ; preds = %66, %65, %64
  %69 = load i8*, i8** %4, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 46
  br i1 %73, label %74, label %101

74:                                               ; preds = %68
  %75 = load i8*, i8** %4, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 0
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, 48
  %80 = mul nsw i32 %79, 1000
  store i32 %80, i32* %3, align 4
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 48
  %86 = mul nsw i32 %85, 100
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %3, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 3
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = sub nsw i32 %92, 48
  %94 = mul nsw i32 %93, 10
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %5, align 4
  %98 = mul nsw i32 %97, 1000
  %99 = load i32, i32* %3, align 4
  %100 = mul nsw i32 %99, %98
  store i32 %100, i32* %3, align 4
  br label %135

101:                                              ; preds = %68
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 0
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = sub nsw i32 %105, 48
  %107 = mul nsw i32 %106, 1000
  store i32 %107, i32* %3, align 4
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 1
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = sub nsw i32 %111, 48
  %113 = mul nsw i32 %112, 100
  %114 = load i32, i32* %3, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = load i8*, i8** %4, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 2
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = sub nsw i32 %119, 48
  %121 = mul nsw i32 %120, 10
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %3, align 4
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  %129 = load i32, i32* %3, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* %5, align 4
  %132 = mul nsw i32 %131, 1000000
  %133 = load i32, i32* %3, align 4
  %134 = mul nsw i32 %133, %132
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %101, %74
  %136 = load i32, i32* %3, align 4
  store i32 %136, i32* @tsc_freq, align 4
  br label %137

137:                                              ; preds = %135, %54
  br label %138

138:                                              ; preds = %67, %137, %0
  ret void
}

declare dso_local i32 @do_cpuid(i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

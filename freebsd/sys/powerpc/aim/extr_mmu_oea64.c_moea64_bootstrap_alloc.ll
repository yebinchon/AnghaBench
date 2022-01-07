; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_bootstrap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea64.c_moea64_bootstrap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_avail = common dso_local global i64* null, align 8
@phys_avail_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"moea64_bootstrap_alloc: could not allocate memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @moea64_bootstrap_alloc(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @round_page(i64 %10)
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %160, %2
  %13 = load i64*, i64** @phys_avail, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %163

20:                                               ; preds = %12
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64*, i64** @phys_avail, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @roundup2(i64 %28, i64 %29)
  store i64 %30, i64* %6, align 8
  br label %37

31:                                               ; preds = %20
  %32 = load i64*, i64** @phys_avail, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %31, %23
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %4, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64*, i64** @phys_avail, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load i64, i64* %7, align 8
  %50 = load i64*, i64** @phys_avail, align 8
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %50, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %49, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %48, %37
  br label %160

58:                                               ; preds = %48
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i64 (...) @platform_real_maxaddr()
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %160

65:                                               ; preds = %58
  %66 = load i64, i64* %6, align 8
  %67 = load i64*, i64** @phys_avail, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i64, i64* %4, align 8
  %75 = load i64*, i64** @phys_avail, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, %74
  store i64 %80, i64* %78, align 8
  br label %158

81:                                               ; preds = %65
  %82 = load i64, i64* %7, align 8
  %83 = load i64*, i64** @phys_avail, align 8
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %83, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %82, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %81
  %91 = load i64, i64* %4, align 8
  %92 = load i64*, i64** @phys_avail, align 8
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %92, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %97, %91
  store i64 %98, i64* %96, align 8
  br label %157

99:                                               ; preds = %81
  %100 = load i32, i32* @phys_avail_count, align 4
  %101 = mul nsw i32 %100, 2
  store i32 %101, i32* %9, align 4
  br label %102

102:                                              ; preds = %128, %99
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %102
  %107 = load i64*, i64** @phys_avail, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** @phys_avail, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  store i64 %112, i64* %116, align 8
  %117 = load i64*, i64** @phys_avail, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %117, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** @phys_avail, align 8
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %123, i64 %126
  store i64 %122, i64* %127, align 8
  br label %128

128:                                              ; preds = %106
  %129 = load i32, i32* %9, align 4
  %130 = sub nsw i32 %129, 2
  store i32 %130, i32* %9, align 4
  br label %102

131:                                              ; preds = %102
  %132 = load i64*, i64** @phys_avail, align 8
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %132, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i64*, i64** @phys_avail, align 8
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %138, i64 %141
  store i64 %137, i64* %142, align 8
  %143 = load i64, i64* %6, align 8
  %144 = load i64*, i64** @phys_avail, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %144, i64 %147
  store i64 %143, i64* %148, align 8
  %149 = load i64, i64* %7, align 8
  %150 = load i64*, i64** @phys_avail, align 8
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 2
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  store i64 %149, i64* %154, align 8
  %155 = load i32, i32* @phys_avail_count, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* @phys_avail_count, align 4
  br label %157

157:                                              ; preds = %131, %90
  br label %158

158:                                              ; preds = %157, %73
  %159 = load i64, i64* %6, align 8
  store i64 %159, i64* %3, align 8
  br label %165

160:                                              ; preds = %64, %57
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 2
  store i32 %162, i32* %8, align 4
  br label %12

163:                                              ; preds = %12
  %164 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %158
  %166 = load i64, i64* %3, align 8
  ret i64 %166
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i64 @platform_real_maxaddr(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_bootstrap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_mmu_oea.c_moea_bootstrap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phys_avail = common dso_local global i64* null, align 8
@phys_avail_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"moea_bootstrap_alloc: could not allocate memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @moea_bootstrap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @moea_bootstrap_alloc(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @round_page(i64 %10)
  store i64 %11, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %153, %2
  %13 = load i64*, i64** @phys_avail, align 8
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i64, i64* %13, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %156

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i64*, i64** @phys_avail, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @roundup2(i64 %28, i32 %29)
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
  br label %153

58:                                               ; preds = %48
  %59 = load i64, i64* %6, align 8
  %60 = load i64*, i64** @phys_avail, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %59, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i64, i64* %4, align 8
  %68 = load i64*, i64** @phys_avail, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %67
  store i64 %73, i64* %71, align 8
  br label %151

74:                                               ; preds = %58
  %75 = load i64, i64* %7, align 8
  %76 = load i64*, i64** @phys_avail, align 8
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %75, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %74
  %84 = load i64, i64* %4, align 8
  %85 = load i64*, i64** @phys_avail, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %85, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %90, %84
  store i64 %91, i64* %89, align 8
  br label %150

92:                                               ; preds = %74
  %93 = load i32, i32* @phys_avail_count, align 4
  %94 = mul nsw i32 %93, 2
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %121, %92
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %95
  %100 = load i64*, i64** @phys_avail, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %100, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** @phys_avail, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %106, i64 %108
  store i64 %105, i64* %109, align 8
  %110 = load i64*, i64** @phys_avail, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %110, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i64*, i64** @phys_avail, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  store i64 %115, i64* %120, align 8
  br label %121

121:                                              ; preds = %99
  %122 = load i32, i32* %9, align 4
  %123 = sub nsw i32 %122, 2
  store i32 %123, i32* %9, align 4
  br label %95

124:                                              ; preds = %95
  %125 = load i64*, i64** @phys_avail, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %125, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = load i64*, i64** @phys_avail, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 3
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  store i64 %130, i64* %135, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64*, i64** @phys_avail, align 8
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  store i64 %136, i64* %141, align 8
  %142 = load i64, i64* %7, align 8
  %143 = load i64*, i64** @phys_avail, align 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %143, i64 %146
  store i64 %142, i64* %147, align 8
  %148 = load i32, i32* @phys_avail_count, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @phys_avail_count, align 4
  br label %150

150:                                              ; preds = %124, %83
  br label %151

151:                                              ; preds = %150, %66
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  br label %158

153:                                              ; preds = %57
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %8, align 4
  br label %12

156:                                              ; preds = %12
  %157 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %158

158:                                              ; preds = %156, %151
  %159 = load i64, i64* %3, align 8
  ret i64 %159
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

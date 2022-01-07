; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_read_usage_times.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/powerd/extr_powerd.c_read_usage_times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@read_usage_times.cp_times = internal global i64* null, align 8
@read_usage_times.cp_times_old = internal global i64* null, align 8
@read_usage_times.ncpus = internal global i32 0, align 4
@cp_times_mib = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@CPUSTATES = common dso_local global i32 0, align 4
@CP_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @read_usage_times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_usage_times(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i64*, i64** @read_usage_times.cp_times, align 8
  %10 = icmp eq i64* %9, null
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  %12 = load i32, i32* @cp_times_mib, align 4
  %13 = call i32 @sysctl(i32 %12, i32 2, i64* null, i64* %4, i32* null, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %137

18:                                               ; preds = %11
  %19 = load i64, i64* %4, align 8
  %20 = call i64* @malloc(i64 %19)
  store i64* %20, i64** @read_usage_times.cp_times, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %2, align 4
  br label %137

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = call i64* @malloc(i64 %25)
  store i64* %26, i64** @read_usage_times.cp_times_old, align 8
  %27 = icmp eq i64* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64*, i64** @read_usage_times.cp_times, align 8
  %30 = call i32 @free(i64* %29)
  store i64* null, i64** @read_usage_times.cp_times, align 8
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %2, align 4
  br label %137

32:                                               ; preds = %24
  %33 = load i64, i64* %4, align 8
  %34 = load i32, i32* @CPUSTATES, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 8, %35
  %37 = udiv i64 %33, %36
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* @read_usage_times.ncpus, align 4
  br label %39

39:                                               ; preds = %32, %1
  %40 = load i32, i32* @CPUSTATES, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 8, %41
  %43 = load i32, i32* @read_usage_times.ncpus, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %42, %44
  store i64 %45, i64* %4, align 8
  %46 = load i32, i32* @cp_times_mib, align 4
  %47 = load i64*, i64** @read_usage_times.cp_times, align 8
  %48 = call i32 @sysctl(i32 %46, i32 2, i64* %47, i64* %4, i32* null, i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %137

53:                                               ; preds = %39
  %54 = load i32*, i32** %3, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %132

56:                                               ; preds = %53
  %57 = load i32*, i32** %3, align 8
  store i32 0, i32* %57, align 4
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %128, %56
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @read_usage_times.ncpus, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %131

62:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %91, %62
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @CPUSTATES, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i64*, i64** @read_usage_times.cp_times, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @CPUSTATES, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %68, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** @read_usage_times.cp_times_old, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @CPUSTATES, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %76, %85
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %67
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %63

94:                                               ; preds = %63
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %128

98:                                               ; preds = %94
  %99 = load i64*, i64** @read_usage_times.cp_times, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @CPUSTATES, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32, i32* @CP_IDLE, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %99, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load i64*, i64** @read_usage_times.cp_times_old, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @CPUSTATES, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load i32, i32* @CP_IDLE, align 4
  %113 = add nsw i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %108, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %107, %116
  %118 = mul nsw i64 %117, 100
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = sdiv i64 %118, %120
  %122 = sub nsw i64 100, %121
  %123 = load i32*, i32** %3, align 8
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %122
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %123, align 4
  br label %128

128:                                              ; preds = %98, %97
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %58

131:                                              ; preds = %58
  br label %132

132:                                              ; preds = %131, %53
  %133 = load i64*, i64** @read_usage_times.cp_times_old, align 8
  %134 = load i64*, i64** @read_usage_times.cp_times, align 8
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @memcpy(i64* %133, i64* %134, i64 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %132, %51, %28, %22, %16
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @sysctl(i32, i32, i64*, i64*, i32*, i32) #1

declare dso_local i64* @malloc(i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

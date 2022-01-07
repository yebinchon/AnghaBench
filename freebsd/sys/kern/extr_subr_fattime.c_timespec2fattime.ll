; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_fattime.c_timespec2fattime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_fattime.c_timespec2fattime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.timespec = type { i32, i32 }

@DAY = common dso_local global i32 0, align 4
@T1980 = common dso_local global i32 0, align 4
@LYC = common dso_local global i32 0, align 4
@FEB = common dso_local global i32 0, align 4
@mtab = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timespec2fattime(%struct.timespec* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.timespec*, %struct.timespec** %6, align 8
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = call i64 (...) @utc_offset()
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %20, %5
  %27 = load i32*, i32** %10, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load %struct.timespec*, %struct.timespec** %6, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = mul nsw i32 %33, 100
  %35 = load %struct.timespec*, %struct.timespec** %6, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 10000000
  %39 = add nsw i32 %34, %38
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %29, %26
  %42 = load i32*, i32** %9, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %11, align 4
  %46 = sdiv i32 %45, 2
  %47 = srem i32 %46, 30
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sdiv i32 %49, 60
  %51 = srem i32 %50, 60
  %52 = shl i32 %51, 5
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %11, align 4
  %57 = sdiv i32 %56, 3600
  %58 = srem i32 %57, 24
  %59 = shl i32 %58, 11
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %59
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %44, %41
  %64 = load i32*, i32** %8, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %147

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @DAY, align 4
  %69 = sdiv i32 %67, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @T1980, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32*, i32** %8, align 8
  store i32 33, i32* %74, align 4
  br label %146

75:                                               ; preds = %66
  %76 = load i32, i32* @T1980, align 4
  %77 = load i32, i32* %12, align 4
  %78 = sub i32 %77, %76
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @LYC, align 4
  %81 = mul nsw i32 30, %80
  %82 = load i32, i32* @FEB, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp uge i32 %79, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %12, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %85, %75
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @LYC, align 4
  %91 = udiv i32 %89, %90
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = mul i32 %92, 4
  %94 = shl i32 %93, 9
  %95 = load i32*, i32** %8, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @LYC, align 4
  %98 = mul i32 %96, %97
  %99 = load i32, i32* %12, align 4
  %100 = sub i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = udiv i32 %101, 32
  store i32 %102, i32* %14, align 4
  br label %103

103:                                              ; preds = %118, %88
  %104 = load i32, i32* %14, align 4
  %105 = icmp ult i32 %104, 47
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtab, align 8
  %108 = load i32, i32* %14, align 4
  %109 = add i32 %108, 1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = icmp ule i32 %113, %114
  br label %116

116:                                              ; preds = %106, %103
  %117 = phi i1 [ false, %103 ], [ %115, %106 ]
  br i1 %117, label %118, label %121

118:                                              ; preds = %116
  %119 = load i32, i32* %14, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %14, align 4
  br label %103

121:                                              ; preds = %116
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtab, align 8
  %123 = load i32, i32* %14, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %127
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtab, align 8
  %134 = load i32, i32* %14, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub i32 %138, 1
  %140 = load i32, i32* %12, align 4
  %141 = sub i32 %140, %139
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %121, %73
  br label %147

147:                                              ; preds = %146, %63
  ret void
}

declare dso_local i64 @utc_offset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

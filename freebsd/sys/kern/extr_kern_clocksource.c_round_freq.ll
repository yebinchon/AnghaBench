; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_round_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_clocksource.c_round_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i32, i32, i64, i64, i32 }

@ET_FLAGS_POW2DIV = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Event timer \22%s\22 doesn't support sub-second periods!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32)* @round_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @round_freq(%struct.eventtimer* %0, i32 %1) #0 {
  %3 = alloca %struct.eventtimer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %7 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %12 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %13, %15
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %16, %17
  %19 = call i32 @lmax(i32 %18, i32 1)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %21 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ET_FLAGS_POW2DIV, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %10
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %27, %29
  %31 = call i32 @flsl(i32 %30)
  %32 = sub nsw i32 %31, 1
  %33 = shl i32 1, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %10
  %35 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %36 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 2
  %40 = add nsw i32 %37, %39
  %41 = load i32, i32* %5, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %34, %2
  %44 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %45 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SBT_1S, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %51 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %67

54:                                               ; preds = %43
  %55 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %56 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %62 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @SBT2FREQ(i64 %63)
  %65 = call i32 @min(i32 %60, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %59, %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %69 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SBT_1S, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %75 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.eventtimer*, %struct.eventtimer** %3, align 8
  %81 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @SBT2FREQ(i64 %82)
  %84 = call i32 @max(i32 %79, i32 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %73, %67
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @lmax(i32, i32) #1

declare dso_local i32 @flsl(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @SBT2FREQ(i64) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_tick.c_clock_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/extr_tick.c_clock_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i32 }

@cycles_per_tick = common dso_local global i32 0, align 4
@compare_ticks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eventtimer*, i32, i32)* @clock_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clock_start(%struct.eventtimer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.eventtimer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.eventtimer* %0, %struct.eventtimer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %14 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %15, %16
  %18 = ashr i32 %17, 32
  store i32 %18, i32* %8, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %12
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load %struct.eventtimer*, %struct.eventtimer** %4, align 8
  %25 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  %29 = ashr i32 %28, 32
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load i32, i32* @cycles_per_tick, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @DPCPU_SET(i32 %33, i32 %34)
  %36 = call i32 (...) @mips_rd_count()
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @compare_ticks, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DPCPU_SET(i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mips_wr_compare(i32 %42)
  ret i32 0
}

declare dso_local i32 @DPCPU_SET(i32, i32) #1

declare dso_local i32 @mips_rd_count(...) #1

declare dso_local i32 @mips_wr_compare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_set_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*)* @set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timer(%struct.agg_info* %0) #0 {
  %2 = alloca %struct.agg_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %2, align 8
  store i32 4096, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %9 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %36

12:                                               ; preds = %6
  %13 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %14 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %23 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @calc_timer_div(i64 %27)
  store i32 %28, i32* %5, align 4
  %29 = icmp sgt i32 %21, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %30, %20, %12
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %38 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %3, align 4
  %41 = shl i32 1, %40
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %47 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %46, i32 0, i32 2
  %48 = call i32 @calc_timer_div_rch(i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = icmp sgt i32 %45, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %50, %44, %36
  %53 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @wp_settimer(%struct.agg_info* %53, i32 %54)
  ret void
}

declare dso_local i32 @calc_timer_div(i64) #1

declare dso_local i32 @calc_timer_div_rch(i32*) #1

declare dso_local i32 @wp_settimer(%struct.agg_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

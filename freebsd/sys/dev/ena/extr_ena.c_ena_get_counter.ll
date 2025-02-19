; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.ena_hw_stats }
%struct.ena_hw_stats = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ena_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_get_counter(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_adapter*, align 8
  %7 = alloca %struct.ena_hw_stats*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.ena_adapter* @if_getsoftc(i32 %8)
  store %struct.ena_adapter* %9, %struct.ena_adapter** %6, align 8
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  store %struct.ena_hw_stats* %11, %struct.ena_hw_stats** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %38 [
    i32 131, label %13
    i32 128, label %18
    i32 132, label %23
    i32 129, label %28
    i32 130, label %33
  ]

13:                                               ; preds = %2
  %14 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %7, align 8
  %15 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @counter_u64_fetch(i32 %16)
  store i32 %17, i32* %3, align 4
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %7, align 8
  %20 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @counter_u64_fetch(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %7, align 8
  %25 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @counter_u64_fetch(i32 %26)
  store i32 %27, i32* %3, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %7, align 8
  %30 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @counter_u64_fetch(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %2
  %34 = load %struct.ena_hw_stats*, %struct.ena_hw_stats** %7, align 8
  %35 = getelementptr inbounds %struct.ena_hw_stats, %struct.ena_hw_stats* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @counter_u64_fetch(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @if_get_counter_default(i32 %39, i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %33, %28, %23, %18, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.ena_adapter* @if_getsoftc(i32) #1

declare dso_local i32 @counter_u64_fetch(i32) #1

declare dso_local i32 @if_get_counter_default(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

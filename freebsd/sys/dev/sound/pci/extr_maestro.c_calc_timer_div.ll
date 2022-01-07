; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_calc_timer_div.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_calc_timer_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agg_chinfo*)* @calc_timer_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_timer_div(%struct.agg_chinfo* %0) #0 {
  %2 = alloca %struct.agg_chinfo*, align 8
  %3 = alloca i32, align 4
  store %struct.agg_chinfo* %0, %struct.agg_chinfo** %2, align 8
  %4 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %5 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %8 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %11 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = load %struct.agg_chinfo*, %struct.agg_chinfo** %2, align 8
  %17 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = add nsw i32 %15, %21
  %23 = shl i32 %9, %22
  %24 = mul nsw i32 48000, %23
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %3, align 4
  %29 = sdiv i32 %27, %28
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.h_lio_sleep_cond.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_main.h_lio_sleep_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32*)* @lio_sleep_cond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_sleep_cond(%struct.octeon_device* %0, i32* %1) #0 {
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load i32*, i32** %4, align 8
  %7 = load volatile i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %21

10:                                               ; preds = %5
  %11 = call i32 @lio_mdelay(i32 1)
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lio_flush_iq(%struct.octeon_device* %12, i32 %17, i32 0)
  %19 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %20 = call i32 @lio_process_ordered_list(%struct.octeon_device* %19, i32 0)
  br label %5

21:                                               ; preds = %5
  ret void
}

declare dso_local i32 @lio_mdelay(i32) #1

declare dso_local i32 @lio_flush_iq(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @lio_process_ordered_list(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_up_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ena/extr_ena.c_ena_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENA_FLAG_RSS_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_up_complete(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  %5 = load i32, i32* @ENA_FLAG_RSS_ACTIVE, align 4
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %7 = call i32 @ENA_FLAG_ISSET(i32 %5, %struct.ena_adapter* %6)
  %8 = call i64 @likely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %12 = call i32 @ena_rss_configure(%struct.ena_adapter* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ena_change_mtu(%struct.TYPE_2__* %21, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %37 = call i32 @ena_refill_all_rx_bufs(%struct.ena_adapter* %36)
  %38 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %38, i32 0, i32 0
  %40 = call i32 @ena_reset_counters(i32* %39, i32 4)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %35, %33, %15
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ENA_FLAG_ISSET(i32, %struct.ena_adapter*) #1

declare dso_local i32 @ena_rss_configure(%struct.ena_adapter*) #1

declare dso_local i32 @ena_change_mtu(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_refill_all_rx_bufs(%struct.ena_adapter*) #1

declare dso_local i32 @ena_reset_counters(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

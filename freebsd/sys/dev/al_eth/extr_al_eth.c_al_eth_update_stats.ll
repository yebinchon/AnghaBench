; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i64, i32, %struct.al_eth_mac_stats }
%struct.al_eth_mac_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.al_eth_adapter*)* @al_eth_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @al_eth_update_stats(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca %struct.al_eth_mac_stats*, align 8
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %3, align 8
  %5 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %5, i32 0, i32 2
  store %struct.al_eth_mac_stats* %6, %struct.al_eth_mac_stats** %4, align 8
  %7 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %13, i32 0, i32 1
  %15 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %4, align 8
  %16 = call i32 @al_eth_mac_stats_get(i32* %14, %struct.al_eth_mac_stats* %15)
  store i8* null, i8** %2, align 8
  br label %17

17:                                               ; preds = %12, %11
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local i32 @al_eth_mac_stats_get(i32*, %struct.al_eth_mac_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

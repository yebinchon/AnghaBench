; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_get_counter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_get_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.al_eth_adapter = type { %struct.al_eth_mac_stats }
%struct.al_eth_mac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ifnet*, i32)* @al_get_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @al_get_counter(%struct.ifnet* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.al_eth_adapter*, align 8
  %7 = alloca %struct.al_eth_mac_stats*, align 8
  %8 = alloca i64, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = call %struct.al_eth_adapter* @if_getsoftc(%struct.ifnet* %9)
  store %struct.al_eth_adapter* %10, %struct.al_eth_adapter** %6, align 8
  %11 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %6, align 8
  %12 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %11, i32 0, i32 0
  store %struct.al_eth_mac_stats* %12, %struct.al_eth_mac_stats** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %76 [
    i32 133, label %14
    i32 128, label %18
    i32 136, label %22
    i32 131, label %26
    i32 134, label %30
    i32 129, label %34
    i32 137, label %38
    i32 132, label %39
    i32 135, label %43
    i32 130, label %72
  ]

14:                                               ; preds = %2
  %15 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %16 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %15, i32 0, i32 14
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %20 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %19, i32 0, i32 13
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %3, align 8
  br label %80

22:                                               ; preds = %2
  %23 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %24 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  br label %80

26:                                               ; preds = %2
  %27 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %28 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %27, i32 0, i32 11
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %3, align 8
  br label %80

30:                                               ; preds = %2
  %31 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %32 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %3, align 8
  br label %80

34:                                               ; preds = %2
  %35 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %36 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %3, align 8
  br label %80

38:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %80

39:                                               ; preds = %2
  %40 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %41 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %3, align 8
  br label %80

43:                                               ; preds = %2
  %44 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %45 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %48 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %52 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %56 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  %59 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %60 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %58, %61
  %63 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %64 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %68 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %66, %69
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %3, align 8
  br label %80

72:                                               ; preds = %2
  %73 = load %struct.al_eth_mac_stats*, %struct.al_eth_mac_stats** %7, align 8
  %74 = getelementptr inbounds %struct.al_eth_mac_stats, %struct.al_eth_mac_stats* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %3, align 8
  br label %80

76:                                               ; preds = %2
  %77 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i64 @if_get_counter_default(%struct.ifnet* %77, i32 %78)
  store i64 %79, i64* %3, align 8
  br label %80

80:                                               ; preds = %76, %72, %43, %39, %38, %34, %30, %26, %22, %18, %14
  %81 = load i64, i64* %3, align 8
  ret i64 %81
}

declare dso_local %struct.al_eth_adapter* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i64 @if_get_counter_default(%struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

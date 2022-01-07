; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_iwn_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/iwn/iwnstats/extr_main.c_iwn_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwnstats = type { %struct.iwn_stats }
%struct.iwn_stats = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"time=%ld.%.6ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ofdm\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cck\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwnstats*)* @iwn_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_print(%struct.iwnstats* %0) #0 {
  %2 = alloca %struct.iwnstats*, align 8
  %3 = alloca %struct.iwn_stats*, align 8
  %4 = alloca %struct.timeval, align 8
  store %struct.iwnstats* %0, %struct.iwnstats** %2, align 8
  %5 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %6 = getelementptr inbounds %struct.iwnstats, %struct.iwnstats* %5, i32 0, i32 0
  store %struct.iwn_stats* %6, %struct.iwn_stats** %3, align 8
  %7 = call i32 @gettimeofday(%struct.timeval* %4, i32* null)
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %9, i64 %11)
  %13 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %14 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %15 = call i32 @iwn_stats_general_print(%struct.iwnstats* %13, %struct.iwn_stats* %14)
  %16 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %17 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %18 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = call i32 @iwn_stats_phy_print(%struct.iwnstats* %16, i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %22 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %23 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call i32 @iwn_stats_phy_print(%struct.iwnstats* %21, i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %27 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %28 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = call i32 @iwn_stats_ht_phy_print(%struct.iwnstats* %26, i32* %29)
  %31 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %32 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %33 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @iwn_stats_rx_general_print(%struct.iwnstats* %31, i32* %34)
  %36 = load %struct.iwnstats*, %struct.iwnstats** %2, align 8
  %37 = load %struct.iwn_stats*, %struct.iwn_stats** %3, align 8
  %38 = getelementptr inbounds %struct.iwn_stats, %struct.iwn_stats* %37, i32 0, i32 0
  %39 = call i32 @iwn_stats_tx_print(%struct.iwnstats* %36, i32* %38)
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @iwn_stats_general_print(%struct.iwnstats*, %struct.iwn_stats*) #1

declare dso_local i32 @iwn_stats_phy_print(%struct.iwnstats*, i32*, i8*) #1

declare dso_local i32 @iwn_stats_ht_phy_print(%struct.iwnstats*, i32*) #1

declare dso_local i32 @iwn_stats_rx_general_print(%struct.iwnstats*, i32*) #1

declare dso_local i32 @iwn_stats_tx_print(%struct.iwnstats*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

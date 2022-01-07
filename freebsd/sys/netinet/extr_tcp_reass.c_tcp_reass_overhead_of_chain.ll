; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_overhead_of_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_reass.c_tcp_reass_overhead_of_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__, %struct.mbuf* }
%struct.TYPE_2__ = type { i64 }

@MSIZE = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mbuf*, %struct.mbuf**)* @tcp_reass_overhead_of_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_reass_overhead_of_chain(%struct.mbuf* %0, %struct.mbuf** %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf**, align 8
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store %struct.mbuf** %1, %struct.mbuf*** %4, align 8
  %6 = load i32, i32* @MSIZE, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @M_EXT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %13, %2
  br label %23

23:                                               ; preds = %50, %22
  %24 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 2
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  %27 = icmp ne %struct.mbuf* %26, null
  br i1 %27, label %28, label %51

28:                                               ; preds = %23
  %29 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 2
  %31 = load %struct.mbuf*, %struct.mbuf** %30, align 8
  store %struct.mbuf* %31, %struct.mbuf** %3, align 8
  %32 = load i32, i32* @MSIZE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @M_EXT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %28
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %28
  br label %23

51:                                               ; preds = %23
  %52 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %53 = load %struct.mbuf**, %struct.mbuf*** %4, align 8
  store %struct.mbuf* %52, %struct.mbuf** %53, align 8
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

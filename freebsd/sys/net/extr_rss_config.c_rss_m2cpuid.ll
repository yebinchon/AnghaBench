; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rss_config.c_rss_m2cpuid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rss_config.c_rss_m2cpuid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @rss_m2cpuid(%struct.mbuf* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = call i32 @M_ASSERTPKTHDR(%struct.mbuf* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = call i32 @M_HASHTYPE_GET(%struct.mbuf* %13)
  %15 = call i32 @rss_hash2cpuid(i32 %12, i32 %14)
  %16 = load i32*, i32** %6, align 8
  store i32 %15, i32* %16, align 4
  %17 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %17
}

declare dso_local i32 @M_ASSERTPKTHDR(%struct.mbuf*) #1

declare dso_local i32 @rss_hash2cpuid(i32, i32) #1

declare dso_local i32 @M_HASHTYPE_GET(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_domifdetach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6.c_in6_domifdetach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in6_ifextra = type { %struct.in6_ifextra*, %struct.in6_ifextra*, i32, i32, i32 }

@M_IFADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_domifdetach(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.in6_ifextra*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.in6_ifextra*
  store %struct.in6_ifextra* %7, %struct.in6_ifextra** %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = call i32 @mld_domifdetach(%struct.ifnet* %8)
  %10 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %11 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @scope6_ifdetach(i32 %12)
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %16 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nd6_ifdetach(%struct.ifnet* %14, i32 %17)
  %19 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %20 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @lltable_free(i32 %21)
  %23 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %24 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %23, i32 0, i32 1
  %25 = load %struct.in6_ifextra*, %struct.in6_ifextra** %24, align 8
  %26 = call i32 @COUNTER_ARRAY_FREE(%struct.in6_ifextra* %25, i32 1)
  %27 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %28 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %27, i32 0, i32 1
  %29 = load %struct.in6_ifextra*, %struct.in6_ifextra** %28, align 8
  %30 = load i32, i32* @M_IFADDR, align 4
  %31 = call i32 @free(%struct.in6_ifextra* %29, i32 %30)
  %32 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %33 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %32, i32 0, i32 0
  %34 = load %struct.in6_ifextra*, %struct.in6_ifextra** %33, align 8
  %35 = call i32 @COUNTER_ARRAY_FREE(%struct.in6_ifextra* %34, i32 1)
  %36 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %37 = getelementptr inbounds %struct.in6_ifextra, %struct.in6_ifextra* %36, i32 0, i32 0
  %38 = load %struct.in6_ifextra*, %struct.in6_ifextra** %37, align 8
  %39 = load i32, i32* @M_IFADDR, align 4
  %40 = call i32 @free(%struct.in6_ifextra* %38, i32 %39)
  %41 = load %struct.in6_ifextra*, %struct.in6_ifextra** %5, align 8
  %42 = load i32, i32* @M_IFADDR, align 4
  %43 = call i32 @free(%struct.in6_ifextra* %41, i32 %42)
  ret void
}

declare dso_local i32 @mld_domifdetach(%struct.ifnet*) #1

declare dso_local i32 @scope6_ifdetach(i32) #1

declare dso_local i32 @nd6_ifdetach(%struct.ifnet*, i32) #1

declare dso_local i32 @lltable_free(i32) #1

declare dso_local i32 @COUNTER_ARRAY_FREE(%struct.in6_ifextra*, i32) #1

declare dso_local i32 @free(%struct.in6_ifextra*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_if_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_mem_if_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netmap_mem_if_offset(%struct.netmap_mem_d* %0, i8* %1) #0 {
  %3 = alloca %struct.netmap_mem_d*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %7 = call i32 @NMA_LOCK(%struct.netmap_mem_d* %6)
  %8 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %9 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.netmap_mem_d*, i8*)**
  %13 = load i32 (%struct.netmap_mem_d*, i8*)*, i32 (%struct.netmap_mem_d*, i8*)** %12, align 8
  %14 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 %13(%struct.netmap_mem_d* %14, i8* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %3, align 8
  %18 = call i32 @NMA_UNLOCK(%struct.netmap_mem_d* %17)
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @NMA_LOCK(%struct.netmap_mem_d*) #1

declare dso_local i32 @NMA_UNLOCK(%struct.netmap_mem_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

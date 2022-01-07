; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_dmafree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_envy24.c_envy24_dmafree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32*, i32*, i64, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_info*)* @envy24_dmafree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @envy24_dmafree(%struct.sc_info* %0) #0 {
  %2 = alloca %struct.sc_info*, align 8
  store %struct.sc_info* %0, %struct.sc_info** %2, align 8
  %3 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %4 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %3, i32 0, i32 5
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %7 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @bus_dmamap_unload(i32 %5, i32 %8)
  %10 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %11 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %14 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_dmamap_unload(i32 %12, i32 %15)
  %17 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %18 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %21 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %24 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @bus_dmamem_free(i32 %19, i32* %22, i32 %25)
  %27 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @bus_dmamem_free(i32 %29, i32* %32, i32 %35)
  %37 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.sc_info*, %struct.sc_info** %2, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

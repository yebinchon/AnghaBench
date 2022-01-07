; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_release_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_release_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32*, i32, i32, i32 }
%struct.mly_command = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_release_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_release_commands(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  %3 = alloca %struct.mly_command*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %6 = call i64 @mly_alloc_command(%struct.mly_softc* %5, %struct.mly_command** %3)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %4
  %9 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mly_command*, %struct.mly_command** %3, align 8
  %13 = getelementptr inbounds %struct.mly_command, %struct.mly_command* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bus_dmamap_destroy(i32 %11, i32 %14)
  br label %4

16:                                               ; preds = %4
  %17 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %41

21:                                               ; preds = %16
  %22 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %23 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %26 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bus_dmamap_unload(i32 %24, i32 %27)
  %29 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %30 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %33 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bus_dmamem_free(i32 %31, i32* %34, i32 %37)
  %39 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %21, %16
  ret void
}

declare dso_local i64 @mly_alloc_command(%struct.mly_softc*, %struct.mly_command**) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

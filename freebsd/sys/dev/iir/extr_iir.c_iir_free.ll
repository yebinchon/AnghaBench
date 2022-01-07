; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_iir_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@GDT_D_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"iir_free()\0A\00", align 1
@GDT_MAXCMDS = common dso_local global i32 0, align 4
@M_GDTBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iir_free(%struct.gdt_softc* %0) #0 {
  %2 = alloca %struct.gdt_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %2, align 8
  %4 = load i32, i32* @GDT_D_INIT, align 4
  %5 = call i32 @GDT_DPRINTF(i32 %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %7 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %9 [
    i32 5, label %14
    i32 4, label %68
    i32 3, label %79
    i32 2, label %84
    i32 1, label %89
    i32 0, label %94
  ]

9:                                                ; preds = %1
  %10 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @gdt_destroy_dev(i32 %12)
  br label %14

14:                                               ; preds = %1, %9
  %15 = load i32, i32* @GDT_MAXCMDS, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %52, %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %55

20:                                               ; preds = %17
  %21 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %22 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %21, i32 0, i32 6
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %20
  %31 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %32 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %31, i32 0, i32 6
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = call i32 @callout_drain(i32* %37)
  %39 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %43 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %42, i32 0, i32 6
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bus_dmamap_destroy(i32 %41, i32 %49)
  br label %51

51:                                               ; preds = %30, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %3, align 4
  br label %17

55:                                               ; preds = %17
  %56 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %57 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %60 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bus_dmamap_unload(i32 %58, i32 %61)
  %63 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %64 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %63, i32 0, i32 6
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* @M_GDTBUF, align 4
  %67 = call i32 @free(%struct.TYPE_2__* %65, i32 %66)
  br label %68

68:                                               ; preds = %1, %55
  %69 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %70 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %73 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %76 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @bus_dmamem_free(i32 %71, i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %1, %68
  %80 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %81 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bus_dma_tag_destroy(i32 %82)
  br label %84

84:                                               ; preds = %1, %79
  %85 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %86 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @bus_dma_tag_destroy(i32 %87)
  br label %89

89:                                               ; preds = %1, %84
  %90 = load %struct.gdt_softc*, %struct.gdt_softc** %2, align 8
  %91 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bus_dma_tag_destroy(i32 %92)
  br label %94

94:                                               ; preds = %1, %89
  br label %95

95:                                               ; preds = %94
  ret void
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @gdt_destroy_dev(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

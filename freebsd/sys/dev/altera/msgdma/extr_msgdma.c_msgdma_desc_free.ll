; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_desc_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/msgdma/extr_msgdma.c_msgdma_desc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msgdma_softc = type { i32 }
%struct.msgdma_channel = type { i32, %struct.msgdma_desc**, %struct.msgdma_desc**, %struct.msgdma_desc**, i32 }
%struct.msgdma_desc = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msgdma_softc*, %struct.msgdma_channel*)* @msgdma_desc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msgdma_desc_free(%struct.msgdma_softc* %0, %struct.msgdma_channel* %1) #0 {
  %3 = alloca %struct.msgdma_softc*, align 8
  %4 = alloca %struct.msgdma_channel*, align 8
  %5 = alloca %struct.msgdma_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.msgdma_softc* %0, %struct.msgdma_softc** %3, align 8
  store %struct.msgdma_channel* %1, %struct.msgdma_channel** %4, align 8
  %8 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %9 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %46, %2
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %49

15:                                               ; preds = %11
  %16 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %17 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %16, i32 0, i32 3
  %18 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.msgdma_desc*, %struct.msgdma_desc** %18, i64 %20
  %22 = load %struct.msgdma_desc*, %struct.msgdma_desc** %21, align 8
  store %struct.msgdma_desc* %22, %struct.msgdma_desc** %5, align 8
  %23 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %24 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %27 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %26, i32 0, i32 2
  %28 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.msgdma_desc*, %struct.msgdma_desc** %28, i64 %30
  %32 = load %struct.msgdma_desc*, %struct.msgdma_desc** %31, align 8
  %33 = call i32 @bus_dmamap_unload(i32 %25, %struct.msgdma_desc* %32)
  %34 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %35 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.msgdma_desc*, %struct.msgdma_desc** %5, align 8
  %38 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %39 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %38, i32 0, i32 2
  %40 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.msgdma_desc*, %struct.msgdma_desc** %40, i64 %42
  %44 = load %struct.msgdma_desc*, %struct.msgdma_desc** %43, align 8
  %45 = call i32 @bus_dmamem_free(i32 %36, %struct.msgdma_desc* %37, %struct.msgdma_desc* %44)
  br label %46

46:                                               ; preds = %15
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %11

49:                                               ; preds = %11
  %50 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %51 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_dma_tag_destroy(i32 %52)
  %54 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %55 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %54, i32 0, i32 3
  %56 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %55, align 8
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = call i32 @free(%struct.msgdma_desc** %56, i32 %57)
  %59 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %60 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %59, i32 0, i32 2
  %61 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %60, align 8
  %62 = load i32, i32* @M_DEVBUF, align 4
  %63 = call i32 @free(%struct.msgdma_desc** %61, i32 %62)
  %64 = load %struct.msgdma_channel*, %struct.msgdma_channel** %4, align 8
  %65 = getelementptr inbounds %struct.msgdma_channel, %struct.msgdma_channel* %64, i32 0, i32 1
  %66 = load %struct.msgdma_desc**, %struct.msgdma_desc*** %65, align 8
  %67 = load i32, i32* @M_DEVBUF, align 4
  %68 = call i32 @free(%struct.msgdma_desc** %66, i32 %67)
  ret i32 0
}

declare dso_local i32 @bus_dmamap_unload(i32, %struct.msgdma_desc*) #1

declare dso_local i32 @bus_dmamem_free(i32, %struct.msgdma_desc*, %struct.msgdma_desc*) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.msgdma_desc**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

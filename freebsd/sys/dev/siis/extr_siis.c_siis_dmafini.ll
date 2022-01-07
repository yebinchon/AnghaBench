; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmafini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_dmafini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @siis_dmafini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_dmafini(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siis_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.siis_channel* @device_get_softc(i32 %4)
  store %struct.siis_channel* %5, %struct.siis_channel** %3, align 8
  %6 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %7 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %13 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_dma_tag_destroy(i32* %15)
  %17 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %18 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %22 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %20
  %27 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %28 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %32 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32* %30, i32* %34)
  %36 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %37 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %41 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %45 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @bus_dmamem_free(i32* %39, i32* %43, i32* %47)
  %49 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %50 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %53 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %56 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %26, %20
  %59 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %60 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %66 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @bus_dma_tag_destroy(i32* %68)
  %70 = load %struct.siis_channel*, %struct.siis_channel** %3, align 8
  %71 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %64, %58
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32*) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

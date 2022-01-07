; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ich.c_ich_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ich_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ich_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pcm_unregister(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sc_info* @pcm_getdevinfo(i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %17 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @bus_teardown_intr(i32 %15, i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SYS_RES_IRQ, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 10
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_release_resource(i32 %32, i32 %35, i32 %38, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %45 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bus_release_resource(i32 %43, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %58 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @bus_dmamap_unload(i32 %56, i32 %59)
  %61 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %62 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %65 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %68 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_dmamem_free(i32 %63, i32 %66, i32 %69)
  %71 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %72 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @bus_dma_tag_destroy(i32 %73)
  %75 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %76 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @bus_dma_tag_destroy(i32 %77)
  %79 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %80 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_mtxfree(i32 %81)
  %83 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %84 = load i32, i32* @M_DEVBUF, align 4
  %85 = call i32 @free(%struct.sc_info* %83, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %12, %10
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_via_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @via_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.via_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.via_info* null, %struct.via_info** %5, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pcm_unregister(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.via_info* @pcm_getdevinfo(i32 %13)
  store %struct.via_info* %14, %struct.via_info** %5, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = load %struct.via_info*, %struct.via_info** %5, align 8
  %18 = getelementptr inbounds %struct.via_info, %struct.via_info* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.via_info*, %struct.via_info** %5, align 8
  %21 = getelementptr inbounds %struct.via_info, %struct.via_info* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bus_release_resource(i32 %15, i32 %16, i32 %19, i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.via_info*, %struct.via_info** %5, align 8
  %26 = getelementptr inbounds %struct.via_info, %struct.via_info* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.via_info*, %struct.via_info** %5, align 8
  %29 = getelementptr inbounds %struct.via_info, %struct.via_info* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bus_teardown_intr(i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load %struct.via_info*, %struct.via_info** %5, align 8
  %35 = getelementptr inbounds %struct.via_info, %struct.via_info* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.via_info*, %struct.via_info** %5, align 8
  %38 = getelementptr inbounds %struct.via_info, %struct.via_info* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 %36, i32 %39)
  %41 = load %struct.via_info*, %struct.via_info** %5, align 8
  %42 = getelementptr inbounds %struct.via_info, %struct.via_info* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_dma_tag_destroy(i32 %43)
  %45 = load %struct.via_info*, %struct.via_info** %5, align 8
  %46 = getelementptr inbounds %struct.via_info, %struct.via_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.via_info*, %struct.via_info** %5, align 8
  %49 = getelementptr inbounds %struct.via_info, %struct.via_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_dmamap_unload(i32 %47, i32 %50)
  %52 = load %struct.via_info*, %struct.via_info** %5, align 8
  %53 = getelementptr inbounds %struct.via_info, %struct.via_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.via_info*, %struct.via_info** %5, align 8
  %56 = getelementptr inbounds %struct.via_info, %struct.via_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.via_info*, %struct.via_info** %5, align 8
  %59 = getelementptr inbounds %struct.via_info, %struct.via_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bus_dmamem_free(i32 %54, i32 %57, i32 %60)
  %62 = load %struct.via_info*, %struct.via_info** %5, align 8
  %63 = getelementptr inbounds %struct.via_info, %struct.via_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bus_dma_tag_destroy(i32 %64)
  %66 = load %struct.via_info*, %struct.via_info** %5, align 8
  %67 = getelementptr inbounds %struct.via_info, %struct.via_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @snd_mtxfree(i32 %68)
  %70 = load %struct.via_info*, %struct.via_info** %5, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(%struct.via_info* %70, i32 %71)
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %12, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.via_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32, i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.via_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via8233.c_via_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_info = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

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
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @pcm_unregister(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %103

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.via_info* @pcm_getdevinfo(i32 %13)
  store %struct.via_info* %14, %struct.via_info** %5, align 8
  %15 = load %struct.via_info*, %struct.via_info** %5, align 8
  %16 = icmp ne %struct.via_info* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.via_info*, %struct.via_info** %5, align 8
  %19 = getelementptr inbounds %struct.via_info, %struct.via_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.via_info*, %struct.via_info** %5, align 8
  %24 = getelementptr inbounds %struct.via_info, %struct.via_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22, %17
  %28 = load %struct.via_info*, %struct.via_info** %5, align 8
  %29 = getelementptr inbounds %struct.via_info, %struct.via_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snd_mtxlock(i32 %30)
  %32 = load %struct.via_info*, %struct.via_info** %5, align 8
  %33 = getelementptr inbounds %struct.via_info, %struct.via_info* %32, i32 0, i32 13
  store i64 0, i64* %33, align 8
  %34 = load %struct.via_info*, %struct.via_info** %5, align 8
  %35 = getelementptr inbounds %struct.via_info, %struct.via_info* %34, i32 0, i32 12
  %36 = call i32 @callout_stop(i32* %35)
  %37 = load %struct.via_info*, %struct.via_info** %5, align 8
  %38 = getelementptr inbounds %struct.via_info, %struct.via_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @snd_mtxunlock(i32 %39)
  %41 = load %struct.via_info*, %struct.via_info** %5, align 8
  %42 = getelementptr inbounds %struct.via_info, %struct.via_info* %41, i32 0, i32 12
  %43 = call i32 @callout_drain(i32* %42)
  br label %44

44:                                               ; preds = %27, %22, %12
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_IOPORT, align 4
  %47 = load %struct.via_info*, %struct.via_info** %5, align 8
  %48 = getelementptr inbounds %struct.via_info, %struct.via_info* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.via_info*, %struct.via_info** %5, align 8
  %51 = getelementptr inbounds %struct.via_info, %struct.via_info* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %49, i32 %52)
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.via_info*, %struct.via_info** %5, align 8
  %56 = getelementptr inbounds %struct.via_info, %struct.via_info* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.via_info*, %struct.via_info** %5, align 8
  %59 = getelementptr inbounds %struct.via_info, %struct.via_info* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @bus_teardown_intr(i32 %54, i32 %57, i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.via_info*, %struct.via_info** %5, align 8
  %65 = getelementptr inbounds %struct.via_info, %struct.via_info* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.via_info*, %struct.via_info** %5, align 8
  %68 = getelementptr inbounds %struct.via_info, %struct.via_info* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_release_resource(i32 %62, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.via_info*, %struct.via_info** %5, align 8
  %72 = getelementptr inbounds %struct.via_info, %struct.via_info* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_dma_tag_destroy(i32 %73)
  %75 = load %struct.via_info*, %struct.via_info** %5, align 8
  %76 = getelementptr inbounds %struct.via_info, %struct.via_info* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.via_info*, %struct.via_info** %5, align 8
  %79 = getelementptr inbounds %struct.via_info, %struct.via_info* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @bus_dmamap_unload(i32 %77, i32 %80)
  %82 = load %struct.via_info*, %struct.via_info** %5, align 8
  %83 = getelementptr inbounds %struct.via_info, %struct.via_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.via_info*, %struct.via_info** %5, align 8
  %86 = getelementptr inbounds %struct.via_info, %struct.via_info* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.via_info*, %struct.via_info** %5, align 8
  %89 = getelementptr inbounds %struct.via_info, %struct.via_info* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bus_dmamem_free(i32 %84, i32 %87, i32 %90)
  %92 = load %struct.via_info*, %struct.via_info** %5, align 8
  %93 = getelementptr inbounds %struct.via_info, %struct.via_info* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @bus_dma_tag_destroy(i32 %94)
  %96 = load %struct.via_info*, %struct.via_info** %5, align 8
  %97 = getelementptr inbounds %struct.via_info, %struct.via_info* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_mtxfree(i32 %98)
  %100 = load %struct.via_info*, %struct.via_info** %5, align 8
  %101 = load i32, i32* @M_DEVBUF, align 4
  %102 = call i32 @free(%struct.via_info* %100, i32 %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %44, %10
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.via_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @callout_drain(i32*) #1

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

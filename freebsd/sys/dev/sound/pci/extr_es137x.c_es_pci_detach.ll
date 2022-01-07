; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @es_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @es_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.es_info*, align 8
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
  br label %75

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.es_info* @pcm_getdevinfo(i32 %13)
  store %struct.es_info* %14, %struct.es_info** %5, align 8
  %15 = load %struct.es_info*, %struct.es_info** %5, align 8
  %16 = icmp ne %struct.es_info* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.es_info*, %struct.es_info** %5, align 8
  %19 = getelementptr inbounds %struct.es_info, %struct.es_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load %struct.es_info*, %struct.es_info** %5, align 8
  %24 = call i32 @ES_LOCK(%struct.es_info* %23)
  %25 = load %struct.es_info*, %struct.es_info** %5, align 8
  %26 = getelementptr inbounds %struct.es_info, %struct.es_info* %25, i32 0, i32 10
  store i64 0, i64* %26, align 8
  %27 = load %struct.es_info*, %struct.es_info** %5, align 8
  %28 = getelementptr inbounds %struct.es_info, %struct.es_info* %27, i32 0, i32 9
  %29 = call i32 @callout_stop(i32* %28)
  %30 = load %struct.es_info*, %struct.es_info** %5, align 8
  %31 = call i32 @ES_UNLOCK(%struct.es_info* %30)
  %32 = load %struct.es_info*, %struct.es_info** %5, align 8
  %33 = getelementptr inbounds %struct.es_info, %struct.es_info* %32, i32 0, i32 9
  %34 = call i32 @callout_drain(i32* %33)
  br label %35

35:                                               ; preds = %22, %17, %12
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.es_info*, %struct.es_info** %5, align 8
  %38 = getelementptr inbounds %struct.es_info, %struct.es_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.es_info*, %struct.es_info** %5, align 8
  %41 = getelementptr inbounds %struct.es_info, %struct.es_info* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bus_teardown_intr(i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load %struct.es_info*, %struct.es_info** %5, align 8
  %47 = getelementptr inbounds %struct.es_info, %struct.es_info* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.es_info*, %struct.es_info** %5, align 8
  %50 = getelementptr inbounds %struct.es_info, %struct.es_info* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bus_release_resource(i32 %44, i32 %45, i32 %48, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.es_info*, %struct.es_info** %5, align 8
  %55 = getelementptr inbounds %struct.es_info, %struct.es_info* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.es_info*, %struct.es_info** %5, align 8
  %58 = getelementptr inbounds %struct.es_info, %struct.es_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.es_info*, %struct.es_info** %5, align 8
  %61 = getelementptr inbounds %struct.es_info, %struct.es_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_release_resource(i32 %53, i32 %56, i32 %59, i32 %62)
  %64 = load %struct.es_info*, %struct.es_info** %5, align 8
  %65 = getelementptr inbounds %struct.es_info, %struct.es_info* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @bus_dma_tag_destroy(i32 %66)
  %68 = load %struct.es_info*, %struct.es_info** %5, align 8
  %69 = getelementptr inbounds %struct.es_info, %struct.es_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @snd_mtxfree(i32 %70)
  %72 = load %struct.es_info*, %struct.es_info** %5, align 8
  %73 = load i32, i32* @M_DEVBUF, align 4
  %74 = call i32 @free(%struct.es_info* %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %35, %10
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.es_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.es_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_ds1.c_ds_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_info*, align 8
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
  br label %58

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sc_info* @pcm_getdevinfo(i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %5, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %16 = call i32 @ds_uninit(%struct.sc_info* %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %20 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %23 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_release_resource(i32 %17, i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %28 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @bus_teardown_intr(i32 %26, i32 %29, i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %37 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @bus_release_resource(i32 %34, i32 %35, i32 %38, i32 %41)
  %43 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %44 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bus_dma_tag_destroy(i32 %45)
  %47 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bus_dma_tag_destroy(i32 %49)
  %51 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %52 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_mtxfree(i32 %53)
  %55 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %56 = load i32, i32* @M_DEVBUF, align 4
  %57 = call i32 @free(%struct.sc_info* %55, i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %12, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @ds_uninit(%struct.sc_info*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

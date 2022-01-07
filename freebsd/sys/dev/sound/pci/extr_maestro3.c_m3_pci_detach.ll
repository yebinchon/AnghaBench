; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, %struct.sc_info*, i32, i32, i32, i32, i32, i32, i32 }

@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"m3_pci_detach\0A\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m3_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pci_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.sc_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sc_info* @pcm_getdevinfo(i32 %6)
  store %struct.sc_info* %7, %struct.sc_info** %4, align 8
  %8 = load i32, i32* @CALL, align 4
  %9 = call i32 @M3_DEBUG(i32 %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pcm_unregister(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %17 = call i32 @M3_LOCK(%struct.sc_info* %16)
  %18 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %19 = call i32 @m3_uninit(%struct.sc_info* %18)
  %20 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %21 = call i32 @m3_power(%struct.sc_info* %20, i32 3)
  %22 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %23 = call i32 @M3_UNLOCK(%struct.sc_info* %22)
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %26 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %29 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bus_teardown_intr(i32 %24, i32 %27, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SYS_RES_IRQ, align 4
  %34 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %35 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %38 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @bus_release_resource(i32 %32, i32 %33, i32 %36, i32 %39)
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %43 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %46 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %49 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_release_resource(i32 %41, i32 %44, i32 %47, i32 %50)
  %52 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %53 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bus_dma_tag_destroy(i32 %54)
  %56 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 1
  %58 = load %struct.sc_info*, %struct.sc_info** %57, align 8
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(%struct.sc_info* %58, i32 %59)
  %61 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %62 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snd_mtxfree(i32 %63)
  %65 = load %struct.sc_info*, %struct.sc_info** %4, align 8
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(%struct.sc_info* %65, i32 %66)
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %15, %13
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @M3_LOCK(%struct.sc_info*) #1

declare dso_local i32 @m3_uninit(%struct.sc_info*) #1

declare dso_local i32 @m3_power(%struct.sc_info*, i32) #1

declare dso_local i32 @M3_UNLOCK(%struct.sc_info*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

declare dso_local i32 @snd_mtxfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

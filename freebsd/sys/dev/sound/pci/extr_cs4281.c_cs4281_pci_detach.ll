; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cs4281.c_cs4281_pci_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cs4281_pci_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs4281_pci_detach(i32 %0) #0 {
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
  br label %61

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.sc_info* @pcm_getdevinfo(i32 %13)
  store %struct.sc_info* %14, %struct.sc_info** %5, align 8
  %15 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %16 = call i32 @cs4281_power(%struct.sc_info* %15, i32 3)
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %22 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %25 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bus_release_resource(i32 %17, i32 %20, i32 %23, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SYS_RES_MEMORY, align 4
  %30 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %31 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %34 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bus_release_resource(i32 %28, i32 %29, i32 %32, i32 %35)
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %39 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %42 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bus_teardown_intr(i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SYS_RES_IRQ, align 4
  %47 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %48 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bus_release_resource(i32 %45, i32 %46, i32 %49, i32 %52)
  %54 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %55 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_dma_tag_destroy(i32 %56)
  %58 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(%struct.sc_info* %58, i32 %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %12, %10
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local %struct.sc_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @cs4281_power(%struct.sc_info*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

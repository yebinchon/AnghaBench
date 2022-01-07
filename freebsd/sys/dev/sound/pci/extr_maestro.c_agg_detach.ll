; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@PORT_HOSTINT_CTRL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @agg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agg_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.agg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.agg_info* @pcm_getdevinfo(i32 %7)
  store %struct.agg_info* %8, %struct.agg_info** %4, align 8
  %9 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %10 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %11 = call i32 @AGG_RD(%struct.agg_info* %9, i32 %10, i32 2)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %13 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %14 = call i32 @AGG_WR(%struct.agg_info* %12, i32 %13, i32 0, i32 2)
  %15 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %16 = call i32 @agg_lock(%struct.agg_info* %15)
  %17 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %18 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %23 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @AGG_WR(%struct.agg_info* %22, i32 %23, i32 %24, i32 2)
  %26 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %27 = call i32 @agg_unlock(%struct.agg_info* %26)
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %2, align 4
  br label %100

29:                                               ; preds = %1
  %30 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %31 = call i32 @agg_unlock(%struct.agg_info* %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @pcm_unregister(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %38 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @AGG_WR(%struct.agg_info* %37, i32 %38, i32 %39, i32 2)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %100

42:                                               ; preds = %29
  %43 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %44 = call i32 @agg_lock(%struct.agg_info* %43)
  %45 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %46 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %47 = call i32 @agg_power(%struct.agg_info* %45, i32 %46)
  %48 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %49 = call i32 @agg_unlock(%struct.agg_info* %48)
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %52 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %55 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bus_teardown_intr(i32 %50, i32 %53, i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @SYS_RES_IRQ, align 4
  %60 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %61 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %64 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 %62, i32 %65)
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @SYS_RES_IOPORT, align 4
  %69 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %70 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %73 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bus_release_resource(i32 %67, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %77 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %80 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %83 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @dma_free(i32 %78, i32 %81, i32 %84)
  %86 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %87 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @bus_dma_tag_destroy(i32 %88)
  %90 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %91 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @bus_dma_tag_destroy(i32 %92)
  %94 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %95 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %94, i32 0, i32 0
  %96 = call i32 @mtx_destroy(i32* %95)
  %97 = load %struct.agg_info*, %struct.agg_info** %4, align 8
  %98 = load i32, i32* @M_DEVBUF, align 4
  %99 = call i32 @free(%struct.agg_info* %97, i32 %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %42, %36, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.agg_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @agg_lock(%struct.agg_info*) #1

declare dso_local i32 @agg_unlock(%struct.agg_info*) #1

declare dso_local i32 @pcm_unregister(i32) #1

declare dso_local i32 @agg_power(%struct.agg_info*, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @dma_free(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.agg_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

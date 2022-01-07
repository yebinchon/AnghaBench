; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_chan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_aoa.c_aoa_chan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoa_dma = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @aoa_chan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoa_chan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aoa_dma*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.aoa_dma*
  store %struct.aoa_dma* %11, %struct.aoa_dma** %8, align 8
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %67 [
    i32 129, label %13
    i32 128, label %29
    i32 130, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %15 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %14, i32 0, i32 0
  store i32 1, i32* %15, align 4
  %16 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %17 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %16, i32 0, i32 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %19 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %22 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dbdma_set_current_cmd(i32 %20, i32 %23)
  %25 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %26 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dbdma_run(i32 %27)
  store i32 0, i32* %4, align 4
  br label %68

29:                                               ; preds = %3, %3
  %30 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %31 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %30, i32 0, i32 2
  %32 = call i32 @mtx_lock(i32* %31)
  %33 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %34 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %36 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dbdma_set_device_status(i32 %37, i32 1, i32 1)
  %39 = call i32 @DELAY(i32 40000)
  %40 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %41 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dbdma_stop(i32 %42)
  %44 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %45 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dbdma_set_device_status(i32 %46, i32 1, i32 0)
  store i32 0, i32* %9, align 4
  br label %48

48:                                               ; preds = %60, %29
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %51 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %56 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @dbdma_clear_cmd_status(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %48

63:                                               ; preds = %48
  %64 = load %struct.aoa_dma*, %struct.aoa_dma** %8, align 8
  %65 = getelementptr inbounds %struct.aoa_dma, %struct.aoa_dma* %64, i32 0, i32 2
  %66 = call i32 @mtx_unlock(i32* %65)
  store i32 0, i32* %4, align 4
  br label %68

67:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %63, %13
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dbdma_set_current_cmd(i32, i32) #1

declare dso_local i32 @dbdma_run(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @dbdma_set_device_status(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @dbdma_stop(i32) #1

declare dso_local i32 @dbdma_clear_cmd_status(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

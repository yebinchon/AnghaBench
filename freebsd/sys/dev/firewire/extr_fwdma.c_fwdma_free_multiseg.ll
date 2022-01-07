; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_free_multiseg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwdma.c_fwdma_free_multiseg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwdma_alloc_multi = type { i32, i32, i32, %struct.fwdma_seg* }
%struct.fwdma_seg = type { i32, i32 }

@M_FW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fwdma_free_multiseg(%struct.fwdma_alloc_multi* %0) #0 {
  %2 = alloca %struct.fwdma_alloc_multi*, align 8
  %3 = alloca %struct.fwdma_seg*, align 8
  store %struct.fwdma_alloc_multi* %0, %struct.fwdma_alloc_multi** %2, align 8
  %4 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %5 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %4, i32 0, i32 3
  %6 = load %struct.fwdma_seg*, %struct.fwdma_seg** %5, align 8
  %7 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %6, i64 0
  store %struct.fwdma_seg* %7, %struct.fwdma_seg** %3, align 8
  br label %8

8:                                                ; preds = %28, %1
  %9 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %10 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %10, align 8
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %8
  %15 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %16 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.fwdma_seg*, %struct.fwdma_seg** %3, align 8
  %19 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fwdma_seg*, %struct.fwdma_seg** %3, align 8
  %22 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %25 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @fwdma_free_size(i32 %17, i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %14
  %29 = load %struct.fwdma_seg*, %struct.fwdma_seg** %3, align 8
  %30 = getelementptr inbounds %struct.fwdma_seg, %struct.fwdma_seg* %29, i32 1
  store %struct.fwdma_seg* %30, %struct.fwdma_seg** %3, align 8
  br label %8

31:                                               ; preds = %8
  %32 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %33 = getelementptr inbounds %struct.fwdma_alloc_multi, %struct.fwdma_alloc_multi* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dma_tag_destroy(i32 %34)
  %36 = load %struct.fwdma_alloc_multi*, %struct.fwdma_alloc_multi** %2, align 8
  %37 = load i32, i32* @M_FW, align 4
  %38 = call i32 @free(%struct.fwdma_alloc_multi* %36, i32 %37)
  ret void
}

declare dso_local i32 @fwdma_free_size(i32, i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @free(%struct.fwdma_alloc_multi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

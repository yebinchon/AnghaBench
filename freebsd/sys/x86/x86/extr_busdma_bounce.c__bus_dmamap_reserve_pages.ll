; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_reserve_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_busdma_bounce.c__bus_dmamap_reserve_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bounce_lock = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bounce_map_waitinglist = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @_bus_dmamap_reserve_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bus_dmamap_reserve_pages(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = call i32 @mtx_lock(i32* @bounce_lock)
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @reserve_bounce_pages(i32 %14, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @mtx_unlock(i32* @bounce_lock)
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %4, align 4
  br label %36

21:                                               ; preds = %13
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @reserve_bounce_pages(i32 %23, i32 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @links, align 4
  %30 = call i32 @STAILQ_INSERT_TAIL(i32* @bounce_map_waitinglist, i32 %28, i32 %29)
  %31 = call i32 @mtx_unlock(i32* @bounce_lock)
  %32 = load i32, i32* @EINPROGRESS, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %21
  %35 = call i32 @mtx_unlock(i32* @bounce_lock)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %27, %18
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @reserve_bounce_pages(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

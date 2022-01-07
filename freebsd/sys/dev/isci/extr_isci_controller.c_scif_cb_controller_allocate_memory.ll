; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_scif_cb_controller_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_controller.c_scif_cb_controller_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32 }
%struct.ISCI_CONTROLLER = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@M_ISCI = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@isci_single_map = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_cb_controller_allocate_memory(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.ISCI_CONTROLLER*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @sci_object_get_association(i32 %6)
  %8 = inttoptr i64 %7 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %8, %struct.ISCI_CONTROLLER** %5, align 8
  %9 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %10 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sci_pool_empty(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %16 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @sci_pool_get(i32 %17, i32* %20)
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @M_ISCI, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32* @contigmalloc(i32 %23, i32 %24, i32 %25, i32 0, i32 %26, i32 %29, i32 0)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i32* %30, i32** %32, align 8
  br label %33

33:                                               ; preds = %22, %14
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %51

38:                                               ; preds = %33
  %39 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %40 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = load i32, i32* @isci_single_map, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %50 = call i32 @bus_dmamap_load(i32 %41, i32* null, i32* %44, i32 %45, i32 %46, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %38, %33
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @sci_pool_empty(i32) #1

declare dso_local i32 @sci_pool_get(i32, i32*) #1

declare dso_local i32* @contigmalloc(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32*, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

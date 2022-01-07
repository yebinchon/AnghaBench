; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_dev_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_spa.c_nvdimm_spa_dev_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_spa_dev = type { i32*, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvdimm_spa_dev_fini(%struct.nvdimm_spa_dev* %0) #0 {
  %2 = alloca %struct.nvdimm_spa_dev*, align 8
  store %struct.nvdimm_spa_dev* %0, %struct.nvdimm_spa_dev** %2, align 8
  %3 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %4 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %3, i32 0, i32 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call i32 (...) @g_topology_lock()
  %9 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %10 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %15 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @nvdimm_spa_g_destroy_geom(i32* null, i32 %13, %struct.TYPE_2__* %16)
  %18 = call i32 (...) @g_topology_unlock()
  br label %19

19:                                               ; preds = %7, %1
  %20 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %21 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %26 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @destroy_dev(i32* %27)
  %29 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %30 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %33 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vm_object_deallocate(i32 %34)
  %36 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %37 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %31
  %41 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %42 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %45 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @pmap_large_unmap(i32* %43, i32 %46)
  %48 = load %struct.nvdimm_spa_dev*, %struct.nvdimm_spa_dev** %2, align 8
  %49 = getelementptr inbounds %struct.nvdimm_spa_dev, %struct.nvdimm_spa_dev* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  br label %50

50:                                               ; preds = %40, %31
  ret void
}

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local i32 @nvdimm_spa_g_destroy_geom(i32*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @pmap_large_unmap(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

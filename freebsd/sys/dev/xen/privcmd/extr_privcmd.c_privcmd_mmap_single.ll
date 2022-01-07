; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_mmap_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_mmap_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.privcmd_map = type { i32*, i32*, i64, i32, i32 }

@M_PRIVCMD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@privcmd_dev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OBJT_MGTDEVICE = common dso_local global i32 0, align 4
@privcmd_pg_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32*, i32, i32**, i32)* @privcmd_mmap_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @privcmd_mmap_single(%struct.cdev* %0, i32* %1, i32 %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.privcmd_map*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32** %3, i32*** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @M_PRIVCMD, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.privcmd_map* @malloc(i32 32, i32 %13, i32 %16)
  store %struct.privcmd_map* %17, %struct.privcmd_map** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @OFF_TO_IDX(i32 %18)
  %20 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %21 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  %22 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %23 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @privcmd_dev, align 4
  %25 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %26 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %25, i32 0, i32 2
  %27 = load i32, i32* %9, align 4
  %28 = call i32* @xenmem_alloc(i32 %24, i64* %26, i32 %27)
  %29 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %30 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %29, i32 0, i32 1
  store i32* %28, i32** %30, align 8
  %31 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %32 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %5
  %36 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %37 = load i32, i32* @M_PRIVCMD, align 4
  %38 = call i32 @free(%struct.privcmd_map* %36, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %6, align 4
  br label %78

40:                                               ; preds = %5
  %41 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %42 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @rman_get_start(i32* %43)
  %45 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %46 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %48 = load i32, i32* @OBJT_MGTDEVICE, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32* @cdev_pager_allocate(%struct.privcmd_map* %47, i32 %48, i32* @privcmd_pg_ops, i32 %49, i32 %50, i32 %52, i32* null)
  %54 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %55 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %54, i32 0, i32 0
  store i32* %53, i32** %55, align 8
  %56 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %57 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %73

60:                                               ; preds = %40
  %61 = load i32, i32* @privcmd_dev, align 4
  %62 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %63 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %66 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @xenmem_free(i32 %61, i64 %64, i32* %67)
  %69 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %70 = load i32, i32* @M_PRIVCMD, align 4
  %71 = call i32 @free(%struct.privcmd_map* %69, i32 %70)
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %6, align 4
  br label %78

73:                                               ; preds = %40
  %74 = load %struct.privcmd_map*, %struct.privcmd_map** %12, align 8
  %75 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** %10, align 8
  store i32* %76, i32** %77, align 8
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %73, %60, %35
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local %struct.privcmd_map* @malloc(i32, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

declare dso_local i32* @xenmem_alloc(i32, i64*, i32) #1

declare dso_local i32 @free(%struct.privcmd_map*, i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32* @cdev_pager_allocate(%struct.privcmd_map*, i32, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @xenmem_free(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

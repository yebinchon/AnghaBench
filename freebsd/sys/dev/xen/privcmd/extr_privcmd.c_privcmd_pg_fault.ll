; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_pg_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/privcmd/extr_privcmd.c_privcmd_pg_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.privcmd_map* }
%struct.privcmd_map = type { i32, i64, i64, i32 }
%struct.TYPE_13__ = type { i32 }

@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"not fictitious %p\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"page %p not wired\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"page %p is busy\00", align 1
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i64, i32, %struct.TYPE_13__**)* @privcmd_pg_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @privcmd_pg_fault(%struct.TYPE_14__* %0, i64 %1, i32 %2, %struct.TYPE_13__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__**, align 8
  %10 = alloca %struct.privcmd_map*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_13__** %3, %struct.TYPE_13__*** %9, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.privcmd_map*, %struct.privcmd_map** %15, align 8
  store %struct.privcmd_map* %16, %struct.privcmd_map** %10, align 8
  %17 = load %struct.privcmd_map*, %struct.privcmd_map** %10, align 8
  %18 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %22, i32* %5, align 4
  br label %99

23:                                               ; preds = %4
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @OFF_TO_IDX(i64 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.privcmd_map*, %struct.privcmd_map** %10, align 8
  %28 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %41, label %31

31:                                               ; preds = %23
  %32 = load %struct.privcmd_map*, %struct.privcmd_map** %10, align 8
  %33 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.privcmd_map*, %struct.privcmd_map** %10, align 8
  %37 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @BIT_ISSET(i64 %34, i64 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31, %23
  %42 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %42, i32* %5, align 4
  br label %99

43:                                               ; preds = %31
  %44 = load %struct.privcmd_map*, %struct.privcmd_map** %10, align 8
  %45 = getelementptr inbounds %struct.privcmd_map, %struct.privcmd_map* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add nsw i64 %46, %47
  %49 = call %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i64 %48)
  store %struct.TYPE_13__* %49, %struct.TYPE_13__** %12, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = icmp eq %struct.TYPE_13__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %53, i32* %5, align 4
  br label %99

54:                                               ; preds = %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @PG_FICTITIOUS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %63 = bitcast %struct.TYPE_13__* %62 to i8*
  %64 = call i32 @KASSERT(i32 %61, i8* %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %66 = call i32 @vm_page_wired(%struct.TYPE_13__* %65)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = bitcast %struct.TYPE_13__* %67 to i8*
  %69 = call i32 @KASSERT(i32 %66, i8* %68)
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %71 = call i32 @vm_page_busied(%struct.TYPE_13__* %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %76 = bitcast %struct.TYPE_13__* %75 to i8*
  %77 = call i32 @KASSERT(i32 %74, i8* %76)
  %78 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = icmp ne %struct.TYPE_13__* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %54
  %82 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %13, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %85 = call i32 @vm_page_free(%struct.TYPE_13__* %84)
  %86 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %86, align 8
  br label %87

87:                                               ; preds = %81, %54
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %89 = call i32 @vm_page_busy_acquire(%struct.TYPE_13__* %88, i32 0)
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %91 = call i32 @vm_page_valid(%struct.TYPE_13__* %90)
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @vm_page_insert(%struct.TYPE_13__* %92, %struct.TYPE_14__* %93, i64 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %97 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %9, align 8
  store %struct.TYPE_13__* %96, %struct.TYPE_13__** %97, align 8
  %98 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %98, i32* %5, align 4
  br label %99

99:                                               ; preds = %87, %52, %41, %21
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i64 @OFF_TO_IDX(i64) #1

declare dso_local i64 @BIT_ISSET(i64, i64, i32) #1

declare dso_local %struct.TYPE_13__* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_busied(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_busy_acquire(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_13__*) #1

declare dso_local i32 @vm_page_insert(%struct.TYPE_13__*, %struct.TYPE_14__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

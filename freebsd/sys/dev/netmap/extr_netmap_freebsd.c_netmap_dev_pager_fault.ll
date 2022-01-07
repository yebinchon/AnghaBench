; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_freebsd.c_netmap_dev_pager_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.netmap_vm_handle_t* }
%struct.netmap_vm_handle_t = type { %struct.netmap_priv_d* }
%struct.netmap_priv_d = type { %struct.netmap_adapter* }
%struct.netmap_adapter = type { i32 }
%struct.TYPE_15__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"object %p offset %jd prot %d mres %p\00", align 1
@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i64, i32, %struct.TYPE_15__**)* @netmap_dev_pager_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_dev_pager_fault(%struct.TYPE_16__* %0, i64 %1, i32 %2, %struct.TYPE_15__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__**, align 8
  %10 = alloca %struct.netmap_vm_handle_t*, align 8
  %11 = alloca %struct.netmap_priv_d*, align 8
  %12 = alloca %struct.netmap_adapter*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_15__** %3, %struct.TYPE_15__*** %9, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %19 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %18, align 8
  store %struct.netmap_vm_handle_t* %19, %struct.netmap_vm_handle_t** %10, align 8
  %20 = load %struct.netmap_vm_handle_t*, %struct.netmap_vm_handle_t** %10, align 8
  %21 = getelementptr inbounds %struct.netmap_vm_handle_t, %struct.netmap_vm_handle_t* %20, i32 0, i32 0
  %22 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %21, align 8
  store %struct.netmap_priv_d* %22, %struct.netmap_priv_d** %11, align 8
  %23 = load %struct.netmap_priv_d*, %struct.netmap_priv_d** %11, align 8
  %24 = getelementptr inbounds %struct.netmap_priv_d, %struct.netmap_priv_d* %23, i32 0, i32 0
  %25 = load %struct.netmap_adapter*, %struct.netmap_adapter** %24, align 8
  store %struct.netmap_adapter* %25, %struct.netmap_adapter** %12, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %31 = call i32 @nm_prdis(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %26, i32 %28, i32 %29, %struct.TYPE_15__** %30)
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @OFF_TO_IDX(i64 %35)
  store i32 %36, i32* %16, align 4
  %37 = load %struct.netmap_adapter*, %struct.netmap_adapter** %12, align 8
  %38 = getelementptr inbounds %struct.netmap_adapter, %struct.netmap_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @netmap_mem_ofstophys(i32 %39, i64 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %45, i32* %5, align 4
  br label %82

46:                                               ; preds = %4
  %47 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @PG_FICTITIOUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  store %struct.TYPE_15__* %56, %struct.TYPE_15__** %14, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @vm_page_updatefake(%struct.TYPE_15__* %57, i64 %58, i32 %59)
  br label %78

61:                                               ; preds = %46
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %63 = call i32 (%struct.TYPE_16__*, ...) bitcast (i32 (...)* @VM_OBJECT_UNLOCK to i32 (%struct.TYPE_16__*, ...)*)(%struct.TYPE_16__* %62)
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %15, align 4
  %66 = call %struct.TYPE_15__* @vm_page_getfake(i64 %64, i32 %65)
  store %struct.TYPE_15__* %66, %struct.TYPE_15__** %14, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %68 = call i32 (%struct.TYPE_16__*, ...) bitcast (i32 (...)* @VM_OBJECT_LOCK to i32 (%struct.TYPE_16__*, ...)*)(%struct.TYPE_16__* %67)
  %69 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = call i32 @vm_page_free(%struct.TYPE_15__* %70)
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %73 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %9, align 8
  store %struct.TYPE_15__* %72, %struct.TYPE_15__** %73, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @vm_page_insert(%struct.TYPE_15__* %74, %struct.TYPE_16__* %75, i32 %76)
  br label %78

78:                                               ; preds = %61, %54
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %80 = call i32 @vm_page_valid(%struct.TYPE_15__* %79)
  %81 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %78, %44
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @nm_prdis(i8*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @OFF_TO_IDX(i64) #1

declare dso_local i64 @netmap_mem_ofstophys(i32, i64) #1

declare dso_local i32 @vm_page_updatefake(%struct.TYPE_15__*, i64, i32) #1

declare dso_local i32 @VM_OBJECT_UNLOCK(...) #1

declare dso_local %struct.TYPE_15__* @vm_page_getfake(i64, i32) #1

declare dso_local i32 @VM_OBJECT_LOCK(...) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_insert(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

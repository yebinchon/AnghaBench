; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32* }

@kernel_pmap = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@kernel_map = common dso_local global %struct.TYPE_8__* null, align 8
@KERNBASE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_NOFAULT = common dso_local global i32 0, align 4
@vm_page_array = common dso_local global i64 0, align 8
@vm_page_array_size = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"kernel arena\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@kva_import = common dso_local global i32 0, align 4
@KVA_QUANTUM = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"kernel arena domain\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@vm_dom = common dso_local global %struct.TYPE_9__* null, align 8
@kva_import_domain = common dso_local global i32 0, align 4
@vmem_xfree = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kmem_init(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @kernel_pmap, align 4
  %8 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call %struct.TYPE_8__* @vm_map_create(i32 %7, i32 %8, i64 %9)
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %5, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = call i32 @vm_map_lock(%struct.TYPE_8__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** @kernel_map, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = load i32, i32* @KERNBASE, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %3, align 8
  %20 = load i32, i32* @VM_PROT_ALL, align 4
  %21 = load i32, i32* @VM_PROT_ALL, align 4
  %22 = load i32, i32* @MAP_NOFAULT, align 4
  %23 = call i32 (%struct.TYPE_8__*, i32*, i32, i64, i64, i32, i32, i32, ...) @vm_map_insert(%struct.TYPE_8__* %16, i32* null, i32 0, i64 %18, i64 %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %25 = load i64, i64* @vm_page_array, align 8
  %26 = load i64, i64* @vm_page_array, align 8
  %27 = load i32, i32* @vm_page_array_size, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i64 @round_2mpage(i32 %30)
  %32 = add nsw i64 %26, %31
  %33 = load i32, i32* @VM_PROT_RW, align 4
  %34 = load i32, i32* @VM_PROT_RW, align 4
  %35 = load i32, i32* @MAP_NOFAULT, align 4
  %36 = call i32 (%struct.TYPE_8__*, i32*, i32, i64, i64, i32, i32, i32, ...) @vm_map_insert(%struct.TYPE_8__* %24, i32* null, i32 0, i64 %25, i64 %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = call i32 @vm_map_unlock(%struct.TYPE_8__* %37)
  %39 = load i32*, i32** @kernel_arena, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @vmem_init(i32* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %40, i32 0, i32 0)
  %42 = load i32*, i32** @kernel_arena, align 8
  %43 = load i32, i32* @kva_import, align 4
  %44 = load i32, i32* @KVA_QUANTUM, align 4
  %45 = call i32 @vmem_set_import(i32* %42, i32 %43, i32* null, i32* null, i32 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %70, %2
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @vm_ndomains, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = call i8* @vmem_create(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0, i32 %51, i32 0, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vm_dom, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  store i32* %54, i32** %59, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** @vm_dom, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @kva_import_domain, align 4
  %67 = load i32*, i32** @kernel_arena, align 8
  %68 = load i32, i32* @KVA_QUANTUM, align 4
  %69 = call i32 @vmem_set_import(i32* %65, i32 %66, i32* null, i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %50
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %46

73:                                               ; preds = %46
  ret void
}

declare dso_local %struct.TYPE_8__* @vm_map_create(i32, i32, i64) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_map_insert(%struct.TYPE_8__*, i32*, i32, i64, i64, i32, i32, i32, ...) #1

declare dso_local i64 @round_2mpage(i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @vmem_init(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vmem_set_import(i32*, i32, i32*, i32*, i32) #1

declare dso_local i8* @vmem_create(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

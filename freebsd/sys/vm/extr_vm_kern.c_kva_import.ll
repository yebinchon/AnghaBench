; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kva_import.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kva_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KVA_QUANTUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"kva_import: Size %jd is not a multiple of %d\00", align 1
@kernel_map = common dso_local global i32 0, align 4
@VMFS_SUPER_SPACE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_NOFAULT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*)* @kva_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kva_import(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @KVA_QUANTUM, align 4
  %14 = srem i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @KVA_QUANTUM, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %16, i8* %20)
  %22 = load i32, i32* @kernel_map, align 4
  %23 = call i32 @vm_map_min(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @kernel_map, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @VMFS_SUPER_SPACE, align 4
  %27 = load i32, i32* @VM_PROT_ALL, align 4
  %28 = load i32, i32* @VM_PROT_ALL, align 4
  %29 = load i32, i32* @MAP_NOFAULT, align 4
  %30 = call i32 @vm_map_find(i32 %24, i32* null, i32 0, i32* %10, i32 %25, i32 0, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @KERN_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %10, align 4
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %36, %34
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_map_min(i32) #1

declare dso_local i32 @vm_map_find(i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

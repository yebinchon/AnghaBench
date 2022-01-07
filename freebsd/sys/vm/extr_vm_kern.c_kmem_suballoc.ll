; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_suballoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_suballoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VMFS_SUPER_SPACE = common dso_local global i32 0, align 4
@VMFS_ANY_SPACE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_ACC_NO_CHARGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"kmem_suballoc: bad status return of %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"kmem_suballoc: cannot create submap\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"kmem_suballoc: unable to change range to submap\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @kmem_suballoc(i32* %0, i64* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @round_page(i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i64 @vm_map_min(i32* %15)
  %17 = load i64*, i64** %7, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @VMFS_SUPER_SPACE, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @VMFS_ANY_SPACE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = load i32, i32* @VM_PROT_ALL, align 4
  %30 = load i32, i32* @VM_PROT_ALL, align 4
  %31 = load i32, i32* @MAP_ACC_NO_CHARGE, align 4
  %32 = call i32 @vm_map_find(i32* %18, i32* null, i32 0, i64* %19, i64 %20, i32 0, i32 %28, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @KERN_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64*, i64** %8, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @vm_map_pmap(i32* %45)
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i32* @vm_map_create(i32 %46, i64 %48, i64 %50)
  store i32* %51, i32** %12, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %39
  %55 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %39
  %57 = load i32*, i32** %6, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %8, align 8
  %61 = load i64, i64* %60, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @vm_map_submap(i32* %57, i64 %59, i64 %61, i32* %62)
  %64 = load i32, i32* @KERN_SUCCESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %56
  %69 = load i32*, i32** %12, align 8
  ret i32* %69
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vm_map_min(i32*) #1

declare dso_local i32 @vm_map_find(i32*, i32*, i32, i64*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32* @vm_map_create(i32, i64, i64) #1

declare dso_local i32 @vm_map_pmap(i32*) #1

declare dso_local i32 @vm_map_submap(i32*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

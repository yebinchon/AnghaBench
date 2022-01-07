; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_cdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32, i32 (%struct.cdev.0*, i64*, i32, i32**, i32)* }
%struct.cdev.0 = type opaque

@D_MMAP_ANON = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_COPY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OBJT_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_cdev(%struct.thread* %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.cdev* %5, %struct.cdevsw* %6, i64* %7, i32** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.cdev*, align 8
  %17 = alloca %struct.cdevsw*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.cdev* %5, %struct.cdev** %16, align 8
  store %struct.cdevsw* %6, %struct.cdevsw** %17, align 8
  store i64* %7, i64** %18, align 8
  store i32** %8, i32*** %19, align 8
  %23 = load i32*, i32** %15, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %22, align 4
  %25 = load %struct.cdevsw*, %struct.cdevsw** %17, align 8
  %26 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @D_MMAP_ANON, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %9
  %32 = load i32**, i32*** %19, align 8
  store i32* null, i32** %32, align 8
  %33 = load i64*, i64** %18, align 8
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* @VM_PROT_ALL, align 4
  %35 = load i32*, i32** %14, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @MAP_ANON, align 4
  %37 = load i32*, i32** %15, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %10, align 4
  br label %101

40:                                               ; preds = %9
  %41 = load i32*, i32** %14, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VM_PROT_WRITE, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @VM_PROT_WRITE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @EACCES, align 4
  store i32 %52, i32* %10, align 4
  br label %101

53:                                               ; preds = %46, %40
  %54 = load i32, i32* %22, align 4
  %55 = load i32, i32* @MAP_PRIVATE, align 4
  %56 = load i32, i32* @MAP_COPY, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %10, align 4
  br label %101

62:                                               ; preds = %53
  %63 = load i32, i32* @MAP_SHARED, align 4
  %64 = load i32, i32* %22, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %22, align 4
  %66 = load %struct.cdevsw*, %struct.cdevsw** %17, align 8
  %67 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %66, i32 0, i32 1
  %68 = load i32 (%struct.cdev.0*, i64*, i32, i32**, i32)*, i32 (%struct.cdev.0*, i64*, i32, i32**, i32)** %67, align 8
  %69 = load %struct.cdev*, %struct.cdev** %16, align 8
  %70 = bitcast %struct.cdev* %69 to %struct.cdev.0*
  %71 = load i64*, i64** %18, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load i32**, i32*** %19, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 %68(%struct.cdev.0* %70, i64* %71, i32 %72, i32** %73, i32 %74)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* @ENODEV, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i32, i32* %21, align 4
  store i32 %80, i32* %10, align 4
  br label %101

81:                                               ; preds = %62
  %82 = load i32, i32* @OBJT_DEVICE, align 4
  %83 = load %struct.cdev*, %struct.cdev** %16, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i64*, i64** %18, align 8
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.thread*, %struct.thread** %11, align 8
  %89 = getelementptr inbounds %struct.thread, %struct.thread* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32* @vm_pager_allocate(i32 %82, %struct.cdev* %83, i32 %84, i32 %85, i64 %87, i32 %90)
  store i32* %91, i32** %20, align 8
  %92 = load i32*, i32** %20, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %81
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %10, align 4
  br label %101

96:                                               ; preds = %81
  %97 = load i32*, i32** %20, align 8
  %98 = load i32**, i32*** %19, align 8
  store i32* %97, i32** %98, align 8
  %99 = load i32, i32* %22, align 4
  %100 = load i32*, i32** %15, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %96, %94, %79, %60, %51, %31
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local i32* @vm_pager_allocate(i32, %struct.cdev*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.cdevsw = type { i32 }
%struct.cdev = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap(i32 %0, i32* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.thread*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.cdevsw*, align 8
  %25 = alloca %struct.cdev*, align 8
  %26 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32* %1, i32** %12, align 8
  store i64 %2, i64* %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  %27 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %27, %struct.thread** %21, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %9
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %10, align 4
  br label %103

32:                                               ; preds = %9
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @round_page(i64 %33)
  store i64 %34, i64* %13, align 8
  store i32* null, i32** %20, align 8
  %35 = load i64, i64* @FALSE, align 8
  store i64 %35, i64* %23, align 8
  %36 = load i32, i32* %17, align 4
  switch i32 %36, label %67 [
    i32 129, label %37
    i32 128, label %56
    i32 130, label %62
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %18, align 8
  %39 = bitcast i8* %38 to %struct.cdev*
  store %struct.cdev* %39, %struct.cdev** %25, align 8
  %40 = load %struct.cdev*, %struct.cdev** %25, align 8
  %41 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %40, i32* %26)
  store %struct.cdevsw* %41, %struct.cdevsw** %24, align 8
  %42 = load %struct.cdevsw*, %struct.cdevsw** %24, align 8
  %43 = icmp eq %struct.cdevsw* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* @ENXIO, align 4
  store i32 %45, i32* %10, align 4
  br label %103

46:                                               ; preds = %37
  %47 = load %struct.thread*, %struct.thread** %21, align 8
  %48 = load i64, i64* %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.cdev*, %struct.cdev** %25, align 8
  %51 = load %struct.cdevsw*, %struct.cdevsw** %24, align 8
  %52 = call i32 @vm_mmap_cdev(%struct.thread* %47, i64 %48, i32 %49, i32* %15, i32* %16, %struct.cdev* %50, %struct.cdevsw* %51, i32* %19, i32** %20)
  store i32 %52, i32* %22, align 4
  %53 = load %struct.cdev*, %struct.cdev** %25, align 8
  %54 = load i32, i32* %26, align 4
  %55 = call i32 @dev_relthread(%struct.cdev* %53, i32 %54)
  br label %69

56:                                               ; preds = %32
  %57 = load %struct.thread*, %struct.thread** %21, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i8*, i8** %18, align 8
  %61 = call i32 @vm_mmap_vnode(%struct.thread* %57, i64 %58, i32 %59, i32* %15, i32* %16, i8* %60, i32* %19, i32** %20, i64* %23)
  store i32 %61, i32* %22, align 4
  br label %69

62:                                               ; preds = %32
  %63 = load i8*, i8** %18, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %22, align 4
  br label %69

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %32, %66
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %22, align 4
  br label %69

69:                                               ; preds = %67, %65, %56, %46
  %70 = load i32, i32* %22, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %22, align 4
  store i32 %73, i32* %10, align 4
  br label %103

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32*, i32** %20, align 8
  %82 = load i32, i32* %19, align 4
  %83 = load i64, i64* %23, align 8
  %84 = load %struct.thread*, %struct.thread** %21, align 8
  %85 = call i32 @vm_mmap_object(i32 %75, i32* %76, i64 %77, i32 %78, i32 %79, i32 %80, i32* %81, i32 %82, i64 %83, %struct.thread* %84)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %74
  %89 = load i32*, i32** %20, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i64, i64* %23, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32*, i32** %20, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @vm_pager_release_writecount(i32* %95, i32 0, i64 %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32*, i32** %20, align 8
  %100 = call i32 @vm_object_deallocate(i32* %99)
  br label %101

101:                                              ; preds = %98, %88, %74
  %102 = load i32, i32* %22, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %72, %44, %30
  %104 = load i32, i32* %10, align 4
  ret i32 %104
}

declare dso_local i64 @round_page(i64) #1

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @vm_mmap_cdev(%struct.thread*, i64, i32, i32*, i32*, %struct.cdev*, %struct.cdevsw*, i32*, i32**) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @vm_mmap_vnode(%struct.thread*, i64, i32, i32*, i32*, i8*, i32*, i32**, i64*) #1

declare dso_local i32 @vm_mmap_object(i32, i32*, i64, i32, i32, i32, i32*, i32, i64, %struct.thread*) #1

declare dso_local i32 @vm_pager_release_writecount(i32*, i32, i64) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

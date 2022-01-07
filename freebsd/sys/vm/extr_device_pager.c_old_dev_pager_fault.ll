; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_old_dev_pager_fault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_device_pager.c_old_dev_pager_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.file* }
%struct.file = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.cdev* }
%struct.cdev = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.cdevsw = type { i32 (%struct.cdev.0*, i32, i32*, i32, i32*)*, i32, i8* }
%struct.cdev.0 = type opaque

@VM_PAGER_FAIL = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [58 x i8] c"WARNING: dev_pager_getpage: map function returns error %d\00", align 1
@D_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"WARNING: Device driver %s has set \22memattr\22 inconsistently (drv %u pmap %u).\0A\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32, i32, %struct.TYPE_16__**)* @old_dev_pager_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @old_dev_pager_fault(%struct.TYPE_17__* %0, i32 %1, i32 %2, %struct.TYPE_16__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.cdev*, align 8
  %14 = alloca %struct.cdevsw*, align 8
  %15 = alloca %struct.file*, align 8
  %16 = alloca %struct.thread*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_16__** %3, %struct.TYPE_16__*** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %17, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %25 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_17__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load %struct.cdev*, %struct.cdev** %27, align 8
  store %struct.cdev* %28, %struct.cdev** %13, align 8
  %29 = load %struct.cdev*, %struct.cdev** %13, align 8
  %30 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %29, i32* %19)
  store %struct.cdevsw* %30, %struct.cdevsw** %14, align 8
  %31 = load %struct.cdevsw*, %struct.cdevsw** %14, align 8
  %32 = icmp eq %struct.cdevsw* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_17__* %34)
  %36 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %4
  %38 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %38, %struct.thread** %16, align 8
  %39 = load %struct.thread*, %struct.thread** %16, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load %struct.file*, %struct.file** %40, align 8
  store %struct.file* %41, %struct.file** %15, align 8
  %42 = load %struct.thread*, %struct.thread** %16, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  store %struct.file* null, %struct.file** %43, align 8
  %44 = load %struct.cdevsw*, %struct.cdevsw** %14, align 8
  %45 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %44, i32 0, i32 0
  %46 = load i32 (%struct.cdev.0*, i32, i32*, i32, i32*)*, i32 (%struct.cdev.0*, i32, i32*, i32, i32*)** %45, align 8
  %47 = load %struct.cdev*, %struct.cdev** %13, align 8
  %48 = bitcast %struct.cdev* %47 to %struct.cdev.0*
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 %46(%struct.cdev.0* %48, i32 %49, i32* %10, i32 %50, i32* %17)
  store i32 %51, i32* %20, align 4
  %52 = load %struct.file*, %struct.file** %15, align 8
  %53 = load %struct.thread*, %struct.thread** %16, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 0
  store %struct.file* %52, %struct.file** %54, align 8
  %55 = load %struct.cdev*, %struct.cdev** %13, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @dev_relthread(%struct.cdev* %55, i32 %56)
  %58 = load i32, i32* %20, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %37
  %61 = load i32, i32* %20, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_17__* %63)
  %65 = load i32, i32* @VM_PAGER_FAIL, align 4
  store i32 %65, i32* %5, align 4
  br label %132

66:                                               ; preds = %37
  %67 = load i32, i32* %10, align 4
  %68 = call %struct.TYPE_16__* @vm_phys_paddr_to_vm_page(i32 %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %11, align 8
  %69 = icmp ne %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %72 = call i32 @pmap_page_get_memattr(%struct.TYPE_16__* %71)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %70
  %76 = load %struct.cdevsw*, %struct.cdevsw** %14, align 8
  %77 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @D_MEM, align 4
  %80 = and i32 %78, %79
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.cdevsw*, %struct.cdevsw** %14, align 8
  %84 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %18, align 4
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i8* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %75
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %89, %70, %66
  %92 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PG_FICTITIOUS, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %91
  %100 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %12, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %103 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_17__* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i32 @vm_page_updatefake(%struct.TYPE_16__* %104, i32 %105, i32 %106)
  br label %128

108:                                              ; preds = %91
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %17, align 4
  %111 = call %struct.TYPE_16__* @vm_page_getfake(i32 %109, i32 %110)
  store %struct.TYPE_16__* %111, %struct.TYPE_16__** %12, align 8
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_17__* %112)
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %116 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %120, align 8
  %122 = call i32 @vm_page_replace_checked(%struct.TYPE_16__* %114, %struct.TYPE_17__* %115, i32 %119, %struct.TYPE_16__* %121)
  %123 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %123, align 8
  %125 = call i32 @vm_page_free(%struct.TYPE_16__* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %127 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %9, align 8
  store %struct.TYPE_16__* %126, %struct.TYPE_16__** %127, align 8
  br label %128

128:                                              ; preds = %108, %99
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %130 = call i32 @vm_page_valid(%struct.TYPE_16__* %129)
  %131 = load i32, i32* @VM_PAGER_OK, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %60, %33
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_17__*) #1

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.TYPE_16__* @vm_phys_paddr_to_vm_page(i32) #1

declare dso_local i32 @pmap_page_get_memattr(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_updatefake(%struct.TYPE_16__*, i32, i32) #1

declare dso_local %struct.TYPE_16__* @vm_page_getfake(i32, i32) #1

declare dso_local i32 @vm_page_replace_checked(%struct.TYPE_16__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_page_valid(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

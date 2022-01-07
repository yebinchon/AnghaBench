; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_soft_fast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_soft_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.faultstate = type { %struct.TYPE_28__*, %struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64 }

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@PFBAK = common dso_local global i32 0, align 4
@PFFOR = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_26__* null, align 8
@OBJ_UNMANAGED = common dso_local global i32 0, align 4
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@PS_ALL_DIRTY = common dso_local global i32 0, align 4
@PS_ALL_VALID = common dso_local global i32 0, align 4
@PS_NONE_BUSY = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faultstate*, i32, i32, i32, i32, i64, %struct.TYPE_27__**)* @vm_fault_soft_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_fault_soft_fast(%struct.faultstate* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, %struct.TYPE_27__** %6) #0 {
  %8 = alloca %struct.faultstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_27__**, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.faultstate* %0, %struct.faultstate** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store %struct.TYPE_27__** %6, %struct.TYPE_27__*** %14, align 8
  %19 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %20 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %26 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %25, i32 0, i32 0
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %28 = call i32 @vm_object_busy(%struct.TYPE_28__* %27)
  %29 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %30 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %29, i32 0, i32 0
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %33 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_27__* @vm_page_lookup(%struct.TYPE_28__* %31, i32 %34)
  store %struct.TYPE_27__* %35, %struct.TYPE_27__** %15, align 8
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %37 = icmp eq %struct.TYPE_27__* %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %7
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @VM_PROT_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %45 = call i64 @vm_page_busied(%struct.TYPE_27__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %49 = call i32 @vm_page_all_valid(%struct.TYPE_27__* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47, %43, %7
  %52 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %52, i32* %18, align 4
  br label %125

53:                                               ; preds = %47
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  store %struct.TYPE_27__* %54, %struct.TYPE_27__** %16, align 8
  store i32 0, i32* %17, align 4
  %55 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %56 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %55, i32 0, i32 2
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %65 = or i32 %63, %64
  %66 = load i64, i64* %13, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %53
  %69 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  br label %71

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %65, %72
  %74 = load i32, i32* %17, align 4
  %75 = call i32 @pmap_enter(i32 %59, i32 %60, %struct.TYPE_27__* %61, i32 %62, i32 %73, i32 %74)
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @KERN_SUCCESS, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %125

80:                                               ; preds = %71
  %81 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  %82 = icmp ne %struct.TYPE_27__** %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %85 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %14, align 8
  store %struct.TYPE_27__* %84, %struct.TYPE_27__** %85, align 8
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %87 = call i32 @vm_page_wire(%struct.TYPE_27__* %86)
  br label %88

88:                                               ; preds = %83, %80
  %89 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %90 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %89, i32 0, i32 1
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @vm_fault_dirty(%struct.TYPE_24__* %91, %struct.TYPE_27__* %92, i32 %93, i32 %94, i32 %95, i32 0)
  %97 = load i32, i32* %17, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %88
  %100 = load i64, i64* %13, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @PFBAK, align 4
  %106 = load i32, i32* @PFFOR, align 4
  %107 = call i32 @vm_fault_prefault(%struct.faultstate* %103, i32 %104, i32 %105, i32 %106, i32 1)
  br label %108

108:                                              ; preds = %102, %99, %88
  %109 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %110 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %109, i32 0, i32 0
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %110, align 8
  %112 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_28__* %111)
  %113 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %114 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %113, i32 0, i32 2
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %114, align 8
  %116 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %117 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %116, i32 0, i32 1
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = call i32 @vm_map_lookup_done(%struct.TYPE_23__* %115, %struct.TYPE_24__* %118)
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** @curthread, align 8
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %108, %79, %51
  %126 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %127 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %126, i32 0, i32 0
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %127, align 8
  %129 = call i32 @vm_object_unbusy(%struct.TYPE_28__* %128)
  %130 = load i32, i32* %18, align 4
  ret i32 %130
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @vm_object_busy(%struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_27__* @vm_page_lookup(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @vm_page_busied(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_page_all_valid(%struct.TYPE_27__*) #1

declare dso_local i32 @pmap_enter(i32, i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_fault_dirty(%struct.TYPE_24__*, %struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32 @vm_fault_prefault(%struct.faultstate*, i32, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_map_lookup_done(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @vm_object_unbusy(%struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

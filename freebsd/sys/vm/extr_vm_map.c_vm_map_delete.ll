; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i32 }
%struct.TYPE_24__ = type { i64, i32, i64, i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32* }

@KERN_SUCCESS = common dso_local global i32 0, align 4
@MAP_ENTRY_IN_TRANSITION = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@MAP_ENTRY_NEEDS_WAKEUP = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_delete(%struct.TYPE_23__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = call i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_23__* %14)
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %20, i32* %4, align 4
  br label %156

21:                                               ; preds = %3
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @vm_map_lookup_entry(%struct.TYPE_23__* %22, i64 %23, %struct.TYPE_24__** %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %28 = call %struct.TYPE_24__* @vm_map_entry_succ(%struct.TYPE_24__* %27)
  store %struct.TYPE_24__* %28, %struct.TYPE_24__** %8, align 8
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  store %struct.TYPE_24__* %30, %struct.TYPE_24__** %8, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @vm_map_clip_start(%struct.TYPE_23__* %31, %struct.TYPE_24__* %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %26
  br label %36

36:                                               ; preds = %149, %95, %35
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %154

42:                                               ; preds = %36
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = call i64 @vm_map_pmap(%struct.TYPE_23__* %50)
  %52 = load i64, i64* @kernel_pmap, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %96

54:                                               ; preds = %49
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = call i64 @vm_map_entry_system_wired_count(%struct.TYPE_24__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %54, %42
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i32, i32* @MAP_ENTRY_NEEDS_WAKEUP, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %71 = call i32 @vm_map_unlock_and_wait(%struct.TYPE_23__* %70, i32 0)
  %72 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %73 = call i32 @vm_map_lock(%struct.TYPE_23__* %72)
  %74 = load i32, i32* %11, align 4
  %75 = add i32 %74, 1
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %58
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @vm_map_lookup_entry(%struct.TYPE_23__* %81, i64 %82, %struct.TYPE_24__** %13)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %87 = call %struct.TYPE_24__* @vm_map_entry_succ(%struct.TYPE_24__* %86)
  store %struct.TYPE_24__* %87, %struct.TYPE_24__** %8, align 8
  br label %94

88:                                               ; preds = %80
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  store %struct.TYPE_24__* %89, %struct.TYPE_24__** %8, align 8
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @vm_map_clip_start(%struct.TYPE_23__* %90, %struct.TYPE_24__* %91, i64 %92)
  br label %94

94:                                               ; preds = %88, %85
  br label %95

95:                                               ; preds = %94, %58
  br label %36

96:                                               ; preds = %54, %49
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %98 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @vm_map_clip_end(%struct.TYPE_23__* %97, %struct.TYPE_24__* %98, i64 %99)
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %102 = call %struct.TYPE_24__* @vm_map_entry_succ(%struct.TYPE_24__* %101)
  store %struct.TYPE_24__* %102, %struct.TYPE_24__** %10, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %110 = call i32 @vm_map_entry_unwire(%struct.TYPE_23__* %108, %struct.TYPE_24__* %109)
  br label %111

111:                                              ; preds = %107, %96
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %111
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %135

124:                                              ; preds = %118, %111
  %125 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @pmap_remove(i32 %127, i64 %130, i64 %133)
  br label %135

135:                                              ; preds = %124, %118
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 1
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %143, %135
  %150 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %152 = call i32 @vm_map_entry_delete(%struct.TYPE_23__* %150, %struct.TYPE_24__* %151)
  %153 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_24__* %153, %struct.TYPE_24__** %8, align 8
  br label %36

154:                                              ; preds = %36
  %155 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %19
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

declare dso_local i32 @VM_MAP_ASSERT_LOCKED(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_23__*, i64, %struct.TYPE_24__**) #1

declare dso_local %struct.TYPE_24__* @vm_map_entry_succ(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_clip_start(%struct.TYPE_23__*, %struct.TYPE_24__*, i64) #1

declare dso_local i64 @vm_map_pmap(%struct.TYPE_23__*) #1

declare dso_local i64 @vm_map_entry_system_wired_count(%struct.TYPE_24__*) #1

declare dso_local i32 @vm_map_unlock_and_wait(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_23__*) #1

declare dso_local i32 @vm_map_clip_end(%struct.TYPE_23__*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @vm_map_entry_unwire(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

declare dso_local i32 @pmap_remove(i32, i64, i64) #1

declare dso_local i32 @vm_map_entry_delete(%struct.TYPE_23__*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

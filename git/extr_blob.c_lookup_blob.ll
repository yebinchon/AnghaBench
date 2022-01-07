; ModuleID = '/home/carl/AnghaBench/git/extr_blob.c_lookup_blob.c'
source_filename = "/home/carl/AnghaBench/git/extr_blob.c_lookup_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blob = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@OBJ_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blob* @lookup_blob(%struct.repository* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.blob*, align 8
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  %7 = load %struct.repository*, %struct.repository** %4, align 8
  %8 = load %struct.object_id*, %struct.object_id** %5, align 8
  %9 = call %struct.object* @lookup_object(%struct.repository* %7, %struct.object_id* %8)
  store %struct.object* %9, %struct.object** %6, align 8
  %10 = load %struct.object*, %struct.object** %6, align 8
  %11 = icmp ne %struct.object* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.repository*, %struct.repository** %4, align 8
  %14 = load %struct.object_id*, %struct.object_id** %5, align 8
  %15 = load %struct.repository*, %struct.repository** %4, align 8
  %16 = call i32 @alloc_blob_node(%struct.repository* %15)
  %17 = call %struct.blob* @create_object(%struct.repository* %13, %struct.object_id* %14, i32 %16)
  store %struct.blob* %17, %struct.blob** %3, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.repository*, %struct.repository** %4, align 8
  %20 = load %struct.object*, %struct.object** %6, align 8
  %21 = load i32, i32* @OBJ_BLOB, align 4
  %22 = call %struct.blob* @object_as_type(%struct.repository* %19, %struct.object* %20, i32 %21, i32 0)
  store %struct.blob* %22, %struct.blob** %3, align 8
  br label %23

23:                                               ; preds = %18, %12
  %24 = load %struct.blob*, %struct.blob** %3, align 8
  ret %struct.blob* %24
}

declare dso_local %struct.object* @lookup_object(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.blob* @create_object(%struct.repository*, %struct.object_id*, i32) #1

declare dso_local i32 @alloc_blob_node(%struct.repository*) #1

declare dso_local %struct.blob* @object_as_type(%struct.repository*, %struct.object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

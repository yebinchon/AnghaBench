; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_reference_gently.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_lookup_commit_reference_gently.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.repository = type { i32 }
%struct.object_id = type { i32 }
%struct.object = type { i32 }

@OBJ_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit* @lookup_commit_reference_gently(%struct.repository* %0, %struct.object_id* %1, i32 %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.object*, align 8
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.repository*, %struct.repository** %5, align 8
  %10 = load %struct.repository*, %struct.repository** %5, align 8
  %11 = load %struct.object_id*, %struct.object_id** %6, align 8
  %12 = call i32 @parse_object(%struct.repository* %10, %struct.object_id* %11)
  %13 = call %struct.object* @deref_tag(%struct.repository* %9, i32 %12, i32* null, i32 0)
  store %struct.object* %13, %struct.object** %8, align 8
  %14 = load %struct.object*, %struct.object** %8, align 8
  %15 = icmp ne %struct.object* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.commit* null, %struct.commit** %4, align 8
  br label %23

17:                                               ; preds = %3
  %18 = load %struct.repository*, %struct.repository** %5, align 8
  %19 = load %struct.object*, %struct.object** %8, align 8
  %20 = load i32, i32* @OBJ_COMMIT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.commit* @object_as_type(%struct.repository* %18, %struct.object* %19, i32 %20, i32 %21)
  store %struct.commit* %22, %struct.commit** %4, align 8
  br label %23

23:                                               ; preds = %17, %16
  %24 = load %struct.commit*, %struct.commit** %4, align 8
  ret %struct.commit* %24
}

declare dso_local %struct.object* @deref_tag(%struct.repository*, i32, i32*, i32) #1

declare dso_local i32 @parse_object(%struct.repository*, %struct.object_id*) #1

declare dso_local %struct.commit* @object_as_type(%struct.repository*, %struct.object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

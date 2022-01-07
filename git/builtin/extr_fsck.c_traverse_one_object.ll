; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fsck.c_traverse_one_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fsck.c_traverse_one_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i64 }
%struct.tree = type { i32 }

@fsck_walk_options = common dso_local global i32 0, align 4
@OBJ_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object*)* @traverse_one_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traverse_one_object(%struct.object* %0) #0 {
  %2 = alloca %struct.object*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tree*, align 8
  store %struct.object* %0, %struct.object** %2, align 8
  %5 = load %struct.object*, %struct.object** %2, align 8
  %6 = load %struct.object*, %struct.object** %2, align 8
  %7 = call i32 @fsck_walk(%struct.object* %5, %struct.object* %6, i32* @fsck_walk_options)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.object*, %struct.object** %2, align 8
  %9 = getelementptr inbounds %struct.object, %struct.object* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OBJ_TREE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.object*, %struct.object** %2, align 8
  %15 = bitcast %struct.object* %14 to %struct.tree*
  store %struct.tree* %15, %struct.tree** %4, align 8
  %16 = load %struct.tree*, %struct.tree** %4, align 8
  %17 = call i32 @free_tree_buffer(%struct.tree* %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @fsck_walk(%struct.object*, %struct.object*, i32*) #1

declare dso_local i32 @free_tree_buffer(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

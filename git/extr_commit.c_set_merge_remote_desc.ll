; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_set_merge_remote_desc.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_set_merge_remote_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.object = type { i32 }
%struct.merge_remote_desc = type { %struct.object* }

@merge_desc_slab = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_merge_remote_desc(%struct.commit* %0, i8* %1, %struct.object* %2) #0 {
  %4 = alloca %struct.commit*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.object*, align 8
  %7 = alloca %struct.merge_remote_desc*, align 8
  store %struct.commit* %0, %struct.commit** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.object* %2, %struct.object** %6, align 8
  %8 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @FLEX_ALLOC_STR(%struct.merge_remote_desc* %8, i8* %9, i8* %10)
  %12 = load %struct.object*, %struct.object** %6, align 8
  %13 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %14 = getelementptr inbounds %struct.merge_remote_desc, %struct.merge_remote_desc* %13, i32 0, i32 0
  store %struct.object* %12, %struct.object** %14, align 8
  %15 = load %struct.merge_remote_desc*, %struct.merge_remote_desc** %7, align 8
  %16 = load %struct.commit*, %struct.commit** %4, align 8
  %17 = call %struct.merge_remote_desc** @merge_desc_slab_at(i32* @merge_desc_slab, %struct.commit* %16)
  store %struct.merge_remote_desc* %15, %struct.merge_remote_desc** %17, align 8
  ret void
}

declare dso_local i32 @FLEX_ALLOC_STR(%struct.merge_remote_desc*, i8*, i8*) #1

declare dso_local %struct.merge_remote_desc** @merge_desc_slab_at(i32*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

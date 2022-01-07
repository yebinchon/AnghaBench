; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_push_tip_to_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_push_tip_to_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.commit_list = type { i32 }
%struct.commit = type { i32 }

@REF_ISSYMREF = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.object_id*, i32, i8*)* @push_tip_to_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_tip_to_list(i8* %0, %struct.object_id* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.commit_list**, align 8
  %11 = alloca %struct.commit*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_id* %1, %struct.object_id** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.commit_list**
  store %struct.commit_list** %13, %struct.commit_list*** %10, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @REF_ISSYMREF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %30

19:                                               ; preds = %4
  %20 = load i32, i32* @the_repository, align 4
  %21 = load %struct.object_id*, %struct.object_id** %7, align 8
  %22 = call %struct.commit* @lookup_commit_reference_gently(i32 %20, %struct.object_id* %21, i32 1)
  store %struct.commit* %22, %struct.commit** %11, align 8
  %23 = load %struct.commit*, %struct.commit** %11, align 8
  %24 = icmp ne %struct.commit* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.commit*, %struct.commit** %11, align 8
  %28 = load %struct.commit_list**, %struct.commit_list*** %10, align 8
  %29 = call i32 @commit_list_insert(%struct.commit* %27, %struct.commit_list** %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %25, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.commit* @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local i32 @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

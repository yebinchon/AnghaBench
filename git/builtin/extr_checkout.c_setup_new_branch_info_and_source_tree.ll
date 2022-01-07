; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_setup_new_branch_info_and_source_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_setup_new_branch_info_and_source_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_info = type { i8*, i32, i32* }
%struct.checkout_opts = type { %struct.tree* }
%struct.tree = type { i32 }
%struct.object_id = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.branch_info*, %struct.checkout_opts*, %struct.object_id*, i8*)* @setup_new_branch_info_and_source_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_new_branch_info_and_source_tree(%struct.branch_info* %0, %struct.checkout_opts* %1, %struct.object_id* %2, i8* %3) #0 {
  %5 = alloca %struct.branch_info*, align 8
  %6 = alloca %struct.checkout_opts*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.tree**, align 8
  %10 = alloca %struct.object_id, align 4
  store %struct.branch_info* %0, %struct.branch_info** %5, align 8
  store %struct.checkout_opts* %1, %struct.checkout_opts** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.checkout_opts*, %struct.checkout_opts** %6, align 8
  %12 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %11, i32 0, i32 0
  store %struct.tree** %12, %struct.tree*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %15 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %17 = call i32 @setup_branch_path(%struct.branch_info* %16)
  %18 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %19 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @check_refname_format(i32* %20, i32 0)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %4
  %24 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %25 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @read_ref(i32* %26, %struct.object_id* %10)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load %struct.object_id*, %struct.object_id** %7, align 8
  %31 = call i32 @oidcpy(%struct.object_id* %30, %struct.object_id* %10)
  br label %35

32:                                               ; preds = %23, %4
  %33 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %34 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @the_repository, align 4
  %37 = load %struct.object_id*, %struct.object_id** %7, align 8
  %38 = call i32 @lookup_commit_reference_gently(i32 %36, %struct.object_id* %37, i32 1)
  %39 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %40 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %42 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %35
  %46 = load %struct.object_id*, %struct.object_id** %7, align 8
  %47 = call %struct.tree* @parse_tree_indirect(%struct.object_id* %46)
  %48 = load %struct.tree**, %struct.tree*** %9, align 8
  store %struct.tree* %47, %struct.tree** %48, align 8
  br label %59

49:                                               ; preds = %35
  %50 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %51 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @parse_commit_or_die(i32 %52)
  %54 = load %struct.branch_info*, %struct.branch_info** %5, align 8
  %55 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.tree* @get_commit_tree(i32 %56)
  %58 = load %struct.tree**, %struct.tree*** %9, align 8
  store %struct.tree* %57, %struct.tree** %58, align 8
  br label %59

59:                                               ; preds = %49, %45
  ret void
}

declare dso_local i32 @setup_branch_path(%struct.branch_info*) #1

declare dso_local i32 @check_refname_format(i32*, i32) #1

declare dso_local i32 @read_ref(i32*, %struct.object_id*) #1

declare dso_local i32 @oidcpy(%struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @lookup_commit_reference_gently(i32, %struct.object_id*, i32) #1

declare dso_local %struct.tree* @parse_tree_indirect(%struct.object_id*) #1

declare dso_local i32 @parse_commit_or_die(i32) #1

declare dso_local %struct.tree* @get_commit_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_reset_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_reset_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32 }
%struct.checkout_opts = type { i32 }
%struct.unpack_trees_options = type { i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }
%struct.tree_desc = type { i32 }

@oneway_merge = common dso_local global i32 0, align 4
@the_index = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, %struct.checkout_opts*, i32, i32*)* @reset_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_tree(%struct.tree* %0, %struct.checkout_opts* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.checkout_opts*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.unpack_trees_options, align 8
  %11 = alloca %struct.tree_desc, align 4
  store %struct.tree* %0, %struct.tree** %6, align 8
  store %struct.checkout_opts* %1, %struct.checkout_opts** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = call i32 @memset(%struct.unpack_trees_options* %10, i32 0, i32 48)
  %13 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 0
  store i32 -1, i32* %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 4
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* @oneway_merge, align 4
  %24 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 8
  store i32 %23, i32* %24, align 4
  %25 = load %struct.checkout_opts*, %struct.checkout_opts** %7, align 8
  %26 = getelementptr inbounds %struct.checkout_opts, %struct.checkout_opts* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 7
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 6
  store i32* @the_index, i32** %29, align 8
  %30 = getelementptr inbounds %struct.unpack_trees_options, %struct.unpack_trees_options* %10, i32 0, i32 5
  store i32* @the_index, i32** %30, align 8
  %31 = load %struct.tree*, %struct.tree** %6, align 8
  %32 = call i32 @parse_tree(%struct.tree* %31)
  %33 = load %struct.tree*, %struct.tree** %6, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tree*, %struct.tree** %6, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @init_tree_desc(%struct.tree_desc* %11, i32 %35, i32 %38)
  %40 = call i32 @unpack_trees(i32 1, %struct.tree_desc* %11, %struct.unpack_trees_options* %10)
  switch i32 %40, label %44 [
    i32 -2, label %41
    i32 0, label %43
  ]

41:                                               ; preds = %4
  %42 = load i32*, i32** %9, align 8
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %4, %41
  store i32 0, i32* %5, align 4
  br label %45

44:                                               ; preds = %4
  store i32 128, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.unpack_trees_options*, i32, i32) #1

declare dso_local i32 @parse_tree(%struct.tree*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i32 @unpack_trees(i32, %struct.tree_desc*, %struct.unpack_trees_options*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

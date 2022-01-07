; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_prime_cache_tree_rec.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_prime_cache_tree_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.cache_tree = type { i32, i32 }
%struct.tree = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.tree_desc = type { i32 }
%struct.name_entry = type { i32, i32, i32 }
%struct.cache_tree_sub = type { %struct.cache_tree* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.cache_tree*, %struct.tree*)* @prime_cache_tree_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prime_cache_tree_rec(%struct.repository* %0, %struct.cache_tree* %1, %struct.tree* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.cache_tree*, align 8
  %6 = alloca %struct.tree*, align 8
  %7 = alloca %struct.tree_desc, align 4
  %8 = alloca %struct.name_entry, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cache_tree_sub*, align 8
  %11 = alloca %struct.tree*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.cache_tree* %1, %struct.cache_tree** %5, align 8
  store %struct.tree* %2, %struct.tree** %6, align 8
  %12 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %13 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %12, i32 0, i32 1
  %14 = load %struct.tree*, %struct.tree** %6, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @oidcpy(i32* %13, i32* %16)
  %18 = load %struct.tree*, %struct.tree** %6, align 8
  %19 = getelementptr inbounds %struct.tree, %struct.tree* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tree*, %struct.tree** %6, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @init_tree_desc(%struct.tree_desc* %7, i32 %20, i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %68, %3
  %26 = call i64 @tree_entry(%struct.tree_desc* %7, %struct.name_entry* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @S_ISDIR(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load %struct.repository*, %struct.repository** %4, align 8
  %38 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 1
  %39 = call %struct.tree* @lookup_tree(%struct.repository* %37, i32* %38)
  store %struct.tree* %39, %struct.tree** %11, align 8
  %40 = load %struct.tree*, %struct.tree** %11, align 8
  %41 = getelementptr inbounds %struct.tree, %struct.tree* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %36
  %46 = load %struct.tree*, %struct.tree** %11, align 8
  %47 = call i32 @parse_tree(%struct.tree* %46)
  br label %48

48:                                               ; preds = %45, %36
  %49 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %50 = getelementptr inbounds %struct.name_entry, %struct.name_entry* %8, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree* %49, i32 %51)
  store %struct.cache_tree_sub* %52, %struct.cache_tree_sub** %10, align 8
  %53 = call %struct.cache_tree* (...) @cache_tree()
  %54 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %55 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %54, i32 0, i32 0
  store %struct.cache_tree* %53, %struct.cache_tree** %55, align 8
  %56 = load %struct.repository*, %struct.repository** %4, align 8
  %57 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %58 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %57, i32 0, i32 0
  %59 = load %struct.cache_tree*, %struct.cache_tree** %58, align 8
  %60 = load %struct.tree*, %struct.tree** %11, align 8
  call void @prime_cache_tree_rec(%struct.repository* %56, %struct.cache_tree* %59, %struct.tree* %60)
  %61 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %10, align 8
  %62 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %61, i32 0, i32 0
  %63 = load %struct.cache_tree*, %struct.cache_tree** %62, align 8
  %64 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %48, %33
  br label %25

69:                                               ; preds = %25
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.cache_tree*, %struct.cache_tree** %5, align 8
  %72 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  ret void
}

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @init_tree_desc(%struct.tree_desc*, i32, i32) #1

declare dso_local i64 @tree_entry(%struct.tree_desc*, %struct.name_entry*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.tree* @lookup_tree(%struct.repository*, i32*) #1

declare dso_local i32 @parse_tree(%struct.tree*) #1

declare dso_local %struct.cache_tree_sub* @cache_tree_sub(%struct.cache_tree*, i32) #1

declare dso_local %struct.cache_tree* @cache_tree(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

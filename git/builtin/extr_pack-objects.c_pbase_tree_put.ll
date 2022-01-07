; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pbase_tree_put.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pbase_tree_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbase_tree_cache = type { %struct.pbase_tree_cache*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pbase_tree_cache*)* @pbase_tree_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pbase_tree_put(%struct.pbase_tree_cache* %0) #0 {
  %2 = alloca %struct.pbase_tree_cache*, align 8
  store %struct.pbase_tree_cache* %0, %struct.pbase_tree_cache** %2, align 8
  %3 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %2, align 8
  %4 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %2, align 8
  %9 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  br label %19

12:                                               ; preds = %1
  %13 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %2, align 8
  %14 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %13, i32 0, i32 0
  %15 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %14, align 8
  %16 = call i32 @free(%struct.pbase_tree_cache* %15)
  %17 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %2, align 8
  %18 = call i32 @free(%struct.pbase_tree_cache* %17)
  br label %19

19:                                               ; preds = %12, %7
  ret void
}

declare dso_local i32 @free(%struct.pbase_tree_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

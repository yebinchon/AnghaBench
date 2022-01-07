; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_read_tree_some.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_read_tree_some.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32 }
%struct.pathspec = type { i32 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@update_some = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*, %struct.pathspec*)* @read_tree_some to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tree_some(%struct.tree* %0, %struct.pathspec* %1) #0 {
  %3 = alloca %struct.tree*, align 8
  %4 = alloca %struct.pathspec*, align 8
  store %struct.tree* %0, %struct.tree** %3, align 8
  store %struct.pathspec* %1, %struct.pathspec** %4, align 8
  %5 = load i32, i32* @the_repository, align 4
  %6 = load %struct.tree*, %struct.tree** %3, align 8
  %7 = load %struct.pathspec*, %struct.pathspec** %4, align 8
  %8 = load i32, i32* @update_some, align 4
  %9 = call i32 @read_tree_recursive(i32 %5, %struct.tree* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, %struct.pathspec* %7, i32 %8, i32* null)
  ret i32 0
}

declare dso_local i32 @read_tree_recursive(i32, %struct.tree*, i8*, i32, i32, %struct.pathspec*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

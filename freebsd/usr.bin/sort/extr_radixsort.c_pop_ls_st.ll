; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_pop_ls_st.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_pop_ls_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.level_stack = type { %struct.level_stack*, %struct.sort_level* }
%struct.sort_level = type { i32 }

@g_ls = common dso_local global %struct.level_stack* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sort_level* ()* @pop_ls_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sort_level* @pop_ls_st() #0 {
  %1 = alloca %struct.sort_level*, align 8
  %2 = alloca %struct.level_stack*, align 8
  %3 = load %struct.level_stack*, %struct.level_stack** @g_ls, align 8
  %4 = icmp ne %struct.level_stack* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %0
  %6 = load %struct.level_stack*, %struct.level_stack** @g_ls, align 8
  %7 = getelementptr inbounds %struct.level_stack, %struct.level_stack* %6, i32 0, i32 1
  %8 = load %struct.sort_level*, %struct.sort_level** %7, align 8
  store %struct.sort_level* %8, %struct.sort_level** %1, align 8
  %9 = load %struct.level_stack*, %struct.level_stack** @g_ls, align 8
  store %struct.level_stack* %9, %struct.level_stack** %2, align 8
  %10 = load %struct.level_stack*, %struct.level_stack** @g_ls, align 8
  %11 = getelementptr inbounds %struct.level_stack, %struct.level_stack* %10, i32 0, i32 0
  %12 = load %struct.level_stack*, %struct.level_stack** %11, align 8
  store %struct.level_stack* %12, %struct.level_stack** @g_ls, align 8
  %13 = load %struct.level_stack*, %struct.level_stack** %2, align 8
  %14 = call i32 @sort_free(%struct.level_stack* %13)
  br label %16

15:                                               ; preds = %0
  store %struct.sort_level* null, %struct.sort_level** %1, align 8
  br label %16

16:                                               ; preds = %15, %5
  %17 = load %struct.sort_level*, %struct.sort_level** %1, align 8
  ret %struct.sort_level* %17
}

declare dso_local i32 @sort_free(%struct.level_stack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

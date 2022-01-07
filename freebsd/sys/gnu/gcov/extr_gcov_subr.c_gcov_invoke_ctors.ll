; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_subr.c_gcov_invoke_ctors.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_subr.c_gcov_invoke_ctors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gcov_invoke_lf_ctors = common dso_local global i32 0, align 4
@gcov_ctors_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gcov_invoke_ctors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcov_invoke_ctors() #0 {
  %1 = call i32 (...) @gcov_fs_init()
  %2 = load i32, i32* @gcov_invoke_lf_ctors, align 4
  %3 = call i32 @linker_file_foreach(i32 %2, i32* null)
  store i32 1, i32* @gcov_ctors_done, align 4
  ret void
}

declare dso_local i32 @gcov_fs_init(...) #1

declare dso_local i32 @linker_file_foreach(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

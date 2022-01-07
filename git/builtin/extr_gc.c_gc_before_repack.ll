; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_gc_before_repack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_gc_before_repack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32* }

@gc_before_repack.done = internal global i32 0, align 4
@pack_refs = common dso_local global i64 0, align 8
@pack_refs_cmd = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@RUN_GIT_CMD = common dso_local global i32 0, align 4
@FAILED_RUN = common dso_local global i32 0, align 4
@prune_reflogs = common dso_local global i64 0, align 8
@reflog = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @gc_before_repack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_before_repack() #0 {
  %1 = load i32, i32* @gc_before_repack.done, align 4
  %2 = add nsw i32 %1, 1
  store i32 %2, i32* @gc_before_repack.done, align 4
  %3 = icmp ne i32 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %33

5:                                                ; preds = %0
  %6 = load i64, i64* @pack_refs, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pack_refs_cmd, i32 0, i32 0), align 8
  %10 = load i32, i32* @RUN_GIT_CMD, align 4
  %11 = call i64 @run_command_v_opt(i32* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = load i32, i32* @FAILED_RUN, align 4
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pack_refs_cmd, i32 0, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @die(i32 %14, i32 %17)
  br label %19

19:                                               ; preds = %13, %8, %5
  %20 = load i64, i64* @prune_reflogs, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reflog, i32 0, i32 0), align 8
  %24 = load i32, i32* @RUN_GIT_CMD, align 4
  %25 = call i64 @run_command_v_opt(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @FAILED_RUN, align 4
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @reflog, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @die(i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %4, %27, %22, %19
  ret void
}

declare dso_local i64 @run_command_v_opt(i32*, i32) #1

declare dso_local i32 @die(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

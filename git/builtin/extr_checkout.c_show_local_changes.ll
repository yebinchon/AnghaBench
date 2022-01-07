; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_show_local_changes.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_show_local_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object = type { i32 }
%struct.diff_options = type { i32 }
%struct.rev_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@the_repository = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object*, %struct.diff_options*)* @show_local_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_local_changes(%struct.object* %0, %struct.diff_options* %1) #0 {
  %3 = alloca %struct.object*, align 8
  %4 = alloca %struct.diff_options*, align 8
  %5 = alloca %struct.rev_info, align 4
  store %struct.object* %0, %struct.object** %3, align 8
  store %struct.diff_options* %1, %struct.diff_options** %4, align 8
  %6 = load i32, i32* @the_repository, align 4
  %7 = call i32 @repo_init_revisions(i32 %6, %struct.rev_info* %5, i32* null)
  %8 = load %struct.diff_options*, %struct.diff_options** %4, align 8
  %9 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %14 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  %18 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %5, i32 0, i32 0
  %19 = call i32 @diff_setup_done(%struct.TYPE_2__* %18)
  %20 = load %struct.object*, %struct.object** %3, align 8
  %21 = call i32 @add_pending_object(%struct.rev_info* %5, %struct.object* %20, i32* null)
  %22 = call i32 @run_diff_index(%struct.rev_info* %5, i32 0)
  ret void
}

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i32*) #1

declare dso_local i32 @diff_setup_done(%struct.TYPE_2__*) #1

declare dso_local i32 @add_pending_object(%struct.rev_info*, %struct.object*, i32*) #1

declare dso_local i32 @run_diff_index(%struct.rev_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

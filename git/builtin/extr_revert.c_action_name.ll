; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_revert.c_action_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_revert.c_action_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.replay_opts = type { i64 }

@REPLAY_REVERT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cherry-pick\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.replay_opts*)* @action_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @action_name(%struct.replay_opts* %0) #0 {
  %2 = alloca %struct.replay_opts*, align 8
  store %struct.replay_opts* %0, %struct.replay_opts** %2, align 8
  %3 = load %struct.replay_opts*, %struct.replay_opts** %2, align 8
  %4 = getelementptr inbounds %struct.replay_opts, %struct.replay_opts* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REPLAY_REVERT, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)
  ret i8* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

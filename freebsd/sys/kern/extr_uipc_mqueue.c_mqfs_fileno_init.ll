; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fileno_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_fileno_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqfs_info = type { %struct.unrhdr* }
%struct.unrhdr = type { i32 }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mqfs_info*)* @mqfs_fileno_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mqfs_fileno_init(%struct.mqfs_info* %0) #0 {
  %2 = alloca %struct.mqfs_info*, align 8
  %3 = alloca %struct.unrhdr*, align 8
  store %struct.mqfs_info* %0, %struct.mqfs_info** %2, align 8
  %4 = load i32, i32* @INT_MAX, align 4
  %5 = call %struct.unrhdr* @new_unrhdr(i32 1, i32 %4, i32* null)
  store %struct.unrhdr* %5, %struct.unrhdr** %3, align 8
  %6 = load %struct.unrhdr*, %struct.unrhdr** %3, align 8
  %7 = load %struct.mqfs_info*, %struct.mqfs_info** %2, align 8
  %8 = getelementptr inbounds %struct.mqfs_info, %struct.mqfs_info* %7, i32 0, i32 0
  store %struct.unrhdr* %6, %struct.unrhdr** %8, align 8
  ret void
}

declare dso_local %struct.unrhdr* @new_unrhdr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

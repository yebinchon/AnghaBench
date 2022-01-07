; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_cancel_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lockf.c_lf_cancel_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lockf = type { i32 }
%struct.lockf_entry = type { i32 }
%struct.lockf_entry_list = type { i32 }

@lf_link = common dso_local global i32 0, align 4
@lf_owner_graph_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lockf*, %struct.lockf_entry*)* @lf_cancel_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lf_cancel_lock(%struct.lockf* %0, %struct.lockf_entry* %1) #0 {
  %3 = alloca %struct.lockf*, align 8
  %4 = alloca %struct.lockf_entry*, align 8
  %5 = alloca %struct.lockf_entry_list, align 4
  store %struct.lockf* %0, %struct.lockf** %3, align 8
  store %struct.lockf_entry* %1, %struct.lockf_entry** %4, align 8
  %6 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %7 = load i32, i32* @lf_link, align 4
  %8 = call i32 @LIST_REMOVE(%struct.lockf_entry* %6, i32 %7)
  %9 = call i32 @sx_xlock(i32* @lf_owner_graph_lock)
  %10 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %11 = call i32 @lf_remove_outgoing(%struct.lockf_entry* %10)
  %12 = call i32 @sx_xunlock(i32* @lf_owner_graph_lock)
  %13 = call i32 @LIST_INIT(%struct.lockf_entry_list* %5)
  %14 = load %struct.lockf*, %struct.lockf** %3, align 8
  %15 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %16 = load i32, i32* @TRUE, align 4
  %17 = call i32 @lf_update_dependancies(%struct.lockf* %14, %struct.lockf_entry* %15, i32 %16, %struct.lockf_entry_list* %5)
  %18 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %19 = call i32 @lf_free_lock(%struct.lockf_entry* %18)
  br label %20

20:                                               ; preds = %24, %2
  %21 = call i32 @LIST_EMPTY(%struct.lockf_entry_list* %5)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = call %struct.lockf_entry* @LIST_FIRST(%struct.lockf_entry_list* %5)
  store %struct.lockf_entry* %25, %struct.lockf_entry** %4, align 8
  %26 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %27 = load i32, i32* @lf_link, align 4
  %28 = call i32 @LIST_REMOVE(%struct.lockf_entry* %26, i32 %27)
  %29 = load %struct.lockf*, %struct.lockf** %3, align 8
  %30 = load %struct.lockf_entry*, %struct.lockf_entry** %4, align 8
  %31 = call i32 @lf_activate_lock(%struct.lockf* %29, %struct.lockf_entry* %30)
  br label %20

32:                                               ; preds = %20
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.lockf_entry*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @lf_remove_outgoing(%struct.lockf_entry*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @LIST_INIT(%struct.lockf_entry_list*) #1

declare dso_local i32 @lf_update_dependancies(%struct.lockf*, %struct.lockf_entry*, i32, %struct.lockf_entry_list*) #1

declare dso_local i32 @lf_free_lock(%struct.lockf_entry*) #1

declare dso_local i32 @LIST_EMPTY(%struct.lockf_entry_list*) #1

declare dso_local %struct.lockf_entry* @LIST_FIRST(%struct.lockf_entry_list*) #1

declare dso_local i32 @lf_activate_lock(%struct.lockf*, %struct.lockf_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

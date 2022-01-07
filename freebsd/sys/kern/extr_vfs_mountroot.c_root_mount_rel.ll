; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_root_mount_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_root_mount_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.root_hold_token = type { i32 }

@root_holds_mtx = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"root mount\00", align 1
@root_holds = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @root_mount_rel(%struct.root_hold_token* %0) #0 {
  %2 = alloca %struct.root_hold_token*, align 8
  store %struct.root_hold_token* %0, %struct.root_hold_token** %2, align 8
  %3 = load %struct.root_hold_token*, %struct.root_hold_token** %2, align 8
  %4 = icmp eq %struct.root_hold_token* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = call i32 @mtx_lock(i32* @root_holds_mtx)
  %8 = load %struct.root_hold_token*, %struct.root_hold_token** %2, align 8
  %9 = load i32, i32* @list, align 4
  %10 = call i32 @LIST_REMOVE(%struct.root_hold_token* %8, i32 %9)
  %11 = call i32 @TSRELEASE(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @wakeup(i32* @root_holds)
  %13 = call i32 @mtx_unlock(i32* @root_holds_mtx)
  %14 = load %struct.root_hold_token*, %struct.root_hold_token** %2, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = call i32 @free(%struct.root_hold_token* %14, i32 %15)
  br label %17

17:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.root_hold_token*, i32) #1

declare dso_local i32 @TSRELEASE(i8*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.root_hold_token*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

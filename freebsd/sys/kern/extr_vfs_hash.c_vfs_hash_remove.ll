; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_hash.c_vfs_hash_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_hash.c_vfs_hash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }

@vfs_hash_lock = common dso_local global i32 0, align 4
@v_hashlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_hash_remove(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %3 = call i32 @rw_wlock(i32* @vfs_hash_lock)
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = load i32, i32* @v_hashlist, align 4
  %6 = call i32 @LIST_REMOVE(%struct.vnode* %4, i32 %5)
  %7 = call i32 @rw_wunlock(i32* @vfs_hash_lock)
  ret void
}

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.vnode*, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

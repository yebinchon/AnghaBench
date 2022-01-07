; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_VP2VNODELOCK.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_VP2VNODELOCK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtx = type { i32 }
%struct.vnode = type { i32 }

@vnodelocks = common dso_local global %struct.mtx* null, align 8
@ncvnodehash = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtx* (%struct.vnode*)* @VP2VNODELOCK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtx* @VP2VNODELOCK(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %3 = load %struct.mtx*, %struct.mtx** @vnodelocks, align 8
  %4 = load %struct.vnode*, %struct.vnode** %2, align 8
  %5 = ptrtoint %struct.vnode* %4 to i64
  %6 = lshr i64 %5, 8
  %7 = load i64, i64* @ncvnodehash, align 8
  %8 = and i64 %6, %7
  %9 = getelementptr inbounds %struct.mtx, %struct.mtx* %3, i64 %8
  ret %struct.mtx* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

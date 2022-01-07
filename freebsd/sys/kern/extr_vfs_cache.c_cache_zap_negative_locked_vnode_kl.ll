; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_negative_locked_vnode_kl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_cache.c_cache_zap_negative_locked_vnode_kl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namecache = type { i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.rwlock = type { i32 }

@NCF_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namecache*, %struct.vnode*)* @cache_zap_negative_locked_vnode_kl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cache_zap_negative_locked_vnode_kl(%struct.namecache* %0, %struct.vnode* %1) #0 {
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.rwlock*, align 8
  store %struct.namecache* %0, %struct.namecache** %3, align 8
  store %struct.vnode* %1, %struct.vnode** %4, align 8
  %6 = load %struct.namecache*, %struct.namecache** %3, align 8
  %7 = getelementptr inbounds %struct.namecache, %struct.namecache* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = icmp eq %struct.vnode* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @MPASS(i32 %11)
  %13 = load %struct.namecache*, %struct.namecache** %3, align 8
  %14 = getelementptr inbounds %struct.namecache, %struct.namecache* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NCF_NEGATIVE, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @cache_assert_vnode_locked(%struct.vnode* %19)
  %21 = load %struct.namecache*, %struct.namecache** %3, align 8
  %22 = call %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache* %21)
  store %struct.rwlock* %22, %struct.rwlock** %5, align 8
  %23 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %24 = call i32 @rw_wlock(%struct.rwlock* %23)
  %25 = load %struct.namecache*, %struct.namecache** %3, align 8
  %26 = call i32 @cache_zap_locked(%struct.namecache* %25, i32 0)
  %27 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %28 = call i32 @rw_wunlock(%struct.rwlock* %27)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @cache_assert_vnode_locked(%struct.vnode*) #1

declare dso_local %struct.rwlock* @NCP2BUCKETLOCK(%struct.namecache*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local i32 @cache_zap_locked(%struct.namecache*, i32) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

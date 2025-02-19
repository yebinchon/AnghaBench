; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shm_timestamp_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"shm timestamps\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@shm_dict_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"shm dictionary\00", align 1
@M_SHMFD = common dso_local global i32 0, align 4
@shm_hash = common dso_local global i32 0, align 4
@shm_dictionary = common dso_local global i32 0, align 4
@shm_ino_unr = common dso_local global i32 0, align 4
@shm_dev_ino = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"shm dev inode not initialized\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @MTX_DEF, align 4
  %4 = call i32 @mtx_init(i32* @shm_timestamp_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null, i32 %3)
  %5 = call i32 @sx_init(i32* @shm_dict_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %6 = load i32, i32* @M_SHMFD, align 4
  %7 = call i32 @hashinit(i32 1024, i32 %6, i32* @shm_hash)
  store i32 %7, i32* @shm_dictionary, align 4
  %8 = call i32 @new_unrhdr64(i32* @shm_ino_unr, i32 1)
  %9 = call i64 (...) @devfs_alloc_cdp_inode()
  store i64 %9, i64* @shm_dev_ino, align 8
  %10 = load i64, i64* @shm_dev_ino, align 8
  %11 = icmp sgt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @new_unrhdr64(i32*, i32) #1

declare dso_local i64 @devfs_alloc_cdp_inode(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

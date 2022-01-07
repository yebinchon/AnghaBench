; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_advlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_advlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i64 }
%struct.flock = type { i32, i32, i64, i8*, i8*, i32 }

@nfsrv_dolocallocks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"nfsvno_advlock: vp locked\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@NFS64BITSSET = common dso_local global i64 0, align 8
@nfsv4_sysid = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i32 0, align 4
@F_POSIX = common dso_local global i32 0, align 4
@F_REMOTE = common dso_local global i32 0, align 4
@F_SETLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_advlock(%struct.vnode* %0, i32 %1, i64 %2, i64 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.flock, align 8
  %13 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.thread* %4, %struct.thread** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* @nfsrv_dolocallocks, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  br label %75

17:                                               ; preds = %5
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = call i32 @ASSERT_VOP_UNLOCKED(%struct.vnode* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @SEEK_SET, align 4
  %21 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 5
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i64, i64* %8, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 4
  store i8* %25, i8** %26, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @NFS64BITSSET, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 3
  store i8* null, i8** %31, align 8
  br label %39

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %33, %34
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %13, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 3
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %32, %30
  %40 = load i64, i64* @nfsv4_sysid, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i64 (...) @nlm_acquire_next_sysid()
  store i64 %43, i64* @nfsv4_sysid, align 8
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i64, i64* @nfsv4_sysid, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds %struct.flock, %struct.flock* %12, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @F_UNLCK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.vnode*, %struct.vnode** %6, align 8
  %54 = load %struct.thread*, %struct.thread** %10, align 8
  %55 = getelementptr inbounds %struct.thread, %struct.thread* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @F_UNLCK, align 4
  %59 = load i32, i32* @F_POSIX, align 4
  %60 = load i32, i32* @F_REMOTE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @VOP_ADVLOCK(%struct.vnode* %53, i32 %57, i32 %58, %struct.flock* %12, i32 %61)
  store i32 %62, i32* %11, align 4
  br label %74

63:                                               ; preds = %44
  %64 = load %struct.vnode*, %struct.vnode** %6, align 8
  %65 = load %struct.thread*, %struct.thread** %10, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @F_SETLK, align 4
  %70 = load i32, i32* @F_POSIX, align 4
  %71 = load i32, i32* @F_REMOTE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @VOP_ADVLOCK(%struct.vnode* %64, i32 %68, i32 %69, %struct.flock* %12, i32 %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %63, %52
  br label %75

75:                                               ; preds = %74, %16
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @NFSEXITCODE(i32 %76)
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @ASSERT_VOP_UNLOCKED(%struct.vnode*, i8*) #1

declare dso_local i64 @nlm_acquire_next_sysid(...) #1

declare dso_local i32 @VOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

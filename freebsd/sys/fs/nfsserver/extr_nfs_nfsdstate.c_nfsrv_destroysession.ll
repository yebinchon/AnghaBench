; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_destroysession.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_destroysession.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i32 }

@NFSX_V4SESSIONID = common dso_local global i32 0, align 4
@ND_HASSEQUENCE = common dso_local global i32 0, align 4
@ND_LASTOP = common dso_local global i32 0, align 4
@NFSERR_BADSESSION = common dso_local global i32 0, align 4
@nfsv4rootfs_lock = common dso_local global i32 0, align 4
@NFSV4ROOTLOCKMUTEXPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_destroysession(%struct.nfsrv_descript* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %11 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NFSX_V4SESSIONID, align 4
  %14 = call i32 @NFSBCMP(i32* %9, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %2
  %17 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %18 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ND_HASSEQUENCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  store i32 1, i32* %8, align 4
  %24 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %25 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ND_LASTOP, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %31, i32* %3, align 4
  br label %63

32:                                               ; preds = %23
  br label %33

33:                                               ; preds = %32, %16, %2
  %34 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %35 = call i32 @nfsv4_relref(i32* @nfsv4rootfs_lock)
  br label %36

36:                                               ; preds = %39, %33
  %37 = load i32, i32* @NFSV4ROOTLOCKMUTEXPTR, align 4
  %38 = call i32 @nfsv4_lock(i32* @nfsv4rootfs_lock, i32 1, i32* null, i32 %37, i32* null)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %36, label %42

42:                                               ; preds = %39
  %43 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @nfsrv_freesession(i32* null, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* @ND_HASSEQUENCE, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %55 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %51, %48, %42
  %59 = call i32 (...) @NFSLOCKV4ROOTMUTEX()
  %60 = call i32 @nfsv4_unlock(i32* @nfsv4rootfs_lock, i32 1)
  %61 = call i32 (...) @NFSUNLOCKV4ROOTMUTEX()
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %30
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @NFSBCMP(i32*, i32, i32) #1

declare dso_local i32 @NFSLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsv4_relref(i32*) #1

declare dso_local i32 @nfsv4_lock(i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @NFSUNLOCKV4ROOTMUTEX(...) #1

declare dso_local i32 @nfsrv_freesession(i32*, i32*) #1

declare dso_local i32 @nfsv4_unlock(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfsiod_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfsiod_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"vfs.nfs.iodmin\00", align 1
@nfs_iodmin = common dso_local global i64 0, align 8
@NFS_MAXASYNCDAEMON = common dso_local global i64 0, align 8
@ncl_numasync = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"nfsiod_setup: nfs_nfsiodnew failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nfsiod_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsiod_setup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* @nfs_iodmin)
  %5 = call i32 (...) @nfscl_init()
  %6 = call i32 (...) @NFSLOCKIOD()
  %7 = load i64, i64* @nfs_iodmin, align 8
  %8 = load i64, i64* @NFS_MAXASYNCDAEMON, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @NFS_MAXASYNCDAEMON, align 8
  store i64 %11, i64* @nfs_iodmin, align 8
  br label %12

12:                                               ; preds = %10, %1
  br label %13

13:                                               ; preds = %23, %12
  %14 = load i64, i64* @ncl_numasync, align 8
  %15 = load i64, i64* @nfs_iodmin, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = call i32 (...) @nfs_nfsiodnew_sync()
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  br label %13

24:                                               ; preds = %13
  %25 = call i32 (...) @NFSUNLOCKIOD()
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i64*) #1

declare dso_local i32 @nfscl_init(...) #1

declare dso_local i32 @NFSLOCKIOD(...) #1

declare dso_local i32 @nfs_nfsiodnew_sync(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @NFSUNLOCKIOD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

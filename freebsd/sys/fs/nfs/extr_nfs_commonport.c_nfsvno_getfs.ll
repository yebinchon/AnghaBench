; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfsvno_getfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfsvno_getfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsfsinfo = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i64 }

@NFS_MAXDGRAMDATA = common dso_local global i32 0, align 4
@NFS_SRVMAXIO = common dso_local global i8* null, align 8
@NFS_FABLKSIZE = common dso_local global i8* null, align 8
@NFSV3FSINFO_LINK = common dso_local global i32 0, align 4
@NFSV3FSINFO_SYMLINK = common dso_local global i32 0, align 4
@NFSV3FSINFO_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFSV3FSINFO_CANSETTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfsvno_getfs(%struct.nfsfsinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsfsinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfsfsinfo* %0, %struct.nfsfsinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @NFS_MAXDGRAMDATA, align 4
  store i32 %9, i32* %5, align 4
  br label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** @NFS_SRVMAXIO, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %8
  %14 = load i8*, i8** @NFS_SRVMAXIO, align 8
  %15 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %16 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %19 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %21 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %22 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %21, i32 0, i32 8
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** @NFS_SRVMAXIO, align 8
  %24 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %25 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %24, i32 0, i32 7
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %28 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** @NFS_FABLKSIZE, align 8
  %30 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %31 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %34 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %36 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %35, i32 0, i32 3
  store i32 -1, i32* %36, align 4
  %37 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %38 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %41 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @NFSV3FSINFO_LINK, align 4
  %44 = load i32, i32* @NFSV3FSINFO_SYMLINK, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @NFSV3FSINFO_HOMOGENEOUS, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NFSV3FSINFO_CANSETTIME, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.nfsfsinfo*, %struct.nfsfsinfo** %3, align 8
  %51 = getelementptr inbounds %struct.nfsfsinfo, %struct.nfsfsinfo* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

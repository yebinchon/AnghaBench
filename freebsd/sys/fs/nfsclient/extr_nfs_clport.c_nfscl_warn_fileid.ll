; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_warn_fileid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_warn_fileid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i8* }
%struct.nfsvattr = type { i64 }

@ncl_fileid_maxwarnings = common dso_local global i64 0, align 8
@ncl_fileid_nwarnings = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [124 x i8] c"newnfs: server '%s' error: fileid changed. fsid %jx:%jx: expected fileid %#jx, got %#jx. (BROKEN NFS SERVER OR MIDDLEWARE)\0A\00", align 1
@.str.1 = private unnamed_addr constant [114 x i8] c"newnfs: Logged %d times about fileid corruption; going quiet to avoid spamming logs excessively. (Limit is: %d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsmount*, %struct.nfsvattr*, %struct.nfsvattr*)* @nfscl_warn_fileid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_warn_fileid(%struct.nfsmount* %0, %struct.nfsvattr* %1, %struct.nfsvattr* %2) #0 {
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca %struct.nfsvattr*, align 8
  %6 = alloca %struct.nfsvattr*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %5, align 8
  store %struct.nfsvattr* %2, %struct.nfsvattr** %6, align 8
  %8 = load i64, i64* @ncl_fileid_maxwarnings, align 8
  %9 = icmp sge i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i64, i64* @ncl_fileid_nwarnings, align 8
  %12 = load i64, i64* @ncl_fileid_maxwarnings, align 8
  %13 = icmp sge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %59

15:                                               ; preds = %10, %3
  store i32 0, i32* %7, align 4
  %16 = load i64, i64* @ncl_fileid_maxwarnings, align 8
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* @ncl_fileid_nwarnings, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @ncl_fileid_nwarnings, align 8
  %21 = load i64, i64* @ncl_fileid_maxwarnings, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %24

24:                                               ; preds = %23, %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %27 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %39 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.nfsvattr*, %struct.nfsvattr** %5, align 8
  %45 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.nfsvattr*, %struct.nfsvattr** %6, align 8
  %49 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %37, i32 %43, i32 %47, i32 %51)
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %25
  %56 = load i64, i64* @ncl_fileid_nwarnings, align 8
  %57 = load i64, i64* @ncl_fileid_maxwarnings, align 8
  %58 = call i32 (i8*, i64, i64, ...) @printf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57)
  br label %59

59:                                               ; preds = %14, %55, %25
  ret void
}

declare dso_local i32 @printf(i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfs_nfsiodnew_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clnfsiod.c_nfs_nfsiodnew_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ncl_iodmax = common dso_local global i32 0, align 4
@nfs_asyncdaemon = common dso_local global i32* null, align 8
@nfssvc_iod = common dso_local global i32 0, align 4
@RFHIGHPID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"newnfs %d\00", align 1
@ncl_numasync = common dso_local global i32 0, align 4
@NFSIOD_AVAILABLE = common dso_local global i32 0, align 4
@ncl_iodwant = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nfs_nfsiodnew_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_nfsiodnew_sync() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @NFSASSERTIOD()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ncl_iodmax, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = load i32*, i32** @nfs_asyncdaemon, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %9
  %17 = load i32*, i32** @nfs_asyncdaemon, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 1, i32* %20, align 4
  br label %25

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %16, %5
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ncl_iodmax, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %1, align 4
  br label %58

30:                                               ; preds = %25
  %31 = call i32 (...) @NFSUNLOCKIOD()
  %32 = load i32, i32* @nfssvc_iod, align 4
  %33 = load i32*, i32** @nfs_asyncdaemon, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* @RFHIGHPID, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @kproc_create(i32 %32, i32* %36, i32* null, i32 %37, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %2, align 4
  %40 = call i32 (...) @NFSLOCKIOD()
  %41 = load i32, i32* %2, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %30
  %44 = load i32, i32* @ncl_numasync, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* @ncl_numasync, align 4
  %46 = load i32, i32* @NFSIOD_AVAILABLE, align 4
  %47 = load i32*, i32** @ncl_iodwant, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 %46, i32* %50, align 4
  br label %56

51:                                               ; preds = %30
  %52 = load i32*, i32** @nfs_asyncdaemon, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %43
  %57 = load i32, i32* %2, align 4
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %56, %29
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @NFSASSERTIOD(...) #1

declare dso_local i32 @NFSUNLOCKIOD(...) #1

declare dso_local i32 @kproc_create(i32, i32*, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @NFSLOCKIOD(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

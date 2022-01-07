; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_modevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_modevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nfscl_modevent.loaded = internal global i32 0, align 4
@ncl_iod_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ncl_iod_mutex\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ncl_invalcaches = common dso_local global i32* null, align 8
@ncl_call_invalcaches = common dso_local global i32* null, align 8
@nfssvc_nfscl = common dso_local global i32* null, align 8
@nfsd_call_nfscl = common dso_local global i32* null, align 8
@nfs_numnfscbd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ncl_pbuf_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @nfscl_modevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_modevent(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %30 [
    i32 129, label %10
    i32 128, label %24
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @nfscl_modevent.loaded, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %34

14:                                               ; preds = %10
  %15 = call i32 (...) @newnfs_portinit()
  %16 = load i32, i32* @MTX_DEF, align 4
  %17 = call i32 @mtx_init(i32* @ncl_iod_mutex, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* null, i32 %16)
  %18 = call i32 (...) @nfscl_init()
  %19 = call i32 (...) @NFSD_LOCK()
  %20 = call i32 @nfsrvd_cbinit(i32 0)
  %21 = call i32 (...) @NFSD_UNLOCK()
  %22 = load i32*, i32** @ncl_invalcaches, align 8
  store i32* %22, i32** @ncl_call_invalcaches, align 8
  %23 = load i32*, i32** @nfssvc_nfscl, align 8
  store i32* %23, i32** @nfsd_call_nfscl, align 8
  store i32 1, i32* @nfscl_modevent.loaded, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load i32, i32* @nfs_numnfscbd, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EBUSY, align 4
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %3, %29
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %27, %14
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %13
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @newnfs_portinit(...) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @nfscl_init(...) #1

declare dso_local i32 @NFSD_LOCK(...) #1

declare dso_local i32 @nfsrvd_cbinit(i32) #1

declare dso_local i32 @NFSD_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

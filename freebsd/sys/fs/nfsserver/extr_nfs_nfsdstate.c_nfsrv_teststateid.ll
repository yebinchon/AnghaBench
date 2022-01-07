; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_teststateid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_teststateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nfsclient = type { i32 }
%struct.nfsstate = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CLOPS_RENEW = common dso_local global i32 0, align 4
@NFSERR_OLDSTATEID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsrv_teststateid(%struct.nfsrv_descript* %0, %struct.TYPE_6__* %1, i32* %2) #0 {
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nfsclient*, align 8
  %8 = alloca %struct.nfsstate*, align 8
  %9 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = call i32 (...) @NFSLOCKSTATE()
  %11 = load i32, i32* @CLOPS_RENEW, align 4
  %12 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @nfsrv_getclient(i32 0, i32 %11, %struct.nfsclient** %7, i32* null, i32 0, i32 0, %struct.nfsrv_descript* %12, i32* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.nfsclient*, %struct.nfsclient** %7, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = call i32 @nfsrv_getstate(%struct.nfsclient* %18, %struct.TYPE_6__* %19, i32 0, %struct.nfsstate** %8)
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.nfsstate*, %struct.nfsstate** %8, align 8
  %34 = getelementptr inbounds %struct.nfsstate, %struct.nfsstate* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @SEQ_LT(i64 %32, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @NFSERR_OLDSTATEID, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %29, %24, %21
  %42 = call i32 (...) @NFSUNLOCKSTATE()
  %43 = load i32, i32* %9, align 4
  ret i32 %43
}

declare dso_local i32 @NFSLOCKSTATE(...) #1

declare dso_local i32 @nfsrv_getclient(i32, i32, %struct.nfsclient**, i32*, i32, i32, %struct.nfsrv_descript*, i32*) #1

declare dso_local i32 @nfsrv_getstate(%struct.nfsclient*, %struct.TYPE_6__*, i32, %struct.nfsstate**) #1

declare dso_local i64 @SEQ_LT(i64, i32) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

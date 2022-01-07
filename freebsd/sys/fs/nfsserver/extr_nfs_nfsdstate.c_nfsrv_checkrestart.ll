; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkrestart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_checkrestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64* }
%struct.TYPE_6__ = type { i64* }

@NFSLCK_OPEN = common dso_local global i32 0, align 4
@NFSLCK_TEST = common dso_local global i32 0, align 4
@NFSLCK_RELEASE = common dso_local global i32 0, align 4
@NFSLCK_DELEGPURGE = common dso_local global i32 0, align 4
@nfsrvboottime = common dso_local global i64 0, align 8
@NFSERR_STALECLIENTID = common dso_local global i32 0, align 4
@NFSERR_STALESTATEID = common dso_local global i32 0, align 4
@NFSLCK_CHECK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, %struct.TYPE_5__*, i32)* @nfsrv_checkrestart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_checkrestart(i64* %0, i32 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64* %0, i64** %10, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @NFSLCK_OPEN, align 4
  %13 = load i32, i32* @NFSLCK_TEST, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @NFSLCK_RELEASE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @NFSLCK_DELEGPURGE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %11, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @nfsrvboottime, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @NFSERR_STALECLIENTID, align 4
  store i32 %29, i32* %9, align 4
  br label %58

30:                                               ; preds = %21
  br label %45

31:                                               ; preds = %4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @nfsrvboottime, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @NFSERR_STALESTATEID, align 4
  store i32 %43, i32* %9, align 4
  br label %58

44:                                               ; preds = %39, %31
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @NFSLCK_CHECK, align 4
  %48 = load i32, i32* @NFSLCK_TEST, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %58

53:                                               ; preds = %45
  %54 = call i32 (...) @NFSLOCKSTATE()
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @nfsrv_checkgrace(i32* null, i32* null, i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = call i32 (...) @NFSUNLOCKSTATE()
  br label %58

58:                                               ; preds = %53, %52, %42, %28
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @NFSEXITCODE(i32 %59)
  %61 = load i32, i32* %9, align 4
  ret i32 %61
}

declare dso_local i32 @NFSLOCKSTATE(...) #1

declare dso_local i32 @nfsrv_checkgrace(i32*, i32*, i32) #1

declare dso_local i32 @NFSUNLOCKSTATE(...) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

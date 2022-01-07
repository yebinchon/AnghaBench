; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsrv_removeuser.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsrv_removeuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsusrgrp = type { i32*, i32, i32, i32, i32 }
%struct.nfsrv_lughash = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@lug_numhash = common dso_local global i32 0, align 4
@lug_namehash = common dso_local global i32 0, align 4
@nfsrv_usercnt = common dso_local global i32 0, align 4
@M_NFSUSERGROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsusrgrp*, i32)* @nfsrv_removeuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfsrv_removeuser(%struct.nfsusrgrp* %0, i32 %1) #0 {
  %3 = alloca %struct.nfsusrgrp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsrv_lughash*, align 8
  store %struct.nfsusrgrp* %0, %struct.nfsusrgrp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %10 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.nfsrv_lughash* @NFSUSERHASH(i32 %11)
  store %struct.nfsrv_lughash* %12, %struct.nfsrv_lughash** %5, align 8
  %13 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %14 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %13, i32 0, i32 1
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @mtx_assert(i32* %14, i32 %15)
  %17 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %18 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %17, i32 0, i32 0
  %19 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %20 = load i32, i32* @lug_numhash, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.nfsusrgrp* %19, i32 %20)
  %22 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %23 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %26 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.nfsrv_lughash* @NFSUSERNAMEHASH(i32 %24, i32 %27)
  store %struct.nfsrv_lughash* %28, %struct.nfsrv_lughash** %5, align 8
  %29 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %30 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %29, i32 0, i32 1
  %31 = load i32, i32* @MA_OWNED, align 4
  %32 = call i32 @mtx_assert(i32* %30, i32 %31)
  %33 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %34 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %33, i32 0, i32 0
  %35 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %36 = load i32, i32* @lug_namehash, align 4
  %37 = call i32 @TAILQ_REMOVE(i32* %34, %struct.nfsusrgrp* %35, i32 %36)
  br label %68

38:                                               ; preds = %2
  %39 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %40 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.nfsrv_lughash* @NFSGROUPHASH(i32 %41)
  store %struct.nfsrv_lughash* %42, %struct.nfsrv_lughash** %5, align 8
  %43 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %44 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %43, i32 0, i32 1
  %45 = load i32, i32* @MA_OWNED, align 4
  %46 = call i32 @mtx_assert(i32* %44, i32 %45)
  %47 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %48 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %47, i32 0, i32 0
  %49 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %50 = load i32, i32* @lug_numhash, align 4
  %51 = call i32 @TAILQ_REMOVE(i32* %48, %struct.nfsusrgrp* %49, i32 %50)
  %52 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %53 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %56 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.nfsrv_lughash* @NFSGROUPNAMEHASH(i32 %54, i32 %57)
  store %struct.nfsrv_lughash* %58, %struct.nfsrv_lughash** %5, align 8
  %59 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %60 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %59, i32 0, i32 1
  %61 = load i32, i32* @MA_OWNED, align 4
  %62 = call i32 @mtx_assert(i32* %60, i32 %61)
  %63 = load %struct.nfsrv_lughash*, %struct.nfsrv_lughash** %5, align 8
  %64 = getelementptr inbounds %struct.nfsrv_lughash, %struct.nfsrv_lughash* %63, i32 0, i32 0
  %65 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %66 = load i32, i32* @lug_namehash, align 4
  %67 = call i32 @TAILQ_REMOVE(i32* %64, %struct.nfsusrgrp* %65, i32 %66)
  br label %68

68:                                               ; preds = %38, %8
  %69 = call i32 @atomic_add_int(i32* @nfsrv_usercnt, i32 -1)
  %70 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %71 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %76 = getelementptr inbounds %struct.nfsusrgrp, %struct.nfsusrgrp* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @crfree(i32* %77)
  br label %79

79:                                               ; preds = %74, %68
  %80 = load %struct.nfsusrgrp*, %struct.nfsusrgrp** %3, align 8
  %81 = load i32, i32* @M_NFSUSERGROUP, align 4
  %82 = call i32 @free(%struct.nfsusrgrp* %80, i32 %81)
  ret void
}

declare dso_local %struct.nfsrv_lughash* @NFSUSERHASH(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfsusrgrp*, i32) #1

declare dso_local %struct.nfsrv_lughash* @NFSUSERNAMEHASH(i32, i32) #1

declare dso_local %struct.nfsrv_lughash* @NFSGROUPHASH(i32) #1

declare dso_local %struct.nfsrv_lughash* @NFSGROUPNAMEHASH(i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @crfree(i32*) #1

declare dso_local i32 @free(%struct.nfsusrgrp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

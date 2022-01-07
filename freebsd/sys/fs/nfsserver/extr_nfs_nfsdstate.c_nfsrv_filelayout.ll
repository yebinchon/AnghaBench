; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_filelayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_filelayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfslayout = type { i64, i64, i32, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nfsrv_descript = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NFSX_V4FILELAYOUT = common dso_local global i64 0, align 8
@M_NFSDSTATE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NFSLAYOUT_NFSV4_1_FILES = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_RW = common dso_local global i32 0, align 4
@NFSLAY_RW = common dso_local global i32 0, align 4
@NFSLAY_READ = common dso_local global i32 0, align 4
@NFSX_V4DEVICEID = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFSFLAYUTIL_STRIPE_MASK = common dso_local global i32 0, align 4
@NFSX_V4PNFSFH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nfslayout* (%struct.nfsrv_descript*, i32, i8*, i8*, i8*, i32)* @nfsrv_filelayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nfslayout* @nfsrv_filelayout(%struct.nfsrv_descript* %0, i32 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.nfsrv_descript*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.nfslayout*, align 8
  %15 = alloca i64, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i64, i64* @NFSX_V4FILELAYOUT, align 8
  %17 = add i64 40, %16
  %18 = load i32, i32* @M_NFSDSTATE, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call %struct.nfslayout* @malloc(i64 %17, i32 %18, i32 %21)
  store %struct.nfslayout* %22, %struct.nfslayout** %14, align 8
  %23 = load i32, i32* @NFSLAYOUT_NFSV4_1_FILES, align 4
  %24 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %25 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @NFSLAYOUTIOMODE_RW, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %6
  %30 = load i32, i32* @NFSLAY_RW, align 4
  %31 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %32 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  br label %37

33:                                               ; preds = %6
  %34 = load i32, i32* @NFSLAY_READ, align 4
  %35 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %36 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %40 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %39, i32 0, i32 4
  %41 = call i32 @NFSBCOPY(i8* %38, i32* %40, i32 1)
  %42 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %7, align 8
  %43 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %47 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %51 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %53 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %13, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32, i32* @NFSX_V4DEVICEID, align 4
  %59 = call i32 @NFSBCOPY(i8* %56, i32* %57, i32 %58)
  %60 = load i32, i32* @NFSX_V4DEVICEID, align 4
  %61 = load i32, i32* @NFSX_UNSIGNED, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** %13, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %13, align 8
  %66 = load i32, i32* @NFSFLAYUTIL_STRIPE_MASK, align 4
  %67 = and i32 %66, -65536
  %68 = call i8* @txdr_unsigned(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %13, align 8
  store i32 %69, i32* %70, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %13, align 8
  store i32 0, i32* %72, align 4
  store i64 0, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = call i32 @txdr_hyper(i64 %74, i32* %75)
  %77 = load i32*, i32** %13, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32* %78, i32** %13, align 8
  %79 = call i8* @txdr_unsigned(i32 1)
  %80 = ptrtoint i8* %79 to i32
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i32 1
  store i32* %82, i32** %13, align 8
  store i32 %80, i32* %81, align 4
  %83 = load i32, i32* @NFSX_V4PNFSFH, align 4
  %84 = call i8* @txdr_unsigned(i32 %83)
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** %13, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %13, align 8
  store i32 %85, i32* %86, align 4
  %88 = load i8*, i8** %10, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @NFSBCOPY(i8* %88, i32* %89, i32 1)
  %91 = load i64, i64* @NFSX_V4FILELAYOUT, align 8
  %92 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  %93 = getelementptr inbounds %struct.nfslayout, %struct.nfslayout* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.nfslayout*, %struct.nfslayout** %14, align 8
  ret %struct.nfslayout* %94
}

declare dso_local %struct.nfslayout* @malloc(i64, i32, i32) #1

declare dso_local i32 @NFSBCOPY(i8*, i32*, i32) #1

declare dso_local i8* @txdr_unsigned(i32) #1

declare dso_local i32 @txdr_hyper(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

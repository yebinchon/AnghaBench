; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_createdsfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdstate.c_nfsrv_createdsfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnfsdsfile = type { i32 }
%struct.nfsdevice = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i32, i32, i64, i32, i32 }

@VREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nfsrv_dscreatefile: dvp=%p pf=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, %struct.pnfsdsfile*, i32, %struct.nfsdevice*, %struct.ucred*, i32*, i32*)* @nfsrv_createdsfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsrv_createdsfile(i32 %0, i32* %1, %struct.pnfsdsfile* %2, i32 %3, %struct.nfsdevice* %4, %struct.ucred* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pnfsdsfile*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfsdevice*, align 8
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.vattr, align 8
  %18 = alloca %struct.vattr, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store %struct.pnfsdsfile* %2, %struct.pnfsdsfile** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.nfsdevice* %4, %struct.nfsdevice** %13, align 8
  store %struct.ucred* %5, %struct.ucred** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.ucred*, %struct.ucred** %14, align 8
  %22 = call i32 @VOP_GETATTR(i32 %20, %struct.vattr* %17, %struct.ucred* %21)
  store i32 %22, i32* %19, align 4
  %23 = load i32, i32* %19, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %8
  %26 = call i32 @VATTR_NULL(%struct.vattr* %18)
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 4
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 3
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = call i32 @VATTR_NULL(%struct.vattr* %17)
  %38 = load i32, i32* @VREG, align 4
  %39 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.vattr, %struct.vattr* %17, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %11, align 8
  %45 = call i32 @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %43, %struct.pnfsdsfile* %44)
  %46 = load i32, i32* %12, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %11, align 8
  %49 = load %struct.pnfsdsfile*, %struct.pnfsdsfile** %11, align 8
  %50 = getelementptr inbounds %struct.pnfsdsfile, %struct.pnfsdsfile* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ucred*, %struct.ucred** %14, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32*, i32** %16, align 8
  %55 = call i32 @nfsrv_dscreate(i32 %46, %struct.vattr* %17, %struct.vattr* %18, i32* %47, %struct.pnfsdsfile* %48, i32* null, i32 %51, %struct.ucred* %52, i32* %53, i32* %54)
  store i32 %55, i32* %19, align 4
  br label %56

56:                                               ; preds = %25, %8
  %57 = load i32, i32* %19, align 4
  ret i32 %57
}

declare dso_local i32 @VOP_GETATTR(i32, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, i32, %struct.pnfsdsfile*) #1

declare dso_local i32 @nfsrv_dscreate(i32, %struct.vattr*, %struct.vattr*, i32*, %struct.pnfsdsfile*, i32*, i32, %struct.ucred*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

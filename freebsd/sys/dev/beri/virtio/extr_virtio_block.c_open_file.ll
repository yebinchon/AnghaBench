; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_open_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.thread = type { i32 }
%struct.nameidata = type { %struct.TYPE_7__* }
%struct.vattr = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@VV_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.beri_vtblk_softc*, %struct.thread*)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file(%struct.beri_vtblk_softc* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.beri_vtblk_softc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.nameidata, align 8
  %7 = alloca %struct.vattr, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.beri_vtblk_softc* %0, %struct.beri_vtblk_softc** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %10 = load i32, i32* @FREAD, align 4
  %11 = load i32, i32* @FWRITE, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @LOOKUP, align 4
  %14 = load i32, i32* @FOLLOW, align 4
  %15 = load i32, i32* @UIO_SYSSPACE, align 4
  %16 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %17 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = call i32 @NDINIT(%struct.nameidata* %6, i32 %13, i32 %14, i32 %15, i32 %20, %struct.thread* %21)
  %23 = call i32 @vn_open(%struct.nameidata* %6, i32* %9, i32 0, i32* null)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %92

28:                                               ; preds = %2
  %29 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %30 = call i32 @NDFREE(%struct.nameidata* %6, i32 %29)
  %31 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VREG, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %3, align 4
  br label %92

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load %struct.thread*, %struct.thread** %5, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @VOP_GETATTR(%struct.TYPE_7__* %41, %struct.vattr* %7, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %92

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = call i64 @VOP_ISLOCKED(%struct.TYPE_7__* %52)
  %54 = load i64, i64* @LK_EXCLUSIVE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load i32, i32* @LK_UPGRADE, align 4
  %60 = load i32, i32* @LK_RETRY, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @vn_lock(%struct.TYPE_7__* %58, i32 %61)
  %63 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VI_DOOMED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %92

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %50
  %73 = load i32, i32* @VV_MD, align 4
  %74 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = call i32 @VOP_UNLOCK(%struct.TYPE_7__* %80, i32 0)
  %82 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %6, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %85 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %84, i32 0, i32 1
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %85, align 8
  %86 = load %struct.thread*, %struct.thread** %5, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @crhold(i32 %88)
  %90 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %4, align 8
  %91 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %72, %70, %48, %37, %26
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, i32*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @VOP_GETATTR(%struct.TYPE_7__*, %struct.vattr*, i32) #1

declare dso_local i64 @VOP_ISLOCKED(%struct.TYPE_7__*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @crhold(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

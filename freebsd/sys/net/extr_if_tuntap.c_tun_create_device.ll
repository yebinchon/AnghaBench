; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_create_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_tuntap.c_tun_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuntap_driver = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.cdev = type { i32* }
%struct.make_dev_args = type { i32, i32, %struct.tuntap_softc*, i32, i32, %struct.ucred*, i32*, i32 }
%struct.tuntap_softc = type { i32, %struct.TYPE_2__, %struct.cdev*, %struct.tuntap_driver*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@M_TUN = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tun_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"tun_condvar\00", align 1
@MAKEDEV_REF = common dso_local global i32 0, align 4
@UID_UUCP = common dso_local global i32 0, align 4
@GID_DIALER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to set si_drv1 at %s creation\00", align 1
@tunmtx = common dso_local global i32 0, align 4
@tunhead = common dso_local global i32 0, align 4
@tun_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuntap_driver*, i32, %struct.ucred*, %struct.cdev**, i8*)* @tun_create_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_create_device(%struct.tuntap_driver* %0, i32 %1, %struct.ucred* %2, %struct.cdev** %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tuntap_driver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca %struct.cdev**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.make_dev_args, align 8
  %13 = alloca %struct.tuntap_softc*, align 8
  %14 = alloca i32, align 4
  store %struct.tuntap_driver* %0, %struct.tuntap_driver** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ucred* %2, %struct.ucred** %9, align 8
  store %struct.cdev** %3, %struct.cdev*** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* @M_TUN, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = load i32, i32* @M_ZERO, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.tuntap_softc* @malloc(i32 32, i32 %15, i32 %18)
  store %struct.tuntap_softc* %19, %struct.tuntap_softc** %13, align 8
  %20 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %21 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @MTX_DEF, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  %24 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %25 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %24, i32 0, i32 5
  %26 = call i32 @cv_init(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.tuntap_driver*, %struct.tuntap_driver** %7, align 8
  %28 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %31 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.tuntap_driver*, %struct.tuntap_driver** %7, align 8
  %33 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %34 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %33, i32 0, i32 3
  store %struct.tuntap_driver* %32, %struct.tuntap_driver** %34, align 8
  %35 = call i32 @make_dev_args_init(%struct.make_dev_args* %12)
  %36 = load %struct.ucred*, %struct.ucred** %9, align 8
  %37 = icmp ne %struct.ucred* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @MAKEDEV_REF, align 4
  %40 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 7
  store i32 %39, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %5
  %42 = load %struct.tuntap_driver*, %struct.tuntap_driver** %7, align 8
  %43 = getelementptr inbounds %struct.tuntap_driver, %struct.tuntap_driver* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 6
  store i32* %43, i32** %44, align 8
  %45 = load %struct.ucred*, %struct.ucred** %9, align 8
  %46 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 5
  store %struct.ucred* %45, %struct.ucred** %46, align 8
  %47 = load i32, i32* @UID_UUCP, align 4
  %48 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @GID_DIALER, align 4
  %50 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 0
  store i32 384, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %55 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %12, i32 0, i32 2
  store %struct.tuntap_softc* %54, %struct.tuntap_softc** %55, align 8
  %56 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = call i32 @make_dev_s(%struct.make_dev_args* %12, %struct.cdev** %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %41
  %62 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %63 = load i32, i32* @M_TUN, align 4
  %64 = call i32 @free(%struct.tuntap_softc* %62, i32 %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %6, align 4
  br label %90

66:                                               ; preds = %41
  %67 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %68 = load %struct.cdev*, %struct.cdev** %67, align 8
  %69 = getelementptr inbounds %struct.cdev, %struct.cdev* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  %72 = zext i1 %71 to i32
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @KASSERT(i32 %72, i8* %73)
  %75 = load %struct.cdev**, %struct.cdev*** %10, align 8
  %76 = load %struct.cdev*, %struct.cdev** %75, align 8
  %77 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %78 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %77, i32 0, i32 2
  store %struct.cdev* %76, %struct.cdev** %78, align 8
  %79 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %80 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %83 = getelementptr inbounds %struct.tuntap_softc, %struct.tuntap_softc* %82, i32 0, i32 0
  %84 = call i32 @knlist_init_mtx(i32* %81, i32* %83)
  %85 = call i32 @mtx_lock(i32* @tunmtx)
  %86 = load %struct.tuntap_softc*, %struct.tuntap_softc** %13, align 8
  %87 = load i32, i32* @tun_list, align 4
  %88 = call i32 @TAILQ_INSERT_TAIL(i32* @tunhead, %struct.tuntap_softc* %86, i32 %87)
  %89 = call i32 @mtx_unlock(i32* @tunmtx)
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %66, %61
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local %struct.tuntap_softc* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, %struct.cdev**, i8*, i8*) #1

declare dso_local i32 @free(%struct.tuntap_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @knlist_init_mtx(i32*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.tuntap_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_superio_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.siosc* }
%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"superio\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@SUPERIO_DEV_NONE = common dso_local global i64 0, align 8
@superio_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"superio%d\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create character device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @superio_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @superio_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siosc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.siosc* @device_get_softc(i32 %5)
  store %struct.siosc* %6, %struct.siosc** %3, align 8
  %7 = load %struct.siosc*, %struct.siosc** %3, align 8
  %8 = getelementptr inbounds %struct.siosc, %struct.siosc* %7, i32 0, i32 3
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @device_get_nameunit(i32 %9)
  %11 = load i32, i32* @MTX_DEF, align 4
  %12 = call i32 @mtx_init(i32* %8, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.siosc*, %struct.siosc** %3, align 8
  %14 = getelementptr inbounds %struct.siosc, %struct.siosc* %13, i32 0, i32 2
  %15 = call i32 @STAILQ_INIT(i32* %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %46, %1
  %17 = load %struct.siosc*, %struct.siosc** %3, align 8
  %18 = getelementptr inbounds %struct.siosc, %struct.siosc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SUPERIO_DEV_NONE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %16
  %28 = load i32, i32* %2, align 4
  %29 = load %struct.siosc*, %struct.siosc** %3, align 8
  %30 = getelementptr inbounds %struct.siosc, %struct.siosc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.siosc*, %struct.siosc** %3, align 8
  %38 = getelementptr inbounds %struct.siosc, %struct.siosc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @superio_add_known_child(i32 %28, i64 %36, i32 %44)
  br label %46

46:                                               ; preds = %27
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %16

49:                                               ; preds = %16
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @bus_generic_probe(i32 %50)
  %52 = load i32, i32* %2, align 4
  %53 = call i32 @bus_generic_attach(i32 %52)
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @device_get_unit(i32 %54)
  %56 = load i32, i32* @UID_ROOT, align 4
  %57 = load i32, i32* @GID_WHEEL, align 4
  %58 = load i32, i32* %2, align 4
  %59 = call i32 @device_get_unit(i32 %58)
  %60 = call %struct.TYPE_4__* @make_dev(i32* @superio_cdevsw, i32 %55, i32 %56, i32 %57, i32 384, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.siosc*, %struct.siosc** %3, align 8
  %62 = getelementptr inbounds %struct.siosc, %struct.siosc* %61, i32 0, i32 0
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.siosc*, %struct.siosc** %3, align 8
  %64 = getelementptr inbounds %struct.siosc, %struct.siosc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = icmp eq %struct.TYPE_4__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %49
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %76

70:                                               ; preds = %49
  %71 = load %struct.siosc*, %struct.siosc** %3, align 8
  %72 = load %struct.siosc*, %struct.siosc** %3, align 8
  %73 = getelementptr inbounds %struct.siosc, %struct.siosc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store %struct.siosc* %71, %struct.siosc** %75, align 8
  br label %76

76:                                               ; preds = %70, %67
  ret i32 0
}

declare dso_local %struct.siosc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @superio_add_known_child(i32, i64, i32) #1

declare dso_local i32 @bus_generic_probe(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local %struct.TYPE_4__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/spibus/extr_spigen.c_spigen_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spigen_softc = type { i32*, i32, i32, i8* }
%struct.make_dev_args = type { i32, i32, i8*, i32, i32, i32*, i32*, i32 }

@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@spigen_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"spigen%d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @spigen_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spigen_attach(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.spigen_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.make_dev_args, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @device_get_unit(i8* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @spibus_get_cs(i8* %11, i32* %6)
  %13 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call %struct.spigen_softc* @device_get_softc(i8* %17)
  store %struct.spigen_softc* %18, %struct.spigen_softc** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load %struct.spigen_softc*, %struct.spigen_softc** %4, align 8
  %21 = getelementptr inbounds %struct.spigen_softc, %struct.spigen_softc* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.spigen_softc*, %struct.spigen_softc** %4, align 8
  %23 = getelementptr inbounds %struct.spigen_softc, %struct.spigen_softc* %22, i32 0, i32 2
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @device_get_nameunit(i8* %24)
  %26 = load i32, i32* @MTX_DEF, align 4
  %27 = call i32 @mtx_init(i32* %23, i32 %25, i32* null, i32 %26)
  %28 = call i32 @make_dev_args_init(%struct.make_dev_args* %8)
  %29 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %30 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 6
  store i32* @spigen_cdevsw, i32** %31, align 8
  %32 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 5
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @UID_ROOT, align 4
  %34 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 4
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @GID_OPERATOR, align 4
  %36 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 0
  store i32 432, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %3, align 8
  %41 = getelementptr inbounds %struct.make_dev_args, %struct.make_dev_args* %8, i32 0, i32 2
  store i8* %40, i8** %41, align 8
  %42 = load %struct.spigen_softc*, %struct.spigen_softc** %4, align 8
  %43 = getelementptr inbounds %struct.spigen_softc, %struct.spigen_softc* %42, i32 0, i32 0
  %44 = load i8*, i8** %3, align 8
  %45 = call i8* @device_get_parent(i8* %44)
  %46 = call i32 @device_get_unit(i8* %45)
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @make_dev_s(%struct.make_dev_args* %8, i32** %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %51
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @device_get_unit(i8*) #1

declare dso_local i32 @spibus_get_cs(i8*, i32*) #1

declare dso_local %struct.spigen_softc* @device_get_softc(i8*) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i8*) #1

declare dso_local i32 @make_dev_args_init(%struct.make_dev_args*) #1

declare dso_local i32 @make_dev_s(%struct.make_dev_args*, i32**, i8*, i32, i32) #1

declare dso_local i8* @device_get_parent(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

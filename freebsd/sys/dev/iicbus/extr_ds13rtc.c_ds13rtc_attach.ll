; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds13rtc_softc = type { i32, i32, i32, i8*, i8*, i32, i32 }

@TYPE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"impossible: cannot determine chip type\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DS1388_R_SECOND = common dso_local global i8* null, align 8
@DS13xx_R_SECOND = common dso_local global i8* null, align 8
@DS133x_R_STATUS = common dso_local global i8* null, align 8
@DS1340_R_STATUS = common dso_local global i8* null, align 8
@DS137x_R_STATUS = common dso_local global i8* null, align 8
@DS1388_R_STATUS = common dso_local global i8* null, align 8
@ds13rtc_start = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ds13rtc_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds13rtc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ds13rtc_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.ds13rtc_softc* @device_get_softc(i32 %5)
  store %struct.ds13rtc_softc* %6, %struct.ds13rtc_softc** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %9 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %13 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %12, i32 0, i32 5
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ds13rtc_get_chiptype(i32 %14)
  %16 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @TYPE_NONE, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %2, align 4
  br label %69

24:                                               ; preds = %1
  %25 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %26 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 128
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i8*, i8** @DS1388_R_SECOND, align 8
  %31 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  br label %37

33:                                               ; preds = %24
  %34 = load i8*, i8** @DS13xx_R_SECOND, align 8
  %35 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %36 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %65 [
    i32 140, label %41
    i32 139, label %41
    i32 137, label %41
    i32 138, label %45
    i32 136, label %45
    i32 134, label %45
    i32 133, label %45
    i32 129, label %45
    i32 135, label %51
    i32 132, label %55
    i32 131, label %55
    i32 130, label %55
    i32 128, label %61
  ]

41:                                               ; preds = %37, %37, %37
  %42 = load i8*, i8** @DS13xx_R_SECOND, align 8
  %43 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %44 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  br label %65

45:                                               ; preds = %37, %37, %37, %37, %37
  %46 = load i8*, i8** @DS133x_R_STATUS, align 8
  %47 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %49, i32 0, i32 1
  store i32 1, i32* %50, align 4
  br label %65

51:                                               ; preds = %37
  %52 = load i8*, i8** @DS1340_R_STATUS, align 8
  %53 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  br label %65

55:                                               ; preds = %37, %37, %37
  %56 = load i8*, i8** @DS137x_R_STATUS, align 8
  %57 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %58 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %57, i32 0, i32 3
  store i8* %56, i8** %58, align 8
  %59 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %60 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  br label %65

61:                                               ; preds = %37
  %62 = load i8*, i8** @DS1388_R_STATUS, align 8
  %63 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %37, %61, %55, %51, %45, %41
  %66 = load i32, i32* @ds13rtc_start, align 4
  %67 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %4, align 8
  %68 = call i32 @config_intrhook_oneshot(i32 %66, %struct.ds13rtc_softc* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %20
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.ds13rtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ds13rtc_get_chiptype(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @config_intrhook_oneshot(i32, %struct.ds13rtc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

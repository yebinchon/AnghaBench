; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_adt746x.c_adt746x_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt746x_softc = type { i32, i32, i32, i32 }

@ADT746X_DEVICE_ID = common dso_local global i32 0, align 4
@ADT746X_COMPANY_ID = common dso_local global i32 0, align 4
@ADT746X_REV_ID = common dso_local global i32 0, align 4
@ADT746X_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Dev ID %#x, Company ID %#x, Rev ID %#x CNF: %#x\0A\00", align 1
@ADT7460_DEV_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adt746x_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adt746x_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adt746x_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = call %struct.adt746x_softc* @device_get_softc(i32 %11)
  store %struct.adt746x_softc* %12, %struct.adt746x_softc** %7, align 8
  %13 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %14 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %17 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADT746X_DEVICE_ID, align 4
  %20 = call i32 @adt746x_read(i32 %15, i32 %18, i32 %19, i32* %3)
  %21 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %22 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %25 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ADT746X_COMPANY_ID, align 4
  %28 = call i32 @adt746x_read(i32 %23, i32 %26, i32 %27, i32* %4)
  %29 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %30 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %33 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ADT746X_REV_ID, align 4
  %36 = call i32 @adt746x_read(i32 %31, i32 %34, i32 %35, i32* %5)
  %37 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %38 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %41 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ADT746X_CONFIG, align 4
  %44 = call i32 @adt746x_read(i32 %39, i32 %42, i32 %43, i32* %6)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %53 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 1, i32* %6, align 4
  %54 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %55 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* @ADT7460_DEV_ID, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %1
  %61 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %62 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %65 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ADT746X_CONFIG, align 4
  %68 = call i32 @adt746x_write(i32 %63, i32 %66, i32 %67, i32* %6)
  br label %69

69:                                               ; preds = %60, %1
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @adt746x_attach_fans(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @adt746x_attach_sensors(i32 %72)
  %74 = load %struct.adt746x_softc*, %struct.adt746x_softc** %7, align 8
  %75 = getelementptr inbounds %struct.adt746x_softc, %struct.adt746x_softc* %74, i32 0, i32 1
  %76 = call i32 @config_intrhook_disestablish(i32* %75)
  ret void
}

declare dso_local %struct.adt746x_softc* @device_get_softc(i32) #1

declare dso_local i32 @adt746x_read(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @adt746x_write(i32, i32, i32, i32*) #1

declare dso_local i32 @adt746x_attach_fans(i32) #1

declare dso_local i32 @adt746x_attach_sensors(i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

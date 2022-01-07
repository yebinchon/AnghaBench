; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_attach_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_attach_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }
%struct.twe_drive = type { i32, i32, i32, i32* }

@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Cannot add unit\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Unit %d, %s, %s\00", align 1
@twe_table_unittype = common dso_local global i32 0, align 4
@twe_table_unitstate = common dso_local global i32 0, align 4
@TWE_PARAM_UNITSTATUS_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Cannot attach unit to controller. error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twe_attach_drive(%struct.twe_softc* %0, %struct.twe_drive* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca %struct.twe_drive*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.twe_softc* %0, %struct.twe_softc** %4, align 8
  store %struct.twe_drive* %1, %struct.twe_drive** %5, align 8
  %8 = call i32 @mtx_lock(i32* @Giant)
  %9 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %10 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @device_add_child(i32 %11, i32* null, i32 -1)
  %13 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %14 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %13, i32 0, i32 3
  store i32* %12, i32** %14, align 8
  %15 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %16 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = call i32 @mtx_unlock(i32* @Giant)
  %21 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %22 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  store i32 %23, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %26 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %29 = call i32 @device_set_ivars(i32* %27, %struct.twe_drive* %28)
  %30 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %31 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %32 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @twe_table_unittype, align 4
  %35 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %36 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @twe_describe_code(i32 %34, i32 %37)
  %39 = load i32, i32* @twe_table_unitstate, align 4
  %40 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %41 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TWE_PARAM_UNITSTATUS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = call i8* @twe_describe_code(i32 %39, i32 %44)
  %46 = call i32 @sprintf(i8* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %33, i8* %38, i8* %45)
  %47 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %48 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %51 = call i32 @device_set_desc_copy(i32* %49, i8* %50)
  %52 = load %struct.twe_drive*, %struct.twe_drive** %5, align 8
  %53 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @device_probe_and_attach(i32* %54)
  store i32 %55, i32* %7, align 4
  %56 = call i32 @mtx_unlock(i32* @Giant)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %24
  %60 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EIO, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %59, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32* @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.twe_drive*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i8* @twe_describe_code(i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32*, i8*) #1

declare dso_local i32 @device_probe_and_attach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

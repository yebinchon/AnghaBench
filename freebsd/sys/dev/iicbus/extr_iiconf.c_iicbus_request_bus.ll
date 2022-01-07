; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_request_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iiconf.c_iicbus_request_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i8*, i8*, i64 }

@IIC_RECURSIVE = common dso_local global i32 0, align 4
@DS_ATTACHING = common dso_local global i64 0, align 8
@IIC_REQUEST_BUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iicbus_request_bus(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iicbus_softc*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @device_get_softc(i8* %9)
  %11 = inttoptr i64 %10 to %struct.iicbus_softc*
  store %struct.iicbus_softc* %11, %struct.iicbus_softc** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %13 = call i32 @IICBUS_LOCK(%struct.iicbus_softc* %12)
  br label %14

14:                                               ; preds = %38, %3
  %15 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %16 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %39

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @IIC_RECURSIVE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %27 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %39

32:                                               ; preds = %25, %20
  %33 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @iicbus_poll(%struct.iicbus_softc* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %39

38:                                               ; preds = %32
  br label %14

39:                                               ; preds = %37, %31, %19
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %96

42:                                               ; preds = %39
  %43 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %44 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %48 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %95

51:                                               ; preds = %42
  %52 = load i8*, i8** %5, align 8
  %53 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %54 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i64 @device_get_state(i8* %55)
  %57 = load i64, i64* @DS_ATTACHING, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %62 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  br label %67

63:                                               ; preds = %51
  %64 = load i8*, i8** %5, align 8
  %65 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %66 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %63, %59
  %68 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %69 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @device_busy(i8* %70)
  %72 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %73 = call i32 @IICBUS_UNLOCK(%struct.iicbus_softc* %72)
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @device_get_parent(i8* %74)
  %76 = load i32, i32* @IIC_REQUEST_BUS, align 4
  %77 = ptrtoint i32* %6 to i32
  %78 = call i32 @IICBUS_CALLBACK(i32 %75, i32 %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %80 = call i32 @IICBUS_LOCK(%struct.iicbus_softc* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %67
  %84 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %85 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %84, i32 0, i32 0
  store i8* null, i8** %85, align 8
  %86 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %87 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %89 = call i32 @wakeup_one(%struct.iicbus_softc* %88)
  %90 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %91 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %90, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @device_unbusy(i8* %92)
  br label %94

94:                                               ; preds = %83, %67
  br label %95

95:                                               ; preds = %94, %42
  br label %96

96:                                               ; preds = %95, %39
  %97 = load %struct.iicbus_softc*, %struct.iicbus_softc** %7, align 8
  %98 = call i32 @IICBUS_UNLOCK(%struct.iicbus_softc* %97)
  %99 = load i32, i32* %8, align 4
  ret i32 %99
}

declare dso_local i64 @device_get_softc(i8*) #1

declare dso_local i32 @IICBUS_LOCK(%struct.iicbus_softc*) #1

declare dso_local i32 @iicbus_poll(%struct.iicbus_softc*, i32) #1

declare dso_local i64 @device_get_state(i8*) #1

declare dso_local i32 @device_busy(i8*) #1

declare dso_local i32 @IICBUS_UNLOCK(%struct.iicbus_softc*) #1

declare dso_local i32 @IICBUS_CALLBACK(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i8*) #1

declare dso_local i32 @wakeup_one(%struct.iicbus_softc*) #1

declare dso_local i32 @device_unbusy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

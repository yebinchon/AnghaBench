; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32, i32 }

@TWSI_CONTROL_ACK = common dso_local global i32 0, align 4
@TWSI_CONTROL_IFLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"timeout reading data (delay=%d)\0A\00", align 1
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@TWSI_STATUS_DATA_RD_NOACK = common dso_local global i32 0, align 4
@TWSI_STATUS_DATA_RD_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong status (%02x) while reading\0A\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32, i32)* @twsi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twsi_read(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.twsi_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.twsi_softc* @device_get_softc(i32 %17)
  store %struct.twsi_softc* %18, %struct.twsi_softc** %13, align 8
  %19 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %20 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load i32*, i32** %10, align 8
  store i32 0, i32* %22, align 4
  br label %23

23:                                               ; preds = %87, %6
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %99

28:                                               ; preds = %23
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi i1 [ false, %28 ], [ %36, %34 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %45 = load i32, i32* @TWSI_CONTROL_ACK, align 4
  %46 = call i32 @twsi_control_clear(%struct.twsi_softc* %44, i32 %45)
  br label %51

47:                                               ; preds = %37
  %48 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %49 = load i32, i32* @TWSI_CONTROL_ACK, align 4
  %50 = call i32 @twsi_control_set(%struct.twsi_softc* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %53 = call i32 @twsi_clear_iflg(%struct.twsi_softc* %52)
  %54 = call i32 @DELAY(i32 1000)
  %55 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %58 = call i64 @twsi_poll_ctrl(%struct.twsi_softc* %55, i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %51
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @debugf(i32 %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %64, i32* %16, align 4
  br label %101

65:                                               ; preds = %51
  %66 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %67 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %68 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @TWSI_READ(%struct.twsi_softc* %66, i32 %69)
  %71 = ptrtoint i8* %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* @TWSI_STATUS_DATA_RD_NOACK, align 4
  br label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @TWSI_STATUS_DATA_RD_ACK, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = phi i32 [ %76, %75 ], [ %78, %77 ]
  %81 = icmp ne i32 %72, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @debugf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %86, i32* %16, align 4
  br label %101

87:                                               ; preds = %79
  %88 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %89 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %90 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @TWSI_READ(%struct.twsi_softc* %88, i32 %91)
  %93 = ptrtoint i8* %92 to i8
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %8, align 8
  store i8 %93, i8* %94, align 1
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %23

99:                                               ; preds = %23
  %100 = load i32, i32* @IIC_NOERR, align 4
  store i32 %100, i32* %16, align 4
  br label %101

101:                                              ; preds = %99, %82, %60
  %102 = load %struct.twsi_softc*, %struct.twsi_softc** %13, align 8
  %103 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %102, i32 0, i32 0
  %104 = call i32 @mtx_unlock(i32* %103)
  %105 = load i32, i32* %16, align 4
  ret i32 %105
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @twsi_control_clear(%struct.twsi_softc*, i32) #1

declare dso_local i32 @twsi_control_set(%struct.twsi_softc*, i32) #1

declare dso_local i32 @twsi_clear_iflg(%struct.twsi_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @twsi_poll_ctrl(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @debugf(i32, i8*, i32) #1

declare dso_local i8* @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

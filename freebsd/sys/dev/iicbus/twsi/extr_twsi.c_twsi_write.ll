; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32, i32 }

@TWSI_CONTROL_IFLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"timeout writing data (timeout=%d)\0A\00", align 1
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@TWSI_STATUS_DATA_WR_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"wrong status (%02x) while writing\0A\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32*, i32)* @twsi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twsi_write(i32 %0, i8* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.twsi_softc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.twsi_softc* @device_get_softc(i32 %14)
  store %struct.twsi_softc* %15, %struct.twsi_softc** %11, align 8
  %16 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %17 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %16, i32 0, i32 0
  %18 = call i32 @mtx_lock(i32* %17)
  %19 = load i32*, i32** %9, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %62, %5
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %20
  %26 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %27 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %28 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %7, align 8
  %32 = load i8, i8* %30, align 1
  %33 = sext i8 %32 to i32
  %34 = call i32 @TWSI_WRITE(%struct.twsi_softc* %26, i32 %29, i32 %33)
  %35 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %36 = call i32 @twsi_clear_iflg(%struct.twsi_softc* %35)
  %37 = call i32 @DELAY(i32 1000)
  %38 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %41 = call i64 @twsi_poll_ctrl(%struct.twsi_softc* %38, i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %25
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @debugf(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %47, i32* %13, align 4
  br label %68

48:                                               ; preds = %25
  %49 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %50 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %51 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TWSI_READ(%struct.twsi_softc* %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @TWSI_STATUS_DATA_WR_ACK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @debugf(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %61, i32* %13, align 4
  br label %68

62:                                               ; preds = %48
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %20

66:                                               ; preds = %20
  %67 = load i32, i32* @IIC_NOERR, align 4
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %66, %57, %43
  %69 = load %struct.twsi_softc*, %struct.twsi_softc** %11, align 8
  %70 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %69, i32 0, i32 0
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load i32, i32* %13, align 4
  ret i32 %72
}

declare dso_local %struct.twsi_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TWSI_WRITE(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @twsi_clear_iflg(%struct.twsi_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @twsi_poll_ctrl(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @debugf(i32, i8*, i32) #1

declare dso_local i32 @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

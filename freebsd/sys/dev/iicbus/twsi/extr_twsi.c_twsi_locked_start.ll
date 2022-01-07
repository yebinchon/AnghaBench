; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_locked_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/twsi/extr_twsi.c_twsi_locked_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twsi_softc = type { i32, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TWSI_STATUS_RPTD_START = common dso_local global i32 0, align 4
@TWSI_CONTROL_IFLG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"send start\0A\00", align 1
@TWSI_CONTROL_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"IFLG set, clearing (mask=%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"timeout sending %sSTART condition\0A\00", align 1
@TWSI_STATUS_START = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"repeated \00", align 1
@IIC_ETIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"status=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"wrong status (%02x) after sending %sSTART condition\0A\00", align 1
@IIC_ESTATUS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"timeout sending slave address (timeout=%d)\0A\00", align 1
@TWSI_STATUS_ADDR_R_ACK = common dso_local global i32 0, align 4
@TWSI_STATUS_ADDR_W_ACK = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [51 x i8] c"no ACK (status: %02x) after sending slave address\0A\00", align 1
@IIC_ENOACK = common dso_local global i32 0, align 4
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.twsi_softc*, i32, i32, i32)* @twsi_locked_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twsi_locked_start(i32 %0, %struct.twsi_softc* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.twsi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.twsi_softc* %1, %struct.twsi_softc** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %16 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %15, i32 0, i32 3
  %17 = load i32, i32* @MA_OWNED, align 4
  %18 = call i32 @mtx_assert(i32* %16, i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @TWSI_STATUS_RPTD_START, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %5
  %23 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %24 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %25 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @TWSI_READ(%struct.twsi_softc* %23, i32 %26)
  %28 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %22, %5
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (i32, i8*, ...) @debugf(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %34 = load i32, i32* @TWSI_CONTROL_START, align 4
  %35 = call i32 @twsi_control_set(%struct.twsi_softc* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @TWSI_STATUS_RPTD_START, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %30
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i8*, ...) @debugf(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %47 = call i32 @twsi_clear_iflg(%struct.twsi_softc* %46)
  br label %48

48:                                               ; preds = %42, %39, %30
  %49 = call i32 @DELAY(i32 1000)
  %50 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %53 = call i64 @twsi_poll_ctrl(%struct.twsi_softc* %50, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @TWSI_STATUS_START, align 4
  %59 = icmp eq i32 %57, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %62 = call i32 (i32, i8*, ...) @debugf(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %63, i32* %6, align 4
  br label %134

64:                                               ; preds = %48
  %65 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %66 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %67 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @TWSI_READ(%struct.twsi_softc* %65, i32 %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 (i32, i8*, ...) @debugf(i32 %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @TWSI_STATUS_START, align 4
  %81 = icmp eq i32 %79, %80
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %84 = call i32 (i32, i8*, ...) @debugf(i32 %77, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %78, i8* %83)
  %85 = load i32, i32* @IIC_ESTATUS, align 4
  store i32 %85, i32* %6, align 4
  br label %134

86:                                               ; preds = %64
  %87 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %88 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %89 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @TWSI_WRITE(%struct.twsi_softc* %87, i32 %90, i32 %91)
  %93 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %94 = call i32 @twsi_clear_iflg(%struct.twsi_softc* %93)
  %95 = call i32 @DELAY(i32 1000)
  %96 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @TWSI_CONTROL_IFLG, align 4
  %99 = call i64 @twsi_poll_ctrl(%struct.twsi_softc* %96, i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %86
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 (i32, i8*, ...) @debugf(i32 %102, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @IIC_ETIMEOUT, align 4
  store i32 %105, i32* %6, align 4
  br label %134

106:                                              ; preds = %86
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 1
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 1, i32 0
  store i32 %111, i32* %12, align 4
  %112 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %113 = load %struct.twsi_softc*, %struct.twsi_softc** %8, align 8
  %114 = getelementptr inbounds %struct.twsi_softc, %struct.twsi_softc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @TWSI_READ(%struct.twsi_softc* %112, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = load i32, i32* @TWSI_STATUS_ADDR_R_ACK, align 4
  br label %124

122:                                              ; preds = %106
  %123 = load i32, i32* @TWSI_STATUS_ADDR_W_ACK, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = icmp ne i32 %117, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 (i32, i8*, ...) @debugf(i32 %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @IIC_ENOACK, align 4
  store i32 %131, i32* %6, align 4
  br label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @IIC_NOERR, align 4
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %132, %127, %101, %76, %55
  %135 = load i32, i32* %6, align 4
  ret i32 %135
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TWSI_READ(%struct.twsi_softc*, i32) #1

declare dso_local i32 @debugf(i32, i8*, ...) #1

declare dso_local i32 @twsi_control_set(%struct.twsi_softc*, i32) #1

declare dso_local i32 @twsi_clear_iflg(%struct.twsi_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @twsi_poll_ctrl(%struct.twsi_softc*, i32, i32) #1

declare dso_local i32 @TWSI_WRITE(%struct.twsi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

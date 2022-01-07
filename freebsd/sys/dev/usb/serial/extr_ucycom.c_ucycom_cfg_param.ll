; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ucycom.c_ucycom_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ucycom_softc* }
%struct.ucycom_softc = type { i32 }
%struct.termios = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@CIGNORE = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UCYCOM_CFG_STOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@UCYCOM_CFG_PAREN = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UCYCOM_CFG_PARODD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @ucycom_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucycom_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.ucycom_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.ucycom_softc*, %struct.ucycom_softc** %8, align 8
  store %struct.ucycom_softc* %9, %struct.ucycom_softc** %5, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.termios*, %struct.termios** %4, align 8
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CIGNORE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ucycom_softc, %struct.ucycom_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %72

21:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %22 = load %struct.termios*, %struct.termios** %4, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CSIZE, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %27 [
    i32 128, label %28
    i32 129, label %31
    i32 130, label %34
    i32 131, label %37
  ]

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %21, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %21, %28
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %21, %31
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %21, %34
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.termios*, %struct.termios** %4, align 8
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @CSTOPB, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @UCYCOM_CFG_STOPB, align 4
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.termios*, %struct.termios** %4, align 8
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PARENB, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @UCYCOM_CFG_PAREN, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.termios*, %struct.termios** %4, align 8
  %62 = getelementptr inbounds %struct.termios, %struct.termios* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PARODD, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @UCYCOM_CFG_PARODD, align 4
  %69 = load i32, i32* %6, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %60
  br label %72

72:                                               ; preds = %71, %17
  %73 = load %struct.ucycom_softc*, %struct.ucycom_softc** %5, align 8
  %74 = load %struct.termios*, %struct.termios** %4, align 8
  %75 = getelementptr inbounds %struct.termios, %struct.termios* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @ucycom_cfg_write(%struct.ucycom_softc* %73, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ucycom_cfg_write(%struct.ucycom_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_cfg_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubsa.c_ubsa_cfg_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.ubsa_softc* }
%struct.ubsa_softc = type { i32 }
%struct.termios = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"sc = %p\0A\00", align 1
@UBSA_REG_FLOW_CTRL = common dso_local global i32 0, align 4
@UBSA_REG_BAUDRATE = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UBSA_PARITY_ODD = common dso_local global i32 0, align 4
@UBSA_PARITY_EVEN = common dso_local global i32 0, align 4
@UBSA_PARITY_NONE = common dso_local global i32 0, align 4
@UBSA_REG_PARITY = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@UBSA_REG_DATA_BITS = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@UBSA_REG_STOP_BITS = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@UBSA_FLOW_OCTS = common dso_local global i32 0, align 4
@UBSA_FLOW_IRTS = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@UBSA_FLOW_OXON = common dso_local global i32 0, align 4
@UBSA_FLOW_IXON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucom_softc*, %struct.termios*)* @ubsa_cfg_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubsa_cfg_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca %struct.ucom_softc*, align 8
  %4 = alloca %struct.termios*, align 8
  %5 = alloca %struct.ubsa_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.ucom_softc* %0, %struct.ucom_softc** %3, align 8
  store %struct.termios* %1, %struct.termios** %4, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.ubsa_softc*, %struct.ubsa_softc** %8, align 8
  store %struct.ubsa_softc* %9, %struct.ubsa_softc** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %11 = call i32 @DPRINTF(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.ubsa_softc* %10)
  %12 = load %struct.termios*, %struct.termios** %4, align 8
  %13 = getelementptr inbounds %struct.termios, %struct.termios* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %34 [
    i32 143, label %15
    i32 137, label %25
    i32 133, label %25
    i32 141, label %25
    i32 138, label %25
    i32 135, label %25
    i32 132, label %25
    i32 140, label %25
    i32 136, label %25
    i32 134, label %25
    i32 142, label %25
    i32 139, label %25
  ]

15:                                               ; preds = %2
  %16 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %17 = load i32, i32* @UBSA_REG_FLOW_CTRL, align 4
  %18 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %16, i32 %17, i32 0)
  %19 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %20 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %19, i32 0, i32 0
  %21 = call i32 @ubsa_cfg_set_dtr(i32* %20, i32 0)
  %22 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %23 = getelementptr inbounds %struct.ubsa_softc, %struct.ubsa_softc* %22, i32 0, i32 0
  %24 = call i32 @ubsa_cfg_set_rts(i32* %23, i32 0)
  br label %35

25:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %26 = load %struct.termios*, %struct.termios** %4, align 8
  %27 = getelementptr inbounds %struct.termios, %struct.termios* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 139, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %31 = load i32, i32* @UBSA_REG_BAUDRATE, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %30, i32 %31, i32 %32)
  br label %35

34:                                               ; preds = %2
  br label %121

35:                                               ; preds = %25, %15
  %36 = load %struct.termios*, %struct.termios** %4, align 8
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PARENB, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %35
  %43 = load %struct.termios*, %struct.termios** %4, align 8
  %44 = getelementptr inbounds %struct.termios, %struct.termios* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PARODD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @UBSA_PARITY_ODD, align 4
  br label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @UBSA_PARITY_EVEN, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %6, align 4
  br label %57

55:                                               ; preds = %35
  %56 = load i32, i32* @UBSA_PARITY_NONE, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %59 = load i32, i32* @UBSA_REG_PARITY, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.termios*, %struct.termios** %4, align 8
  %63 = getelementptr inbounds %struct.termios, %struct.termios* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @CSIZE, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %70 [
    i32 131, label %67
    i32 130, label %68
    i32 129, label %69
    i32 128, label %71
  ]

67:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %72

68:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %72

69:                                               ; preds = %57
  store i32 2, i32* %6, align 4
  br label %72

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %57, %70
  store i32 3, i32* %6, align 4
  br label %72

72:                                               ; preds = %71, %69, %68, %67
  %73 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %74 = load i32, i32* @UBSA_REG_DATA_BITS, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %73, i32 %74, i32 %75)
  %77 = load %struct.termios*, %struct.termios** %4, align 8
  %78 = getelementptr inbounds %struct.termios, %struct.termios* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CSTOPB, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %6, align 4
  %85 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %86 = load i32, i32* @UBSA_REG_STOP_BITS, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %85, i32 %86, i32 %87)
  store i32 0, i32* %6, align 4
  %89 = load %struct.termios*, %struct.termios** %4, align 8
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CRTSCTS, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %72
  %96 = load i32, i32* @UBSA_FLOW_OCTS, align 4
  %97 = load i32, i32* @UBSA_FLOW_IRTS, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %95, %72
  %102 = load %struct.termios*, %struct.termios** %4, align 8
  %103 = getelementptr inbounds %struct.termios, %struct.termios* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IXON, align 4
  %106 = load i32, i32* @IXOFF, align 4
  %107 = or i32 %105, %106
  %108 = and i32 %104, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load i32, i32* @UBSA_FLOW_OXON, align 4
  %112 = load i32, i32* @UBSA_FLOW_IXON, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %110, %101
  %117 = load %struct.ubsa_softc*, %struct.ubsa_softc** %5, align 8
  %118 = load i32, i32* @UBSA_REG_FLOW_CTRL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @ubsa_cfg_request(%struct.ubsa_softc* %117, i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %116, %34
  ret void
}

declare dso_local i32 @DPRINTF(i8*, %struct.ubsa_softc*) #1

declare dso_local i32 @ubsa_cfg_request(%struct.ubsa_softc*, i32, i32) #1

declare dso_local i32 @ubsa_cfg_set_dtr(i32*, i32) #1

declare dso_local i32 @ubsa_cfg_set_rts(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_tty.c_uart_tty_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.termios = type { i32, i32, i32 }
%struct.uart_softc = type { i64, i64, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SER_DDTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@UART_PARITY_ODD = common dso_local global i32 0, align 4
@UART_PARITY_EVEN = common dso_local global i32 0, align 4
@UART_PARITY_NONE = common dso_local global i32 0, align 4
@CNO_RTSDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@UART_IOCTL_IFLOW = common dso_local global i32 0, align 4
@UART_IOCTL_OFLOW = common dso_local global i32 0, align 4
@CCTS_OFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.termios*)* @uart_tty_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_tty_param(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.uart_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %10 = load %struct.tty*, %struct.tty** %4, align 8
  %11 = call %struct.uart_softc* @tty_softc(%struct.tty* %10)
  store %struct.uart_softc* %11, %struct.uart_softc** %6, align 8
  %12 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %13 = icmp eq %struct.uart_softc* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %16 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %3, align 4
  br label %172

21:                                               ; preds = %14
  %22 = load %struct.termios*, %struct.termios** %5, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.termios*, %struct.termios** %5, align 8
  %26 = getelementptr inbounds %struct.termios, %struct.termios* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load %struct.termios*, %struct.termios** %5, align 8
  %31 = getelementptr inbounds %struct.termios, %struct.termios* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %172

36:                                               ; preds = %29, %21
  %37 = load %struct.termios*, %struct.termios** %5, align 8
  %38 = getelementptr inbounds %struct.termios, %struct.termios* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %43 = load i32, i32* @SER_DDTR, align 4
  %44 = load i32, i32* @SER_DRTS, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @UART_SETSIG(%struct.uart_softc* %42, i32 %45)
  store i32 0, i32* %3, align 4
  br label %172

47:                                               ; preds = %36
  %48 = load %struct.termios*, %struct.termios** %5, align 8
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CSIZE, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %56 [
    i32 130, label %53
    i32 129, label %54
    i32 128, label %55
  ]

53:                                               ; preds = %47
  store i32 5, i32* %7, align 4
  br label %57

54:                                               ; preds = %47
  store i32 6, i32* %7, align 4
  br label %57

55:                                               ; preds = %47
  store i32 7, i32* %7, align 4
  br label %57

56:                                               ; preds = %47
  store i32 8, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55, %54, %53
  %58 = load %struct.termios*, %struct.termios** %5, align 8
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CSTOPB, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 2, i32 1
  store i32 %65, i32* %9, align 4
  %66 = load %struct.termios*, %struct.termios** %5, align 8
  %67 = getelementptr inbounds %struct.termios, %struct.termios* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PARENB, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %57
  %73 = load %struct.termios*, %struct.termios** %5, align 8
  %74 = getelementptr inbounds %struct.termios, %struct.termios* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @PARODD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i32, i32* @UART_PARITY_ODD, align 4
  br label %83

81:                                               ; preds = %72
  %82 = load i32, i32* @UART_PARITY_EVEN, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  store i32 %84, i32* %8, align 4
  br label %87

85:                                               ; preds = %57
  %86 = load i32, i32* @UART_PARITY_NONE, align 4
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %89 = load %struct.termios*, %struct.termios** %5, align 8
  %90 = getelementptr inbounds %struct.termios, %struct.termios* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i64 @UART_PARAM(%struct.uart_softc* %88, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %3, align 4
  br label %172

99:                                               ; preds = %87
  %100 = load %struct.termios*, %struct.termios** %5, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @CNO_RTSDTR, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %108 = load i32, i32* @SER_DDTR, align 4
  %109 = load i32, i32* @SER_DTR, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @UART_SETSIG(%struct.uart_softc* %107, i32 %110)
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %114 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %148, label %117

117:                                              ; preds = %112
  %118 = load %struct.termios*, %struct.termios** %5, align 8
  %119 = getelementptr inbounds %struct.termios, %struct.termios* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CRTS_IFLOW, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %117
  %125 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %126 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %131 = load i32, i32* @SER_DRTS, align 4
  %132 = call i32 @UART_SETSIG(%struct.uart_softc* %130, i32 %131)
  br label %147

133:                                              ; preds = %124, %117
  %134 = load %struct.termios*, %struct.termios** %5, align 8
  %135 = getelementptr inbounds %struct.termios, %struct.termios* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @CNO_RTSDTR, align 4
  %138 = and i32 %136, %137
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %142 = load i32, i32* @SER_DRTS, align 4
  %143 = load i32, i32* @SER_RTS, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @UART_SETSIG(%struct.uart_softc* %141, i32 %144)
  br label %146

146:                                              ; preds = %140, %133
  br label %147

147:                                              ; preds = %146, %129
  br label %157

148:                                              ; preds = %112
  %149 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %150 = load i32, i32* @UART_IOCTL_IFLOW, align 4
  %151 = load %struct.termios*, %struct.termios** %5, align 8
  %152 = getelementptr inbounds %struct.termios, %struct.termios* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @CRTS_IFLOW, align 4
  %155 = and i32 %153, %154
  %156 = call i32 @UART_IOCTL(%struct.uart_softc* %149, i32 %150, i32 %155)
  br label %157

157:                                              ; preds = %148, %147
  %158 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %159 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.uart_softc*, %struct.uart_softc** %6, align 8
  %164 = load i32, i32* @UART_IOCTL_OFLOW, align 4
  %165 = load %struct.termios*, %struct.termios** %5, align 8
  %166 = getelementptr inbounds %struct.termios, %struct.termios* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CCTS_OFLOW, align 4
  %169 = and i32 %167, %168
  %170 = call i32 @UART_IOCTL(%struct.uart_softc* %163, i32 %164, i32 %169)
  br label %171

171:                                              ; preds = %162, %157
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %97, %41, %34, %19
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local %struct.uart_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UART_SETSIG(%struct.uart_softc*, i32) #1

declare dso_local i64 @UART_PARAM(%struct.uart_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @UART_IOCTL(%struct.uart_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

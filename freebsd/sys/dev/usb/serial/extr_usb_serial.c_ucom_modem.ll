; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_modem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_usb_serial.c_ucom_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.ucom_softc = type { i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@UCOM_FLAG_HL_READY = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@SER_CTS = common dso_local global i32 0, align 4
@SER_DCD = common dso_local global i32 0, align 4
@SER_DSR = common dso_local global i32 0, align 4
@SER_RI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i32)* @ucom_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucom_modem(%struct.tty* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucom_softc*, align 8
  %9 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty*, %struct.tty** %5, align 8
  %11 = call %struct.ucom_softc* @tty_softc(%struct.tty* %10)
  store %struct.ucom_softc* %11, %struct.ucom_softc** %8, align 8
  %12 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %13 = load i32, i32* @MA_OWNED, align 4
  %14 = call i32 @UCOM_MTX_ASSERT(%struct.ucom_softc* %12, i32 %13)
  %15 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCOM_FLAG_HL_READY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %165

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %96

28:                                               ; preds = %25
  %29 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %30 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SER_DTR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @SER_DTR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %28
  %40 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %41 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SER_RTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @SER_RTS, align 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %52 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SER_CTS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @SER_CTS, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %63 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @SER_DCD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @SER_DCD, align 4
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %74 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SER_DSR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* @SER_DSR, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %72
  %84 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %85 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SER_RI, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load i32, i32* @SER_RI, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %90, %83
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* %4, align 4
  br label %165

96:                                               ; preds = %25, %22
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @SER_DTR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load i32, i32* @SER_DTR, align 4
  %103 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %104 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %101, %96
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @SER_DTR, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load i32, i32* @SER_DTR, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %116 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %112, %107
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @SER_RTS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @SER_RTS, align 4
  %126 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %127 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @SER_RTS, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* @SER_RTS, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %139 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %130
  %143 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %144 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @SER_DTR, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i32 1, i32 0
  store i32 %150, i32* %9, align 4
  %151 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %152 = load i32, i32* %9, align 4
  %153 = call i32 @ucom_dtr(%struct.ucom_softc* %151, i32 %152)
  %154 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %155 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SER_RTS, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 1, i32 0
  store i32 %161, i32* %9, align 4
  %162 = load %struct.ucom_softc*, %struct.ucom_softc** %8, align 8
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @ucom_rts(%struct.ucom_softc* %162, i32 %163)
  store i32 0, i32* %4, align 4
  br label %165

165:                                              ; preds = %142, %94, %21
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local %struct.ucom_softc* @tty_softc(%struct.tty*) #1

declare dso_local i32 @UCOM_MTX_ASSERT(%struct.ucom_softc*, i32) #1

declare dso_local i32 @ucom_dtr(%struct.ucom_softc*, i32) #1

declare dso_local i32 @ucom_rts(%struct.ucom_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

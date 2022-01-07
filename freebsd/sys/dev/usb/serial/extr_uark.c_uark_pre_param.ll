; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_pre_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uark.c_uark_pre_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32 }
%struct.termios = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.termios*)* @uark_pre_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uark_pre_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.termios*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %6 = load %struct.termios*, %struct.termios** %5, align 8
  %7 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 300
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.termios*, %struct.termios** %5, align 8
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 115200
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %18

17:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_pre_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uplcom.c_uplcom_pre_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { %struct.uplcom_softc* }
%struct.uplcom_softc = type { i32 }
%struct.termios = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"uplcom_param: bad baud rate (%d)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.termios*)* @uplcom_pre_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uplcom_pre_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.uplcom_softc*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %7 = load %struct.ucom_softc*, %struct.ucom_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ucom_softc, %struct.ucom_softc* %7, i32 0, i32 0
  %9 = load %struct.uplcom_softc*, %struct.uplcom_softc** %8, align 8
  store %struct.uplcom_softc* %9, %struct.uplcom_softc** %6, align 8
  %10 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.termios*, %struct.termios** %5, align 8
  %12 = getelementptr inbounds %struct.termios, %struct.termios* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -2147483648
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.uplcom_softc*, %struct.uplcom_softc** %6, align 8
  %19 = getelementptr inbounds %struct.uplcom_softc, %struct.uplcom_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 128, label %21
    i32 129, label %28
  ]

21:                                               ; preds = %17
  %22 = load %struct.termios*, %struct.termios** %5, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 12000000
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %49

27:                                               ; preds = %21
  br label %43

28:                                               ; preds = %17
  %29 = load %struct.termios*, %struct.termios** %5, align 8
  %30 = getelementptr inbounds %struct.termios, %struct.termios* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sle i32 %31, 6000000
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %49

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %17
  %36 = load %struct.termios*, %struct.termios** %5, align 8
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @uplcom_baud_supported(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %49

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %34, %27
  %44 = load %struct.termios*, %struct.termios** %5, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EIO, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %43, %41, %33, %26, %16
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DPRINTF(i8*, ...) #1

declare dso_local i32 @uplcom_baud_supported(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

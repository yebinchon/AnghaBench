; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_pre_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_ubser.c_ubser_pre_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucom_softc = type { i32 }
%struct.termios = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@CDTR_IFLOW = common dso_local global i32 0, align 4
@CDSR_OFLOW = common dso_local global i32 0, align 4
@CCAR_OFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucom_softc*, %struct.termios*)* @ubser_pre_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubser_pre_param(%struct.ucom_softc* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucom_softc*, align 8
  %5 = alloca %struct.termios*, align 8
  store %struct.ucom_softc* %0, %struct.ucom_softc** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.termios*, %struct.termios** %5, align 8
  %8 = getelementptr inbounds %struct.termios, %struct.termios* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 9600, label %10
  ]

10:                                               ; preds = %2
  br label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %10
  %14 = load %struct.termios*, %struct.termios** %5, align 8
  %15 = getelementptr inbounds %struct.termios, %struct.termios* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CSTOPB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %56

22:                                               ; preds = %13
  %23 = load %struct.termios*, %struct.termios** %5, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PARENB, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %56

31:                                               ; preds = %22
  %32 = load %struct.termios*, %struct.termios** %5, align 8
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CSIZE, align 4
  %36 = and i32 %34, %35
  switch i32 %36, label %38 [
    i32 128, label %37
  ]

37:                                               ; preds = %31
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %37
  %41 = load %struct.termios*, %struct.termios** %5, align 8
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CRTS_IFLOW, align 4
  %45 = load i32, i32* @CDTR_IFLOW, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CDSR_OFLOW, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @CCAR_OFLOW, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %43, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %53, %38, %29, %20, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

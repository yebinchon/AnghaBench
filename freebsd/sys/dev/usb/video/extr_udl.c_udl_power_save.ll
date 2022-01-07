; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_power_save.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32 }
%struct.udl_cmd_buf = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"screen %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@UDL_REG_SCREEN = common dso_local global i32 0, align 4
@UDL_REG_SCREEN_ON = common dso_local global i32 0, align 4
@UDL_REG_SCREEN_OFF = common dso_local global i32 0, align 4
@UDL_REG_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udl_softc*, i32, i32)* @udl_power_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_power_save(%struct.udl_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.udl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.udl_cmd_buf*, align 8
  store %struct.udl_softc* %0, %struct.udl_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.udl_cmd_buf* @udl_cmd_buf_alloc(%struct.udl_softc* %9, i32 %10)
  store %struct.udl_cmd_buf* %11, %struct.udl_cmd_buf** %8, align 8
  %12 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %8, align 8
  %13 = icmp eq %struct.udl_cmd_buf* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EAGAIN, align 4
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 1
  %26 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %27 = getelementptr inbounds %struct.udl_softc, %struct.udl_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %16
  %31 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %8, align 8
  %32 = load i32, i32* @UDL_REG_SCREEN, align 4
  %33 = load i32, i32* @UDL_REG_SCREEN_ON, align 4
  %34 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %31, i32 %32, i32 %33)
  br label %40

35:                                               ; preds = %16
  %36 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %8, align 8
  %37 = load i32, i32* @UDL_REG_SCREEN, align 4
  %38 = load i32, i32* @UDL_REG_SCREEN_OFF, align 4
  %39 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %8, align 8
  %42 = load i32, i32* @UDL_REG_SYNC, align 4
  %43 = call i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf* %41, i32 %42, i32 255)
  %44 = load %struct.udl_softc*, %struct.udl_softc** %5, align 8
  %45 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %8, align 8
  %46 = call i32 @udl_cmd_buf_send(%struct.udl_softc* %44, %struct.udl_cmd_buf* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.udl_cmd_buf* @udl_cmd_buf_alloc(%struct.udl_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*, i8*) #1

declare dso_local i32 @udl_cmd_write_reg_1(%struct.udl_cmd_buf*, i32, i32) #1

declare dso_local i32 @udl_cmd_buf_send(%struct.udl_softc*, %struct.udl_cmd_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_config_multi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_config_multi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32 }
%struct.uath_write_mac = type { i32, i8*, i8* }

@WDCMSG_TARGET_SET_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"could not write %d bytes to register 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, i32, i8*, i32)* @uath_config_multi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_config_multi(%struct.uath_softc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.uath_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uath_write_mac, align 8
  %10 = alloca i32, align 4
  store %struct.uath_softc* %0, %struct.uath_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i8* @htobe32(i32 %11)
  %13 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %9, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @htobe32(i32 %14)
  %16 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %9, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds %struct.uath_write_mac, %struct.uath_write_mac* %9, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @bcopy(i8* %17, i32 %19, i32 %20)
  %22 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %23 = load i32, i32* @WDCMSG_TARGET_SET_CONFIG, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %31

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 8, %29
  br label %31

31:                                               ; preds = %27, %26
  %32 = phi i64 [ 4, %26 ], [ %30, %27 ]
  %33 = trunc i64 %32 to i32
  %34 = call i32 @uath_cmd_write(%struct.uath_softc* %22, i32 %23, %struct.uath_write_mac* %9, i32 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.uath_softc*, %struct.uath_softc** %5, align 8
  %39 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %10, align 4
  ret i32 %45
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @bcopy(i8*, i32, i32) #1

declare dso_local i32 @uath_cmd_write(%struct.uath_softc*, i32, %struct.uath_write_mac*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { %struct.com_s* }
%struct.com_s = type { i32, i32, i32, i32, i32 }
%struct.cdev = type { i32 }

@CD1400_LIVR = common dso_local global i32 0, align 4
@CD1400_xIVR_CHAN = common dso_local global i32 0, align 4
@CD1400_xIVR_CHAN_SHIFT = common dso_local global i32 0, align 4
@CD1400_CCR_CMDRESET = common dso_local global i32 0, align 4
@CD1400_CCR_CHANRESET = common dso_local global i32 0, align 4
@CD1400_MSVR2 = common dso_local global i32 0, align 4
@CD1400_SRER = common dso_local global i32 0, align 4
@CD1400_SRER_MDMCH = common dso_local global i32 0, align 4
@CD1400_SRER_RXDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.cdev*)* @cyopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyopen(%struct.tty* %0, %struct.cdev* %1) #0 {
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.com_s*, align 8
  %6 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %3, align 8
  store %struct.cdev* %1, %struct.cdev** %4, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = getelementptr inbounds %struct.tty, %struct.tty* %7, i32 0, i32 0
  %9 = load %struct.com_s*, %struct.com_s** %8, align 8
  store %struct.com_s* %9, %struct.com_s** %5, align 8
  %10 = call i32 (...) @spltty()
  store i32 %10, i32* %6, align 4
  %11 = load %struct.com_s*, %struct.com_s** %5, align 8
  %12 = load i32, i32* @CD1400_LIVR, align 4
  %13 = load %struct.com_s*, %struct.com_s** %5, align 8
  %14 = getelementptr inbounds %struct.com_s, %struct.com_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CD1400_xIVR_CHAN, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CD1400_xIVR_CHAN_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = call i32 @cd_setreg(%struct.com_s* %11, i32 %12, i32 %19)
  %21 = load %struct.com_s*, %struct.com_s** %5, align 8
  %22 = load i32, i32* @CD1400_CCR_CMDRESET, align 4
  %23 = load i32, i32* @CD1400_CCR_CHANRESET, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @cd1400_channel_cmd(%struct.com_s* %21, i32 %24)
  %26 = load %struct.com_s*, %struct.com_s** %5, align 8
  %27 = load %struct.com_s*, %struct.com_s** %5, align 8
  %28 = getelementptr inbounds %struct.com_s, %struct.com_s* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cd1400_channel_cmd(%struct.com_s* %26, i32 %29)
  %31 = call i32 (...) @critical_enter()
  %32 = call i32 (...) @COM_LOCK()
  %33 = load %struct.com_s*, %struct.com_s** %5, align 8
  %34 = load i32, i32* @CD1400_MSVR2, align 4
  %35 = call i32 @cd_getreg(%struct.com_s* %33, i32 %34)
  %36 = load %struct.com_s*, %struct.com_s** %5, align 8
  %37 = getelementptr inbounds %struct.com_s, %struct.com_s* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.com_s*, %struct.com_s** %5, align 8
  %39 = getelementptr inbounds %struct.com_s, %struct.com_s* %38, i32 0, i32 4
  store i32 %35, i32* %39, align 4
  %40 = load %struct.com_s*, %struct.com_s** %5, align 8
  %41 = load i32, i32* @CD1400_SRER, align 4
  %42 = load i32, i32* @CD1400_SRER_MDMCH, align 4
  %43 = load i32, i32* @CD1400_SRER_RXDATA, align 4
  %44 = or i32 %42, %43
  %45 = load %struct.com_s*, %struct.com_s** %5, align 8
  %46 = getelementptr inbounds %struct.com_s, %struct.com_s* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = call i32 @cd_setreg(%struct.com_s* %40, i32 %41, i32 %44)
  %48 = call i32 (...) @COM_UNLOCK()
  %49 = call i32 (...) @critical_exit()
  %50 = call i32 (...) @cysettimeout()
  ret i32 0
}

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @cd1400_channel_cmd(%struct.com_s*, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @cd_getreg(%struct.com_s*, i32) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @cysettimeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

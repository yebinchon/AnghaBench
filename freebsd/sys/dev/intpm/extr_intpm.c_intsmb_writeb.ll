; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_writeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@LSB = common dso_local global i8 0, align 1
@PIIX4_SMBHSTCMD = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT0 = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_BDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8, i8)* @intsmb_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_writeb(i32 %0, i8 signext %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.intsmb_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.intsmb_softc* @device_get_softc(i32 %12)
  store %struct.intsmb_softc* %13, %struct.intsmb_softc** %10, align 8
  %14 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %15 = call i32 @INTSMB_LOCK(%struct.intsmb_softc* %14)
  %16 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %17 = call i32 @intsmb_free(%struct.intsmb_softc* %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %22 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %21)
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %26 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @LSB, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %32, -1
  %34 = and i32 %30, %33
  %35 = trunc i32 %34 to i8
  %36 = call i32 @bus_write_1(i32 %27, i32 %28, i8 signext %35)
  %37 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %38 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PIIX4_SMBHSTCMD, align 4
  %41 = load i8, i8* %8, align 1
  %42 = call i32 @bus_write_1(i32 %39, i32 %40, i8 signext %41)
  %43 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %44 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PIIX4_SMBHSTDAT0, align 4
  %47 = load i8, i8* %9, align 1
  %48 = call i32 @bus_write_1(i32 %45, i32 %46, i8 signext %47)
  %49 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %50 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_BDATA, align 4
  %51 = call i32 @intsmb_start(%struct.intsmb_softc* %49, i32 %50, i32 0)
  %52 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %53 = call i32 @intsmb_stop(%struct.intsmb_softc* %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %55 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %54)
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %24, %20
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i8 signext) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

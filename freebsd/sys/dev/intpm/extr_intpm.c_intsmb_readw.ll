; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@LSB = common dso_local global i8 0, align 1
@PIIX4_SMBHSTCMD = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_WDATA = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT0 = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8, i16*)* @intsmb_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_readw(i32 %0, i8 signext %1, i8 signext %2, i16* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i16*, align 8
  %10 = alloca %struct.intsmb_softc*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i16* %3, i16** %9, align 8
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
  br label %72

24:                                               ; preds = %4
  %25 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %26 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* @LSB, align 1
  %32 = sext i8 %31 to i32
  %33 = or i32 %30, %32
  %34 = trunc i32 %33 to i8
  %35 = call i32 @bus_write_1(i32 %27, i32 %28, i8 signext %34)
  %36 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %37 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PIIX4_SMBHSTCMD, align 4
  %40 = load i8, i8* %8, align 1
  %41 = call i32 @bus_write_1(i32 %38, i32 %39, i8 signext %40)
  %42 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %43 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_WDATA, align 4
  %44 = call i32 @intsmb_start(%struct.intsmb_softc* %42, i32 %43, i32 0)
  %45 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %46 = call i32 @intsmb_stop(%struct.intsmb_softc* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %24
  %50 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %51 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PIIX4_SMBHSTDAT0, align 4
  %54 = call i32 @bus_read_1(i32 %52, i32 %53)
  %55 = trunc i32 %54 to i16
  %56 = load i16*, i16** %9, align 8
  store i16 %55, i16* %56, align 2
  %57 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %58 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PIIX4_SMBHSTDAT1, align 4
  %61 = call i32 @bus_read_1(i32 %59, i32 %60)
  %62 = shl i32 %61, 8
  %63 = load i16*, i16** %9, align 8
  %64 = load i16, i16* %63, align 2
  %65 = sext i16 %64 to i32
  %66 = or i32 %65, %62
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %63, align 2
  br label %68

68:                                               ; preds = %49, %24
  %69 = load %struct.intsmb_softc*, %struct.intsmb_softc** %10, align 8
  %70 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %69)
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %20
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_write_1(i32, i32, i8 signext) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

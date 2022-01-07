; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/intpm/extr_intpm.c_intsmb_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsmb_softc = type { i32 }

@PIIX4_SMBHSTCNT = common dso_local global i32 0, align 4
@PIIX4_SMBHSTADD = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCMD = common dso_local global i32 0, align 4
@PIIX4_SMBHSTCNT_PROT_BLOCK = common dso_local global i32 0, align 4
@PIIX4_SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBBLOCKTRANS_MAX = common dso_local global i32 0, align 4
@PIIX4_SMBBLKDAT = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @intsmb_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intsmb_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.intsmb_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.intsmb_softc* @device_get_softc(i32 %17)
  store %struct.intsmb_softc* %18, %struct.intsmb_softc** %12, align 8
  %19 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %20 = call i32 @INTSMB_LOCK(%struct.intsmb_softc* %19)
  %21 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %22 = call i32 @intsmb_free(%struct.intsmb_softc* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %27 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %26)
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %93

29:                                               ; preds = %5
  %30 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %31 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PIIX4_SMBHSTCNT, align 4
  %34 = call i32 @bus_read_1(i32 %32, i32 %33)
  %35 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %36 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PIIX4_SMBHSTADD, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LSB, align 4
  %41 = or i32 %39, %40
  %42 = trunc i32 %41 to i8
  %43 = call i32 @bus_write_1(i32 %37, i32 %38, i8 signext %42)
  %44 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %45 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PIIX4_SMBHSTCMD, align 4
  %48 = load i8, i8* %9, align 1
  %49 = call i32 @bus_write_1(i32 %46, i32 %47, i8 signext %48)
  %50 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %51 = load i32, i32* @PIIX4_SMBHSTCNT_PROT_BLOCK, align 4
  %52 = call i32 @intsmb_start(%struct.intsmb_softc* %50, i32 %51, i32 0)
  %53 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %54 = call i32 @intsmb_stop(%struct.intsmb_softc* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %29
  %58 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %59 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PIIX4_SMBHSTDAT0, align 4
  %62 = call i32 @bus_read_1(i32 %60, i32 %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %86

65:                                               ; preds = %57
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* @SMBBLOCKTRANS_MAX, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %86

69:                                               ; preds = %65
  %70 = load i32, i32* %16, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 %70, i32* %71, align 4
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %82, %69
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %78 = getelementptr inbounds %struct.intsmb_softc, %struct.intsmb_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @PIIX4_SMBBLKDAT, align 4
  %81 = call i32 @bus_read_1(i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %72

85:                                               ; preds = %72
  br label %88

86:                                               ; preds = %65, %57
  %87 = load i32, i32* @SMB_EBUSERR, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %85
  br label %89

89:                                               ; preds = %88, %29
  %90 = load %struct.intsmb_softc*, %struct.intsmb_softc** %12, align 8
  %91 = call i32 @INTSMB_UNLOCK(%struct.intsmb_softc* %90)
  %92 = load i32, i32* %13, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %25
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.intsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @INTSMB_LOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @intsmb_free(%struct.intsmb_softc*) #1

declare dso_local i32 @INTSMB_UNLOCK(%struct.intsmb_softc*) #1

declare dso_local i32 @bus_read_1(i32, i32) #1

declare dso_local i32 @bus_write_1(i32, i32, i8 signext) #1

declare dso_local i32 @intsmb_start(%struct.intsmb_softc*, i32, i32) #1

declare dso_local i32 @intsmb_stop(%struct.intsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

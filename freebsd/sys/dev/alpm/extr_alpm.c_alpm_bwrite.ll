; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alpm/extr_alpm.c_alpm_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alpm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBCMD = common dso_local global i32 0, align 4
@SMBWRBLOCK = common dso_local global i32 0, align 4
@SMB_BLK_CLR = common dso_local global i32 0, align 4
@SMBHDATA = common dso_local global i32 0, align 4
@SMBHBLOCK = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBSTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"alpm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32, i8*)* @alpm_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpm_bwrite(i32 %0, i32 %1, i8 signext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.alpm_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @device_get_softc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.alpm_softc*
  store %struct.alpm_softc* %17, %struct.alpm_softc** %12, align 8
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  %22 = icmp sgt i32 %21, 32
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %5
  %24 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %93

25:                                               ; preds = %20
  %26 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %27 = call i32 @ALPM_LOCK(%struct.alpm_softc* %26)
  %28 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %29 = call i32 @alpm_clear(%struct.alpm_softc* %28)
  %30 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %31 = call i32 @alpm_idle(%struct.alpm_softc* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %25
  %34 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %35 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %34)
  %36 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %36, i32* %6, align 4
  br label %93

37:                                               ; preds = %25
  %38 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %39 = load i32, i32* @SMBHADDR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @LSB, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %38, i32 %39, i32 %43)
  %45 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %46 = load i32, i32* @SMBCMD, align 4
  %47 = load i32, i32* @SMBWRBLOCK, align 4
  %48 = load i32, i32* @SMB_BLK_CLR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %45, i32 %46, i32 %49)
  %51 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %52 = load i32, i32* @SMBHDATA, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %51, i32 %52, i32 %53)
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %70, %37
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %55
  %60 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %61 = load i32, i32* @SMBHBLOCK, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %60, i32 %61, i32 %67)
  %69 = call i32 @DELAY(i32 2)
  br label %70

70:                                               ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %55

73:                                               ; preds = %55
  %74 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %75 = load i32, i32* @SMBHCMD, align 4
  %76 = load i8, i8* %9, align 1
  %77 = sext i8 %76 to i32
  %78 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %74, i32 %75, i32 %77)
  %79 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %80 = load i32, i32* @SMBSTART, align 4
  %81 = call i32 @ALPM_SMBOUTB(%struct.alpm_softc* %79, i32 %80, i32 255)
  %82 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %83 = call i32 @alpm_wait(%struct.alpm_softc* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i8, i8* %9, align 1
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i8 signext %86, i32 %87)
  %89 = call i32 @ALPM_DEBUG(i32 %88)
  %90 = load %struct.alpm_softc*, %struct.alpm_softc** %12, align 8
  %91 = call i32 @ALPM_UNLOCK(%struct.alpm_softc* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %73, %33, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @ALPM_LOCK(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_clear(%struct.alpm_softc*) #1

declare dso_local i32 @alpm_idle(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_UNLOCK(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_SMBOUTB(%struct.alpm_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @alpm_wait(%struct.alpm_softc*) #1

declare dso_local i32 @ALPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

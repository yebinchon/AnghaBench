; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHBLOCK = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_BLOCK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [58 x i8] c"viapm: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32, i8*)* @viasmb_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_bwrite(i32 %0, i32 %1, i8 signext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.viapm_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @device_get_softc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.viapm_softc*
  store %struct.viapm_softc* %17, %struct.viapm_softc** %12, align 8
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
  %26 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %27 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %26)
  %28 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %29 = call i32 @viapm_clear(%struct.viapm_softc* %28)
  %30 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %31 = call i64 @viapm_busy(%struct.viapm_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %35 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %34)
  %36 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %36, i32* %6, align 4
  br label %93

37:                                               ; preds = %25
  %38 = load i32, i32* @SMBHADDR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @LSB, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = trunc i32 %42 to i8
  %44 = call i32 @VIAPM_OUTB(i32 %38, i8 signext %43)
  %45 = load i32, i32* @SMBHCMD, align 4
  %46 = load i8, i8* %9, align 1
  %47 = call i32 @VIAPM_OUTB(i32 %45, i8 signext %46)
  %48 = load i32, i32* @SMBHDATA0, align 4
  %49 = load i32, i32* %10, align 4
  %50 = trunc i32 %49 to i8
  %51 = call i32 @VIAPM_OUTB(i32 %48, i8 signext %50)
  %52 = load i32, i32* @SMBHCTRL, align 4
  %53 = call i32 @VIAPM_INB(i32 %52)
  store i32 %53, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %67, %37
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* @SMBHBLOCK, align 4
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i32 @VIAPM_OUTB(i32 %59, i8 signext %64)
  %66 = call i32 @DELAY(i32 2)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %54

70:                                               ; preds = %54
  %71 = load i32, i32* @SMBHCMD, align 4
  %72 = load i8, i8* %9, align 1
  %73 = call i32 @VIAPM_OUTB(i32 %71, i8 signext %72)
  %74 = load i32, i32* @SMBHCTRL, align 4
  %75 = load i8, i8* @SMBHCTRL_START, align 1
  %76 = sext i8 %75 to i32
  %77 = load i8, i8* @SMBHCTRL_BLOCK, align 1
  %78 = sext i8 %77 to i32
  %79 = or i32 %76, %78
  %80 = trunc i32 %79 to i8
  %81 = call i32 @VIAPM_OUTB(i32 %74, i8 signext %80)
  %82 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %83 = call i32 @viapm_wait(%struct.viapm_softc* %82)
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i8, i8* %9, align 1
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %85, i8 signext %86, i32 %87)
  %89 = call i32 @VIAPM_DEBUG(i32 %88)
  %90 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %91 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %70, %33, %23
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

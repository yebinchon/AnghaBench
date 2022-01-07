; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viasmb_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMBHADDR = common dso_local global i32 0, align 4
@LSB = common dso_local global i32 0, align 4
@SMBHCMD = common dso_local global i32 0, align 4
@SMBHCTRL = common dso_local global i32 0, align 4
@SMBHCTRL_START = common dso_local global i8 0, align 1
@SMBHCTRL_BLOCK = common dso_local global i8 0, align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMBHDATA0 = common dso_local global i32 0, align 4
@SMBHBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"viapm: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @viasmb_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viasmb_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.viapm_softc*, align 8
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
  %18 = call i64 @device_get_softc(i32 %17)
  %19 = inttoptr i64 %18 to %struct.viapm_softc*
  store %struct.viapm_softc* %19, %struct.viapm_softc** %12, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 32
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %5
  %28 = load i32, i32* @SMB_EINVAL, align 4
  store i32 %28, i32* %6, align 4
  br label %106

29:                                               ; preds = %23
  %30 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %31 = call i32 @VIAPM_LOCK(%struct.viapm_softc* %30)
  %32 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %33 = call i32 @viapm_clear(%struct.viapm_softc* %32)
  %34 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %35 = call i64 @viapm_busy(%struct.viapm_softc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %39 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %38)
  %40 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %40, i32* %6, align 4
  br label %106

41:                                               ; preds = %29
  %42 = load i32, i32* @SMBHADDR, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @LSB, align 4
  %45 = or i32 %43, %44
  %46 = trunc i32 %45 to i8
  %47 = call i32 @VIAPM_OUTB(i32 %42, i8 signext %46)
  %48 = load i32, i32* @SMBHCMD, align 4
  %49 = load i8, i8* %9, align 1
  %50 = call i32 @VIAPM_OUTB(i32 %48, i8 signext %49)
  %51 = load i32, i32* @SMBHCTRL, align 4
  %52 = load i8, i8* @SMBHCTRL_START, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @SMBHCTRL_BLOCK, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i8
  %58 = call i32 @VIAPM_OUTB(i32 %51, i8 signext %57)
  %59 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %60 = call i32 @viapm_wait(%struct.viapm_softc* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* @SMB_ENOERR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %41
  br label %95

64:                                               ; preds = %41
  %65 = load i32, i32* @SMBHDATA0, align 4
  %66 = call i32 @VIAPM_INB(i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* @SMBHCTRL, align 4
  %68 = call i32 @VIAPM_INB(i32 %67)
  store i32 %68, i32* %15, align 4
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %89, %64
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load i32, i32* @SMBHBLOCK, align 4
  %75 = call i32 @VIAPM_INB(i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %73
  %81 = load i32, i32* %13, align 4
  %82 = trunc i32 %81 to i8
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

87:                                               ; preds = %80, %73
  %88 = call i32 @DELAY(i32 2)
  br label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %69

92:                                               ; preds = %69
  %93 = load i32, i32* %14, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %63
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i8, i8* %9, align 1
  %100 = load i32, i32* %16, align 4
  %101 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %98, i8 signext %99, i32 %100)
  %102 = call i32 @VIAPM_DEBUG(i32 %101)
  %103 = load %struct.viapm_softc*, %struct.viapm_softc** %12, align 8
  %104 = call i32 @VIAPM_UNLOCK(%struct.viapm_softc* %103)
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %95, %37, %27
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @VIAPM_LOCK(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

declare dso_local i64 @viapm_busy(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_UNLOCK(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_OUTB(i32, i8 signext) #1

declare dso_local i32 @viapm_wait(%struct.viapm_softc*) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

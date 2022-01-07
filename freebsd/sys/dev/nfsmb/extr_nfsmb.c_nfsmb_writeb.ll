; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_writeb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_writeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32 }

@SMB_CMD = common dso_local global i32 0, align 4
@SMB_DATA = common dso_local global i32 0, align 4
@SMB_ADDR = common dso_local global i32 0, align 4
@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_PRTCL_WRITE = common dso_local global i32 0, align 4
@SMB_PRTCL_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"nfsmb: WRITEB to 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8)* @nfsmb_writeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmb_writeb(i32 %0, i32 %1, i8 signext %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.nfsmb_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.nfsmb_softc*
  store %struct.nfsmb_softc* %13, %struct.nfsmb_softc** %9, align 8
  %14 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %15 = call i32 @NFSMB_LOCK(%struct.nfsmb_softc* %14)
  %16 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %17 = load i32, i32* @SMB_CMD, align 4
  %18 = load i8, i8* %7, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %16, i32 %17, i32 %19)
  %21 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %22 = load i32, i32* @SMB_DATA, align 4
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %21, i32 %22, i32 %24)
  %26 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %27 = load i32, i32* @SMB_ADDR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %31 = load i32, i32* @SMB_PRTCL, align 4
  %32 = load i32, i32* @SMB_PRTCL_WRITE, align 4
  %33 = load i32, i32* @SMB_PRTCL_BYTE_DATA, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %30, i32 %31, i32 %34)
  %36 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %37 = call i32 @nfsmb_wait(%struct.nfsmb_softc* %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i8, i8* %7, align 1
  %40 = load i8, i8* %8, align 1
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %38, i8 signext %39, i8 signext %40, i32 %41)
  %43 = call i32 @NFSMB_DEBUG(i32 %42)
  %44 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %45 = call i32 @NFSMB_UNLOCK(%struct.nfsmb_softc* %44)
  %46 = load i32, i32* %10, align 4
  ret i32 %46
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @NFSMB_LOCK(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc*, i32, i32) #1

declare dso_local i32 @nfsmb_wait(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 signext, i32) #1

declare dso_local i32 @NFSMB_UNLOCK(%struct.nfsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

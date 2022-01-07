; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_readb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_readb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32 }

@SMB_CMD = common dso_local global i32 0, align 4
@SMB_ADDR = common dso_local global i32 0, align 4
@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_PRTCL_READ = common dso_local global i32 0, align 4
@SMB_PRTCL_BYTE_DATA = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"nfsmb: READB from 0x%x, cmd=0x%x, byte=0x%x, error=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i8*)* @nfsmb_readb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmb_readb(i32 %0, i32 %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nfsmb_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
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
  %22 = load i32, i32* @SMB_ADDR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %26 = load i32, i32* @SMB_PRTCL, align 4
  %27 = load i32, i32* @SMB_PRTCL_READ, align 4
  %28 = load i32, i32* @SMB_PRTCL_BYTE_DATA, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %25, i32 %26, i32 %29)
  %31 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %32 = call i32 @nfsmb_wait(%struct.nfsmb_softc* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @SMB_ENOERR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %4
  %36 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %37 = load i32, i32* @SMB_DATA, align 4
  %38 = call signext i8 @NFSMB_SMBINB(%struct.nfsmb_softc* %36, i32 %37)
  %39 = load i8*, i8** %8, align 8
  store i8 %38, i8* %39, align 1
  br label %40

40:                                               ; preds = %35, %4
  %41 = load i32, i32* %6, align 4
  %42 = load i8, i8* %7, align 1
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %41, i8 signext %42, i8 zeroext %44, i32 %45)
  %47 = call i32 @NFSMB_DEBUG(i32 %46)
  %48 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %9, align 8
  %49 = call i32 @NFSMB_UNLOCK(%struct.nfsmb_softc* %48)
  %50 = load i32, i32* %10, align 4
  ret i32 %50
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @NFSMB_LOCK(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc*, i32, i32) #1

declare dso_local i32 @nfsmb_wait(%struct.nfsmb_softc*) #1

declare dso_local signext i8 @NFSMB_SMBINB(%struct.nfsmb_softc*, i32) #1

declare dso_local i32 @NFSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i8 signext, i8 zeroext, i32) #1

declare dso_local i32 @NFSMB_UNLOCK(%struct.nfsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

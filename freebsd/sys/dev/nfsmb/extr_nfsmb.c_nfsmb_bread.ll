; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_CMD = common dso_local global i32 0, align 4
@SMB_ADDR = common dso_local global i32 0, align 4
@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_PRTCL_READ = common dso_local global i32 0, align 4
@SMB_PRTCL_BLOCK_DATA = common dso_local global i32 0, align 4
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_BCNT = common dso_local global i64 0, align 8
@SMB_DATA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"nfsmb: READBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32*, i8*)* @nfsmb_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmb_bread(i32 %0, i32 %1, i8 signext %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nfsmb_softc*, align 8
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
  %19 = inttoptr i64 %18 to %struct.nfsmb_softc*
  store %struct.nfsmb_softc* %19, %struct.nfsmb_softc** %12, align 8
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
  br label %95

29:                                               ; preds = %23
  %30 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %31 = call i32 @NFSMB_LOCK(%struct.nfsmb_softc* %30)
  %32 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %33 = load i32, i32* @SMB_CMD, align 4
  %34 = load i8, i8* %9, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %32, i32 %33, i32 %35)
  %37 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %38 = load i32, i32* @SMB_ADDR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %42 = load i32, i32* @SMB_PRTCL, align 4
  %43 = load i32, i32* @SMB_PRTCL_READ, align 4
  %44 = load i32, i32* @SMB_PRTCL_BLOCK_DATA, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc* %41, i32 %42, i32 %45)
  %47 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %48 = call i32 @nfsmb_wait(%struct.nfsmb_softc* %47)
  store i32 %48, i32* %16, align 4
  %49 = load i32, i32* @SMB_ENOERR, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %29
  %52 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %53 = load i64, i64* @SMB_BCNT, align 8
  %54 = call i32 @NFSMB_SMBINB(%struct.nfsmb_softc* %52, i64 %53)
  store i32 %54, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %55

55:                                               ; preds = %78, %51
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %61 = load i64, i64* @SMB_DATA, align 8
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = call i32 @NFSMB_SMBINB(%struct.nfsmb_softc* %60, i64 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = trunc i32 %71 to i8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %15, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 %72, i8* %76, align 1
  br label %77

77:                                               ; preds = %70, %59
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %55

81:                                               ; preds = %55
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %10, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %29
  %85 = load i32, i32* %8, align 4
  %86 = load i32*, i32** %10, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i8, i8* %9, align 1
  %89 = load i32, i32* %16, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %87, i8 signext %88, i32 %89)
  %91 = call i32 @NFSMB_DEBUG(i32 %90)
  %92 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %12, align 8
  %93 = call i32 @NFSMB_UNLOCK(%struct.nfsmb_softc* %92)
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %84, %27
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @NFSMB_LOCK(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_SMBOUTB(%struct.nfsmb_softc*, i32, i32) #1

declare dso_local i32 @nfsmb_wait(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_SMBINB(%struct.nfsmb_softc*, i64) #1

declare dso_local i32 @NFSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @NFSMB_UNLOCK(%struct.nfsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

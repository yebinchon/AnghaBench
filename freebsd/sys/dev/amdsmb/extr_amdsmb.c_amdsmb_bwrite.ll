; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_bwrite.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_bwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32 }

@SMB_EINVAL = common dso_local global i32 0, align 4
@SMB_CMD = common dso_local global i64 0, align 8
@SMB_BCNT = common dso_local global i64 0, align 8
@SMB_DATA = common dso_local global i64 0, align 8
@SMB_ADDR = common dso_local global i64 0, align 8
@SMB_PRTCL = common dso_local global i64 0, align 8
@SMB_PRTCL_WRITE = common dso_local global i32 0, align 4
@SMB_PRTCL_BLOCK_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"amdsmb: WRITEBLK to 0x%x, count=0x%x, cmd=0x%x, error=0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8, i32, i8*)* @amdsmb_bwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_bwrite(i32 %0, i32 %1, i8 signext %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.amdsmb_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i64 @device_get_softc(i32 %15)
  %17 = inttoptr i64 %16 to %struct.amdsmb_softc*
  store %struct.amdsmb_softc* %17, %struct.amdsmb_softc** %12, align 8
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
  br label %79

25:                                               ; preds = %20
  %26 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %27 = call i32 @AMDSMB_LOCK(%struct.amdsmb_softc* %26)
  %28 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %29 = load i64, i64* @SMB_CMD, align 8
  %30 = load i8, i8* %9, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %28, i64 %29, i32 %31)
  %33 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %34 = load i64, i64* @SMB_BCNT, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %33, i64 %34, i32 %35)
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %54, %25
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %43 = load i64, i64* @SMB_DATA, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %42, i64 %46, i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %59 = load i64, i64* @SMB_ADDR, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %58, i64 %59, i32 %60)
  %62 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %63 = load i64, i64* @SMB_PRTCL, align 8
  %64 = load i32, i32* @SMB_PRTCL_WRITE, align 4
  %65 = load i32, i32* @SMB_PRTCL_BLOCK_DATA, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @amdsmb_ec_write(%struct.amdsmb_softc* %62, i64 %63, i32 %66)
  %68 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %69 = call i32 @amdsmb_wait(%struct.amdsmb_softc* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8, i8* %9, align 1
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %71, i8 signext %72, i32 %73)
  %75 = call i32 @AMDSMB_DEBUG(i32 %74)
  %76 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %12, align 8
  %77 = call i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc* %76)
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %57, %23
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @AMDSMB_LOCK(%struct.amdsmb_softc*) #1

declare dso_local i32 @amdsmb_ec_write(%struct.amdsmb_softc*, i64, i32) #1

declare dso_local i32 @amdsmb_wait(%struct.amdsmb_softc*) #1

declare dso_local i32 @AMDSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i8 signext, i32) #1

declare dso_local i32 @AMDSMB_UNLOCK(%struct.amdsmb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

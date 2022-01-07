; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdpm/extr_amdpm.c_amdpm_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdpm_softc = type { i32 }

@AMDSMB_GLOBAL_STATUS = common dso_local global i32 0, align 4
@AMDSMB_GS_HST_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"amdpm: STS=0x%x (count=%d)\0A\00", align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@AMDSMB_GS_ABRT_STS = common dso_local global i32 0, align 4
@SMB_EABORT = common dso_local global i32 0, align 4
@AMDSMB_GS_COL_STS = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@AMDSMB_GS_PRERR_STS = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdpm_softc*)* @amdpm_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdpm_wait(%struct.amdpm_softc* %0) #0 {
  %2 = alloca %struct.amdpm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdpm_softc* %0, %struct.amdpm_softc** %2, align 8
  store i32 10000, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.amdpm_softc*, %struct.amdpm_softc** %2, align 8
  %7 = call i32 @AMDPM_LOCK_ASSERT(%struct.amdpm_softc* %6)
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %8
  %13 = call i32 @DELAY(i32 10)
  %14 = load %struct.amdpm_softc*, %struct.amdpm_softc** %2, align 8
  %15 = load i32, i32* @AMDSMB_GLOBAL_STATUS, align 4
  %16 = call i32 @AMDPM_SMBINW(%struct.amdpm_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @AMDSMB_GS_HST_STS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %23

22:                                               ; preds = %12
  br label %8

23:                                               ; preds = %21, %8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  %27 = call i32 @AMDPM_DEBUG(i32 %26)
  %28 = load i32, i32* @SMB_ENOERR, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load i32, i32* @SMB_ETIMEOUT, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %23
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @AMDSMB_GS_ABRT_STS, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @SMB_EABORT, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AMDSMB_GS_COL_STS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @SMB_ENOACK, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @AMDSMB_GS_PRERR_STS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @SMB_EBUSERR, align 4
  %60 = load i32, i32* %5, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @SMB_ENOERR, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.amdpm_softc*, %struct.amdpm_softc** %2, align 8
  %68 = call i32 @amdpm_clear(%struct.amdpm_softc* %67)
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local i32 @AMDPM_LOCK_ASSERT(%struct.amdpm_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMDPM_SMBINW(%struct.amdpm_softc*, i32) #1

declare dso_local i32 @AMDPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @amdpm_clear(%struct.amdpm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

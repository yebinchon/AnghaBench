; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/viapm/extr_viapm.c_viapm_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viapm_softc = type { i32 }

@SMBHST = common dso_local global i32 0, align 4
@SMBHST_BUSY = common dso_local global i32 0, align 4
@SMBHST_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"viapm: SMBHST=0x%x\0A\00", align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@SMBHST_FAILED = common dso_local global i32 0, align 4
@SMB_EABORT = common dso_local global i32 0, align 4
@SMBHST_COLLID = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@SMBHST_ERROR = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viapm_softc*)* @viapm_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viapm_wait(%struct.viapm_softc* %0) #0 {
  %2 = alloca %struct.viapm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.viapm_softc* %0, %struct.viapm_softc** %2, align 8
  store i32 10000, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.viapm_softc*, %struct.viapm_softc** %2, align 8
  %7 = call i32 @VIAPM_LOCK_ASSERT(%struct.viapm_softc* %6)
  br label %8

8:                                                ; preds = %26, %1
  %9 = load i32, i32* %3, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = call i32 @DELAY(i32 10)
  %14 = load i32, i32* @SMBHST, align 4
  %15 = call i32 @VIAPM_INB(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SMBHST_BUSY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @SMBHST_INTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %20, %12
  br label %8

27:                                               ; preds = %25, %8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = call i32 @VIAPM_DEBUG(i32 %29)
  %31 = load i32, i32* @SMB_ENOERR, align 4
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %3, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @SMB_ETIMEOUT, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @SMBHST_FAILED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @SMB_EABORT, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SMBHST_COLLID, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @SMB_ENOACK, align 4
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SMBHST_ERROR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @SMB_EBUSERR, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SMB_ENOERR, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.viapm_softc*, %struct.viapm_softc** %2, align 8
  %71 = call i32 @viapm_abort(%struct.viapm_softc* %70)
  br label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.viapm_softc*, %struct.viapm_softc** %2, align 8
  %74 = call i32 @viapm_clear(%struct.viapm_softc* %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @VIAPM_LOCK_ASSERT(%struct.viapm_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @VIAPM_INB(i32) #1

declare dso_local i32 @VIAPM_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @viapm_abort(%struct.viapm_softc*) #1

declare dso_local i32 @viapm_clear(%struct.viapm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdsmb/extr_amdsmb.c_amdsmb_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdsmb_softc = type { i32 }

@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@SMB_STS = common dso_local global i32 0, align 4
@SMB_STS_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"amdsmb: STS=0x%x\0A\00", align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMB_ENOTSUPP = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdsmb_softc*)* @amdsmb_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdsmb_wait(%struct.amdsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdsmb_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdsmb_softc* %0, %struct.amdsmb_softc** %3, align 8
  %8 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %3, align 8
  %9 = call i32 @AMDSMB_LOCK_ASSERT(%struct.amdsmb_softc* %8)
  %10 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %3, align 8
  %11 = load i32, i32* @SMB_PRTCL, align 4
  %12 = call i32 @amdsmb_ec_read(%struct.amdsmb_softc* %10, i32 %11, i64* %5)
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %1
  store i32 10000, i32* %7, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = call i32 @DELAY(i32 500)
  %18 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %3, align 8
  %19 = load i32, i32* @SMB_PRTCL, align 4
  %20 = call i32 @amdsmb_ec_read(%struct.amdsmb_softc* %18, i32 %19, i64* %5)
  br label %21

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %7, align 4
  %27 = icmp ne i32 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %16, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.amdsmb_softc*, %struct.amdsmb_softc** %3, align 8
  %38 = load i32, i32* @SMB_STS, align 4
  %39 = call i32 @amdsmb_ec_read(%struct.amdsmb_softc* %37, i32 %38, i64* %4)
  %40 = load i64, i64* @SMB_STS_STATUS, align 8
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %43)
  %45 = call i32 @AMDSMB_DEBUG(i32 %44)
  %46 = load i64, i64* %4, align 8
  switch i64 %46, label %57 [
    i64 129, label %47
    i64 132, label %49
    i64 134, label %51
    i64 128, label %53
    i64 131, label %55
    i64 133, label %55
    i64 130, label %55
  ]

47:                                               ; preds = %36
  %48 = load i32, i32* @SMB_ENOERR, align 4
  store i32 %48, i32* %6, align 4
  br label %59

49:                                               ; preds = %36
  %50 = load i32, i32* @SMB_ENOACK, align 4
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %36
  %52 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %52, i32* %6, align 4
  br label %59

53:                                               ; preds = %36
  %54 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %54, i32* %6, align 4
  br label %59

55:                                               ; preds = %36, %36, %36
  %56 = load i32, i32* @SMB_ENOTSUPP, align 4
  store i32 %56, i32* %6, align 4
  br label %59

57:                                               ; preds = %36
  %58 = load i32, i32* @SMB_EBUSERR, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %55, %53, %51, %49, %47
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %33
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @AMDSMB_LOCK_ASSERT(%struct.amdsmb_softc*) #1

declare dso_local i32 @amdsmb_ec_read(%struct.amdsmb_softc*, i32, i64*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @AMDSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

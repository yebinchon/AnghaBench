; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nfsmb/extr_nfsmb.c_nfsmb_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmb_softc = type { i32 }

@SMB_PRTCL = common dso_local global i32 0, align 4
@SMB_ETIMEOUT = common dso_local global i32 0, align 4
@SMB_STS = common dso_local global i32 0, align 4
@SMB_STS_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"nfsmb: STS=0x%x\0A\00", align 1
@SMB_ENOERR = common dso_local global i32 0, align 4
@SMB_ENOACK = common dso_local global i32 0, align 4
@SMB_EBUSY = common dso_local global i32 0, align 4
@SMB_ENOTSUPP = common dso_local global i32 0, align 4
@SMB_EBUSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmb_softc*)* @nfsmb_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsmb_wait(%struct.nfsmb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsmb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfsmb_softc* %0, %struct.nfsmb_softc** %3, align 8
  %7 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %3, align 8
  %8 = call i32 @NFSMB_LOCK_ASSERT(%struct.nfsmb_softc* %7)
  %9 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %3, align 8
  %10 = load i32, i32* @SMB_PRTCL, align 4
  %11 = call i32 @NFSMB_SMBINB(%struct.nfsmb_softc* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  store i32 10000, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %13
  %15 = call i32 @DELAY(i32 500)
  br label %16

16:                                               ; preds = %14
  %17 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %3, align 8
  %18 = load i32, i32* @SMB_PRTCL, align 4
  %19 = call i32 @NFSMB_SMBINB(%struct.nfsmb_softc* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %22, 0
  br label %25

25:                                               ; preds = %21, %16
  %26 = phi i1 [ false, %16 ], [ %24, %21 ]
  br i1 %26, label %14, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %31, i32* %2, align 4
  br label %57

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.nfsmb_softc*, %struct.nfsmb_softc** %3, align 8
  %35 = load i32, i32* @SMB_STS, align 4
  %36 = call i32 @NFSMB_SMBINB(%struct.nfsmb_softc* %34, i32 %35)
  %37 = load i32, i32* @SMB_STS_STATUS, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = call i32 @NFSMB_DEBUG(i32 %40)
  %42 = load i32, i32* %4, align 4
  switch i32 %42, label %53 [
    i32 129, label %43
    i32 132, label %45
    i32 134, label %47
    i32 128, label %49
    i32 131, label %51
    i32 133, label %51
    i32 130, label %51
  ]

43:                                               ; preds = %33
  %44 = load i32, i32* @SMB_ENOERR, align 4
  store i32 %44, i32* %5, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load i32, i32* @SMB_ENOACK, align 4
  store i32 %46, i32* %5, align 4
  br label %55

47:                                               ; preds = %33
  %48 = load i32, i32* @SMB_EBUSY, align 4
  store i32 %48, i32* %5, align 4
  br label %55

49:                                               ; preds = %33
  %50 = load i32, i32* @SMB_ETIMEOUT, align 4
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %33, %33, %33
  %52 = load i32, i32* @SMB_ENOTSUPP, align 4
  store i32 %52, i32* %5, align 4
  br label %55

53:                                               ; preds = %33
  %54 = load i32, i32* @SMB_EBUSERR, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %51, %49, %47, %45, %43
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %55, %30
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @NFSMB_LOCK_ASSERT(%struct.nfsmb_softc*) #1

declare dso_local i32 @NFSMB_SMBINB(%struct.nfsmb_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @NFSMB_DEBUG(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

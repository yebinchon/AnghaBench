; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_readrids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_readrids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i16, i32 }
%struct.aironet_ioctl = type { i32, i32, i64 }
%struct.an_ltv_gen = type { i32 }

@AN_RID_CAPABILITIES = common dso_local global i16 0, align 2
@AN_RID_GENCONFIG = common dso_local global i16 0, align 2
@AN_RID_SSIDLIST = common dso_local global i16 0, align 2
@AN_RID_APLIST = common dso_local global i16 0, align 2
@AN_RID_DRVNAME = common dso_local global i16 0, align 2
@AN_RID_ENCAPPROTO = common dso_local global i16 0, align 2
@AN_RID_WEP_TEMP = common dso_local global i16 0, align 2
@AN_RID_WEP_PERM = common dso_local global i16 0, align 2
@AN_RID_STATUS = common dso_local global i16 0, align 2
@AN_RID_32BITS_DELTA = common dso_local global i16 0, align 2
@AN_RID_32BITS_CUM = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@AN_MAX_DATALEN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, %struct.aironet_ioctl*)* @readrids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readrids(%struct.ifnet* %0, %struct.aironet_ioctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.aironet_ioctl*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.an_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store %struct.aironet_ioctl* %1, %struct.aironet_ioctl** %5, align 8
  %9 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %10 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %34 [
    i32 138, label %12
    i32 137, label %14
    i32 134, label %16
    i32 130, label %18
    i32 136, label %20
    i32 135, label %22
    i32 128, label %24
    i32 129, label %26
    i32 133, label %28
    i32 131, label %30
    i32 132, label %32
  ]

12:                                               ; preds = %2
  %13 = load i16, i16* @AN_RID_CAPABILITIES, align 2
  store i16 %13, i16* %6, align 2
  br label %35

14:                                               ; preds = %2
  %15 = load i16, i16* @AN_RID_GENCONFIG, align 2
  store i16 %15, i16* %6, align 2
  br label %35

16:                                               ; preds = %2
  %17 = load i16, i16* @AN_RID_SSIDLIST, align 2
  store i16 %17, i16* %6, align 2
  br label %35

18:                                               ; preds = %2
  %19 = load i16, i16* @AN_RID_APLIST, align 2
  store i16 %19, i16* %6, align 2
  br label %35

20:                                               ; preds = %2
  %21 = load i16, i16* @AN_RID_DRVNAME, align 2
  store i16 %21, i16* %6, align 2
  br label %35

22:                                               ; preds = %2
  %23 = load i16, i16* @AN_RID_ENCAPPROTO, align 2
  store i16 %23, i16* %6, align 2
  br label %35

24:                                               ; preds = %2
  %25 = load i16, i16* @AN_RID_WEP_TEMP, align 2
  store i16 %25, i16* %6, align 2
  br label %35

26:                                               ; preds = %2
  %27 = load i16, i16* @AN_RID_WEP_PERM, align 2
  store i16 %27, i16* %6, align 2
  br label %35

28:                                               ; preds = %2
  %29 = load i16, i16* @AN_RID_STATUS, align 2
  store i16 %29, i16* %6, align 2
  br label %35

30:                                               ; preds = %2
  %31 = load i16, i16* @AN_RID_32BITS_DELTA, align 2
  store i16 %31, i16* %6, align 2
  br label %35

32:                                               ; preds = %2
  %33 = load i16, i16* @AN_RID_32BITS_CUM, align 2
  store i16 %33, i16* %6, align 2
  br label %35

34:                                               ; preds = %2
  store i16 999, i16* %6, align 2
  br label %35

35:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %37, 999
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %100

42:                                               ; preds = %35
  %43 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 0
  %45 = load %struct.an_softc*, %struct.an_softc** %44, align 8
  store %struct.an_softc* %45, %struct.an_softc** %7, align 8
  %46 = load i32, i32* @AN_MAX_DATALEN, align 4
  %47 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %48 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load i16, i16* %6, align 2
  %51 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %52 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i16 %50, i16* %53, align 4
  %54 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %55 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %56 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %55, i32 0, i32 0
  %57 = bitcast %struct.TYPE_2__* %56 to %struct.an_ltv_gen*
  %58 = call i32 @an_read_record(%struct.an_softc* %54, %struct.an_ltv_gen* %57)
  %59 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %60 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 4
  %64 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %65 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %67 = call i32 @AN_UNLOCK(%struct.an_softc* %66)
  %68 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %69 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %72 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @copyout(i32* %70, i64 %73, i32 4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %42
  %77 = load i32, i32* @EFAULT, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %96

79:                                               ; preds = %42
  %80 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %81 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %84 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, 2
  %87 = load %struct.aironet_ioctl*, %struct.aironet_ioctl** %5, align 8
  %88 = getelementptr inbounds %struct.aironet_ioctl, %struct.aironet_ioctl* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @copyout(i32* %82, i64 %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %79
  %93 = load i32, i32* @EFAULT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %96

95:                                               ; preds = %79
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %95, %92, %76
  %97 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  %98 = call i32 @AN_LOCK(%struct.an_softc* %97)
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %96, %39
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @an_read_record(%struct.an_softc*, %struct.an_ltv_gen*) #1

declare dso_local i32 @AN_UNLOCK(%struct.an_softc*) #1

declare dso_local i64 @copyout(i32*, i64, i32) #1

declare dso_local i32 @AN_LOCK(%struct.an_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

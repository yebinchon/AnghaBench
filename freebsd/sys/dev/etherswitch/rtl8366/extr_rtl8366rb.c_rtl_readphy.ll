; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_readphy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_readphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32 }

@RTL8366_NUM_PHYS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@RTL8366_NUM_PHY_REG = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTL_IICBUS_RETRIES = common dso_local global i32 0, align 4
@RTL8366_PACR = common dso_local global i32 0, align 4
@RTL8366_PACR_READ = common dso_local global i32 0, align 4
@RTL8366_PADR = common dso_local global i32 0, align 4
@phy_access_retries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"rtl_readphy(): chip not responsive, retrying %d more times\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rtl_readphy\00", align 1
@RTL_IICBUS_RETRY_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"rtl_readphy()=%d: phy=%d.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @rtl_readphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_readphy(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8366rb_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %13)
  store %struct.rtl8366rb_softc* %14, %struct.rtl8366rb_softc** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %3
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %4, align 4
  br label %88

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RTL8366_NUM_PHY_REG, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %4, align 4
  br label %88

32:                                               ; preds = %26
  %33 = load i32, i32* @RTL_WAITOK, align 4
  store i32 %33, i32* %12, align 4
  %34 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %8, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @smi_acquire(%struct.rtl8366rb_softc* %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @EBUSY, align 4
  store i32 %40, i32* %4, align 4
  br label %88

41:                                               ; preds = %32
  %42 = load i32, i32* @RTL_IICBUS_RETRIES, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %70, %41
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %11, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %78

47:                                               ; preds = %43
  %48 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %8, align 8
  %49 = load i32, i32* @RTL8366_PACR, align 4
  %50 = load i32, i32* @RTL8366_PACR_READ, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @smi_write_locked(%struct.rtl8366rb_softc* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %8, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @RTL8366_PHYREG(i32 %57, i32 0, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @smi_write_locked(%struct.rtl8366rb_softc* %56, i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %55, %47
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %8, align 8
  %67 = load i32, i32* @RTL8366_PADR, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @smi_read_locked(%struct.rtl8366rb_softc* %66, i32 %67, i32* %9, i32 %68)
  store i32 %69, i32* %10, align 4
  br label %78

70:                                               ; preds = %62
  %71 = load i32, i32* @phy_access_retries, align 4
  %72 = call i32 @DEBUG_INCRVAR(i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @DPRINTF(i32 %73, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @RTL_IICBUS_RETRY_SLEEP, align 4
  %77 = call i32 @pause(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %43

78:                                               ; preds = %65, %43
  %79 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %8, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @smi_release(%struct.rtl8366rb_softc* %79, i32 %80)
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @DEVERR(i32 %82, i32 %83, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %78, %39, %30, %21
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @smi_acquire(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i32 @smi_write_locked(%struct.rtl8366rb_softc*, i32, i32, i32) #1

declare dso_local i32 @RTL8366_PHYREG(i32, i32, i32) #1

declare dso_local i32 @smi_read_locked(%struct.rtl8366rb_softc*, i32, i32*, i32) #1

declare dso_local i32 @DEBUG_INCRVAR(i32) #1

declare dso_local i32 @DPRINTF(i32, i8*, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @smi_release(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i32 @DEVERR(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

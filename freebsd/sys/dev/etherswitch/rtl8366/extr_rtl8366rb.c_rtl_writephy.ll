; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_writephy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_rtl_writephy.c"
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
@RTL8366_PACR_WRITE = common dso_local global i32 0, align 4
@phy_access_retries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"rtl_writephy(): chip not responsive, retrying %d more tiems\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rtl_writephy\00", align 1
@RTL_IICBUS_RETRY_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"rtl_writephy()=%d: phy=%d.%02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @rtl_writephy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_writephy(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl8366rb_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %14)
  store %struct.rtl8366rb_softc* %15, %struct.rtl8366rb_softc** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @RTL8366_NUM_PHYS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %4
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %5, align 4
  br label %92

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @RTL8366_NUM_PHY_REG, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %5, align 4
  br label %92

33:                                               ; preds = %27
  %34 = load i32, i32* @RTL_WAITOK, align 4
  store i32 %34, i32* %13, align 4
  %35 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %10, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @smi_acquire(%struct.rtl8366rb_softc* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EBUSY, align 4
  store i32 %41, i32* %5, align 4
  br label %92

42:                                               ; preds = %33
  %43 = load i32, i32* @RTL_IICBUS_RETRIES, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %68, %42
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %12, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %10, align 8
  %50 = load i32, i32* @RTL8366_PACR, align 4
  %51 = load i32, i32* @RTL8366_PACR_WRITE, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @smi_write_locked(%struct.rtl8366rb_softc* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %10, align 8
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @RTL8366_PHYREG(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @smi_write_locked(%struct.rtl8366rb_softc* %57, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %56, %48
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %76

68:                                               ; preds = %64
  %69 = load i32, i32* @phy_access_retries, align 4
  %70 = call i32 @DEBUG_INCRVAR(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @DPRINTF(i32 %71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @RTL_IICBUS_RETRY_SLEEP, align 4
  %75 = call i32 @pause(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %44

76:                                               ; preds = %67, %44
  %77 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %10, align 8
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @smi_release(%struct.rtl8366rb_softc* %77, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @DEVERR(i32 %80, i32 %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %76
  br label %90

88:                                               ; preds = %76
  %89 = load i32, i32* @EIO, align 4
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i32 [ 0, %87 ], [ %89, %88 ]
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %40, %31, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @smi_acquire(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i32 @smi_write_locked(%struct.rtl8366rb_softc*, i32, i32, i32) #1

declare dso_local i32 @RTL8366_PHYREG(i32, i32, i32) #1

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

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_select.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i64 }
%struct.iicbus_ivar = type { i32 }

@RTL8366SR = common dso_local global i64 0, align 8
@RTL_IICBUS_RETRIES = common dso_local global i32 0, align 4
@RTL_IICBUS_TIMEOUT = common dso_local global i32 0, align 4
@IIC_ENOACK = common dso_local global i32 0, align 4
@RTL_WAITOK = common dso_local global i32 0, align 4
@iic_select_retries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"smi_select\00", align 1
@RTL_IICBUS_RETRY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @smi_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_select(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl8366rb_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.iicbus_ivar*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %14)
  store %struct.rtl8366rb_softc* %15, %struct.rtl8366rb_softc** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @device_get_parent(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.iicbus_ivar* @IICBUS_IVAR(i32 %18)
  store %struct.iicbus_ivar* %19, %struct.iicbus_ivar** %11, align 8
  %20 = load %struct.iicbus_ivar*, %struct.iicbus_ivar** %11, align 8
  %21 = getelementptr inbounds %struct.iicbus_ivar, %struct.iicbus_ivar* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %23)
  %25 = call i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc* %24)
  %26 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %7, align 8
  %27 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @RTL8366SR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  store i32 3, i32* %13, align 4
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %13, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @device_get_parent(i32 %37)
  %39 = call i32 @device_get_parent(i32 %38)
  %40 = call i32 @IICBUS_STOP(i32 %39)
  br label %32

41:                                               ; preds = %32
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* @RTL_IICBUS_RETRIES, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %69, %42
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp ne i32 %45, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @RTL_IICBUS_TIMEOUT, align 4
  %54 = call i32 @iicbus_start(i32 %49, i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IIC_ENOACK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %70

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @RTL_WAITOK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @iic_select_retries, align 4
  %65 = call i32 @DEBUG_INCRVAR(i32 %64)
  %66 = load i32, i32* @RTL_IICBUS_RETRY_SLEEP, align 4
  %67 = call i32 @pause(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %69

68:                                               ; preds = %59
  br label %70

69:                                               ; preds = %63
  br label %44

70:                                               ; preds = %68, %58, %44
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.iicbus_ivar* @IICBUS_IVAR(i32) #1

declare dso_local i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @IICBUS_STOP(i32) #1

declare dso_local i32 @iicbus_start(i32, i32, i32) #1

declare dso_local i32 @DEBUG_INCRVAR(i32) #1

declare dso_local i32 @pause(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

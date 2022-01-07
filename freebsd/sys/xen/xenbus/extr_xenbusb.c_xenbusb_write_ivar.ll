; ModuleID = '/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_write_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/xen/xenbus/extr_xenbusb.c_xenbusb_write_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device_ivars = type { i32, i32, i32, i32 }
%struct.xenbusb_softc = type { i32 }

@XST_NIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@XenbusStateClosing = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"writing new state\00", align 1
@XDF_CONNECTING = common dso_local global i32 0, align 4
@XenbusStateClosed = common dso_local global i32 0, align 4
@XenbusStateConnected = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenbusb_write_ivar(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.xenbus_device_ivars*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xenbusb_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.xenbus_device_ivars* @device_get_ivars(i32 %15)
  store %struct.xenbus_device_ivars* %16, %struct.xenbus_device_ivars** %10, align 8
  %17 = load i32, i32* %8, align 4
  switch i32 %17, label %103 [
    i32 129, label %18
    i32 132, label %101
    i32 128, label %101
    i32 131, label %101
    i32 130, label %101
  ]

18:                                               ; preds = %4
  %19 = load i64, i64* %9, align 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %11, align 4
  %21 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %22 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %21, i32 0, i32 2
  %23 = call i32 @sx_xlock(i32* %22)
  %24 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %25 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  store i32 0, i32* %13, align 4
  br label %96

30:                                               ; preds = %18
  %31 = load i32, i32* @XST_NIL, align 4
  %32 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %33 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xs_scanf(i32 %31, i32 %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %96

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %47, %39
  %41 = load i32, i32* @XST_NIL, align 4
  %42 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %43 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @xs_printf(i32 %41, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %40, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @XenbusStateClosing, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @xenbus_dev_fatal(i32 %59, i32 %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %58, %54
  br label %96

63:                                               ; preds = %51
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %66 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %68 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @XDF_CONNECTING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %63
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @XenbusStateClosed, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @XenbusStateConnected, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @XDF_CONNECTING, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %85 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call %struct.xenbusb_softc* @device_get_softc(i32 %88)
  store %struct.xenbusb_softc* %89, %struct.xenbusb_softc** %14, align 8
  %90 = load %struct.xenbusb_softc*, %struct.xenbusb_softc** %14, align 8
  %91 = call i32 @xenbusb_release_confighook(%struct.xenbusb_softc* %90)
  br label %92

92:                                               ; preds = %81, %77, %63
  %93 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %94 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %93, i32 0, i32 0
  %95 = call i32 @wakeup(i32* %94)
  br label %96

96:                                               ; preds = %92, %62, %38, %29
  %97 = load %struct.xenbus_device_ivars*, %struct.xenbus_device_ivars** %10, align 8
  %98 = getelementptr inbounds %struct.xenbus_device_ivars, %struct.xenbus_device_ivars* %97, i32 0, i32 2
  %99 = call i32 @sx_xunlock(i32* %98)
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %5, align 4
  br label %105

101:                                              ; preds = %4, %4, %4, %4
  %102 = load i32, i32* @EINVAL, align 4
  store i32 %102, i32* %5, align 4
  br label %105

103:                                              ; preds = %4
  %104 = load i32, i32* @ENOENT, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %101, %96
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.xenbus_device_ivars* @device_get_ivars(i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @xs_scanf(i32, i32, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @xs_printf(i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local %struct.xenbusb_softc* @device_get_softc(i32) #1

declare dso_local i32 @xenbusb_release_confighook(%struct.xenbusb_softc*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

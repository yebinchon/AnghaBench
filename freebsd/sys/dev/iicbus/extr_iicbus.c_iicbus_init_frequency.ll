; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbus.c_iicbus_init_frequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbus.c_iicbus_init_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbus_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"frequency\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_TUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Bus frequency in Hz\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iicbus_init_frequency(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.iicbus_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.iicbus_softc* @IICBUS_SOFTC(i32 %6)
  store %struct.iicbus_softc* %7, %struct.iicbus_softc** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  %13 = load %struct.iicbus_softc*, %struct.iicbus_softc** %5, align 8
  %14 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load %struct.iicbus_softc*, %struct.iicbus_softc** %5, align 8
  %17 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %16, i32 0, i32 0
  store i32 100000, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_name(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @device_get_unit(i32 %20)
  %22 = load %struct.iicbus_softc*, %struct.iicbus_softc** %5, align 8
  %23 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %22, i32 0, i32 0
  %24 = call i32 @resource_int_value(i32 %19, i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %23)
  br label %25

25:                                               ; preds = %15, %10
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_get_sysctl_ctx(i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_sysctl_tree(i32 %28)
  %30 = call i32 @SYSCTL_CHILDREN(i32 %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RW, align 4
  %33 = load i32, i32* @CTLFLAG_TUN, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.iicbus_softc*, %struct.iicbus_softc** %5, align 8
  %36 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %35, i32 0, i32 0
  %37 = load %struct.iicbus_softc*, %struct.iicbus_softc** %5, align 8
  %38 = getelementptr inbounds %struct.iicbus_softc, %struct.iicbus_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @SYSCTL_ADD_UINT(i32 %27, i32 %30, i32 %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %34, i32* %36, i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iicbus_softc* @IICBUS_SOFTC(i32) #1

declare dso_local i32 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_iicbb.c_iicbb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iicbb_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"iicbus\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@DEFAULT_SCL_LOW_TIMEOUT = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"delay\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [62 x i8] c"Signal change delay controlled by bus frequency, microseconds\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"scl_low_timeout\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"SCL low timeout, microseconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @iicbb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iicbb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.iicbb_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @device_get_softc(i32 %5)
  %7 = inttoptr i64 %6 to %struct.iicbb_softc*
  store %struct.iicbb_softc* %7, %struct.iicbb_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_add_child(i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  %10 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %11 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %13 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %44

18:                                               ; preds = %1
  %19 = load i32, i32* @DEFAULT_SCL_LOW_TIMEOUT, align 4
  %20 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %21 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_sysctl_ctx(i32 %22)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @device_get_sysctl_tree(i32 %24)
  %26 = call i32 @SYSCTL_CHILDREN(i32 %25)
  %27 = load i32, i32* @OID_AUTO, align 4
  %28 = load i32, i32* @CTLFLAG_RD, align 4
  %29 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %29, i32 0, i32 1
  %31 = call i32 @SYSCTL_ADD_UINT(i32 %23, i32 %26, i32 %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32* %30, i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_sysctl_ctx(i32 %32)
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @device_get_sysctl_tree(i32 %34)
  %36 = call i32 @SYSCTL_CHILDREN(i32 %35)
  %37 = load i32, i32* @OID_AUTO, align 4
  %38 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %39 = load %struct.iicbb_softc*, %struct.iicbb_softc** %4, align 8
  %40 = getelementptr inbounds %struct.iicbb_softc, %struct.iicbb_softc* %39, i32 0, i32 0
  %41 = call i32 @SYSCTL_ADD_UINT(i32 %33, i32 %36, i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32* %40, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @bus_generic_attach(i32 %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %18, %16
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

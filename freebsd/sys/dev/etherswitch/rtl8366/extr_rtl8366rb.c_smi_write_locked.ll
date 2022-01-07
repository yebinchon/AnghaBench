; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_write_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_write_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32 }

@RTL_IICBUS_WRITE = common dso_local global i32 0, align 4
@RTL_IICBUS_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366rb_softc*, i32, i32, i32)* @smi_write_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_write_locked(%struct.rtl8366rb_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtl8366rb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [4 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.rtl8366rb_softc* %0, %struct.rtl8366rb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %14 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %18 = call i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc* %17)
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %30, i8* %31, align 1
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %35, i8* %36, align 1
  %37 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %38 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RTL_IICBUS_WRITE, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @smi_select(i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %4
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %48 = load i32, i32* @RTL_IICBUS_TIMEOUT, align 4
  %49 = call i32 @iicbus_write(i32 %46, i8* %47, i32 4, i32* %12, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %45, %4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @iicbus_stop(i32 %51)
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @smi_select(i32, i32, i32) #1

declare dso_local i32 @iicbus_write(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_read_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_read_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32 }

@RTL_IICBUS_READ = common dso_local global i32 0, align 4
@RTL_IICBUS_TIMEOUT = common dso_local global i32 0, align 4
@IIC_LAST_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366rb_softc*, i32, i32*, i32)* @smi_read_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_read_locked(%struct.rtl8366rb_softc* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.rtl8366rb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i8], align 1
  %12 = alloca i32, align 4
  store %struct.rtl8366rb_softc* %0, %struct.rtl8366rb_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
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
  %22 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %6, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %5, align 8
  %29 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RTL_IICBUS_READ, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @smi_select(i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %65

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %40 = load i32, i32* @RTL_IICBUS_TIMEOUT, align 4
  %41 = call i32 @iicbus_write(i32 %38, i8* %39, i32 2, i32* %12, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %65

45:                                               ; preds = %37
  %46 = load i32, i32* %10, align 4
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %48 = load i32, i32* @IIC_LAST_READ, align 4
  %49 = call i32 @iicbus_read(i32 %46, i8* %47, i32 2, i32* %12, i32 %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %65

53:                                               ; preds = %45
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = and i32 %56, 255
  %58 = shl i32 %57, 8
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %11, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = and i32 %61, 255
  %63 = or i32 %58, %62
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %53, %52, %44, %36
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @iicbus_stop(i32 %66)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @smi_select(i32, i32, i32) #1

declare dso_local i32 @iicbus_write(i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @iicbus_read(i32, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @iicbus_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_rmw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_rmw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"smi_rmw()=%d: addr=%04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @smi_rmw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_rmw(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rtl8366rb_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.rtl8366rb_softc* @device_get_softc(i32 %16)
  store %struct.rtl8366rb_softc* %17, %struct.rtl8366rb_softc** %12, align 8
  %18 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %12, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @smi_acquire(%struct.rtl8366rb_softc* %18, i32 %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* @EBUSY, align 4
  store i32 %24, i32* %6, align 4
  br label %71

25:                                               ; preds = %5
  %26 = load i32, i32* %13, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %12, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @smi_read_locked(%struct.rtl8366rb_softc* %29, i32 %30, i32* %14, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %28
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %15, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @smi_write_locked(%struct.rtl8366rb_softc* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %48, %35
  br label %55

55:                                               ; preds = %54, %28
  br label %56

56:                                               ; preds = %55, %25
  %57 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %12, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @smi_release(%struct.rtl8366rb_softc* %57, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @DEVERR(i32 %60, i32 %61, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @EIO, align 4
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i32 [ 0, %66 ], [ %68, %67 ]
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %69, %23
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.rtl8366rb_softc* @device_get_softc(i32) #1

declare dso_local i32 @smi_acquire(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i32 @smi_read_locked(%struct.rtl8366rb_softc*, i32, i32*, i32) #1

declare dso_local i32 @smi_write_locked(%struct.rtl8366rb_softc*, i32, i32, i32) #1

declare dso_local i32 @smi_release(%struct.rtl8366rb_softc*, i32) #1

declare dso_local i32 @DEVERR(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

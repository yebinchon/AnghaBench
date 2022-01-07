; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_read_edid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32 }

@UT_READ_VENDOR_DEVICE = common dso_local global i32 0, align 4
@UDL_CTRL_CMD_READ_EDID = common dso_local global i32 0, align 4
@USB_ERR_NORMAL_COMPLETION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udl_softc*, i32*)* @udl_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_read_edid(%struct.udl_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.udl_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.udl_softc* %0, %struct.udl_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %9 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %10 = load i32, i32* @UDL_CTRL_CMD_READ_EDID, align 4
  %11 = load i32, i32* %6, align 4
  %12 = shl i32 %11, 8
  %13 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %14 = call i32 @udl_ctrl_msg(%struct.udl_softc* %8, i32 %9, i32 %10, i32 161, i32 %12, i32* %13, i32 64)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %69

19:                                               ; preds = %2
  %20 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @bcopy(i32* %21, i32* %25, i32 63)
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 63
  store i32 %28, i32* %6, align 4
  %29 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %30 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %31 = load i32, i32* @UDL_CTRL_CMD_READ_EDID, align 4
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 %32, 8
  %34 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %35 = call i32 @udl_ctrl_msg(%struct.udl_softc* %29, i32 %30, i32 %31, i32 161, i32 %33, i32* %34, i32 64)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %19
  br label %69

40:                                               ; preds = %19
  %41 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @bcopy(i32* %42, i32* %46, i32 63)
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 63
  store i32 %49, i32* %6, align 4
  %50 = load %struct.udl_softc*, %struct.udl_softc** %3, align 8
  %51 = load i32, i32* @UT_READ_VENDOR_DEVICE, align 4
  %52 = load i32, i32* @UDL_CTRL_CMD_READ_EDID, align 4
  %53 = load i32, i32* %6, align 4
  %54 = shl i32 %53, 8
  %55 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %56 = call i32 @udl_ctrl_msg(%struct.udl_softc* %50, i32 %51, i32 %52, i32 161, i32 %54, i32* %55, i32 3)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @USB_ERR_NORMAL_COMPLETION, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %40
  br label %69

61:                                               ; preds = %40
  %62 = getelementptr inbounds [64 x i32], [64 x i32]* %5, i64 0, i64 0
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @bcopy(i32* %63, i32* %67, i32 2)
  br label %69

69:                                               ; preds = %61, %60, %39, %18
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @udl_ctrl_msg(%struct.udl_softc*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

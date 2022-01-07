; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_buf_le16.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/video/extr_udl.c_udl_cmd_write_buf_le16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.udl_softc = type { i32 }
%struct.udl_cmd_buf = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@UDL_BULK_SOC = common dso_local global i32 0, align 4
@UDL_BULK_CMD_FB_WRITE = common dso_local global i32 0, align 4
@UDL_BULK_CMD_FB_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.udl_softc*, i32*, i32, i32, i32)* @udl_cmd_write_buf_le16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_cmd_write_buf_le16(%struct.udl_softc* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.udl_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.udl_cmd_buf*, align 8
  store %struct.udl_softc* %0, %struct.udl_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.udl_softc*, %struct.udl_softc** %7, align 8
  %14 = load i32, i32* %11, align 4
  %15 = call %struct.udl_cmd_buf* @udl_cmd_buf_alloc(%struct.udl_softc* %13, i32 %14)
  store %struct.udl_cmd_buf* %15, %struct.udl_cmd_buf** %12, align 8
  %16 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %17 = icmp eq %struct.udl_cmd_buf* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EAGAIN, align 4
  store i32 %19, i32* %6, align 4
  br label %43

20:                                               ; preds = %5
  %21 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %22 = load i32, i32* @UDL_BULK_SOC, align 4
  %23 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %21, i32 %22)
  %24 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %25 = load i32, i32* @UDL_BULK_CMD_FB_WRITE, align 4
  %26 = load i32, i32* @UDL_BULK_CMD_FB_WORD, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %24, i32 %27)
  %29 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @udl_cmd_insert_int_3(%struct.udl_cmd_buf* %29, i32 %30)
  %32 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf* %32, i32 %33)
  %35 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %10, align 4
  %38 = mul nsw i32 2, %37
  %39 = call i32 @udl_cmd_insert_buf_le16(%struct.udl_cmd_buf* %35, i32* %36, i32 %38)
  %40 = load %struct.udl_softc*, %struct.udl_softc** %7, align 8
  %41 = load %struct.udl_cmd_buf*, %struct.udl_cmd_buf** %12, align 8
  %42 = call i32 @udl_cmd_buf_send(%struct.udl_softc* %40, %struct.udl_cmd_buf* %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %20, %18
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local %struct.udl_cmd_buf* @udl_cmd_buf_alloc(%struct.udl_softc*, i32) #1

declare dso_local i32 @udl_cmd_insert_int_1(%struct.udl_cmd_buf*, i32) #1

declare dso_local i32 @udl_cmd_insert_int_3(%struct.udl_cmd_buf*, i32) #1

declare dso_local i32 @udl_cmd_insert_buf_le16(%struct.udl_cmd_buf*, i32*, i32) #1

declare dso_local i32 @udl_cmd_buf_send(%struct.udl_softc*, %struct.udl_cmd_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

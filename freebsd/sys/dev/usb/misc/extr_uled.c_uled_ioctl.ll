; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/misc/extr_uled.c_uled_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_fifo = type { i32 }
%struct.uled_softc = type { i32, i32, %struct.uled_color }
%struct.uled_color = type { i8, i8, i8 }

@ULED_FLAG_BLINK1 = common dso_local global i32 0, align 4
@UT_WRITE_CLASS_INTERFACE = common dso_local global i32 0, align 4
@UR_SET_REPORT = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_fifo*, i32, i8*, i32)* @uled_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uled_ioctl(%struct.usb_fifo* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.usb_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.uled_softc*, align 8
  %10 = alloca %struct.uled_color, align 1
  %11 = alloca i32, align 4
  %12 = alloca [8 x i8], align 1
  store %struct.usb_fifo* %0, %struct.usb_fifo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.usb_fifo*, %struct.usb_fifo** %5, align 8
  %14 = call %struct.uled_softc* @usb_fifo_softc(%struct.usb_fifo* %13)
  store %struct.uled_softc* %14, %struct.uled_softc** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %16 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %88 [
    i32 129, label %19
    i32 128, label %26
  ]

19:                                               ; preds = %4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.uled_color*
  %22 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %23 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %22, i32 0, i32 2
  %24 = bitcast %struct.uled_color* %21 to i8*
  %25 = bitcast %struct.uled_color* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 4 %25, i64 3, i1 false)
  br label %90

26:                                               ; preds = %4
  %27 = load i8*, i8** %7, align 8
  %28 = bitcast i8* %27 to %struct.uled_color*
  %29 = bitcast %struct.uled_color* %10 to i8*
  %30 = bitcast %struct.uled_color* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 %30, i64 3, i1 false)
  %31 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %34 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %34, i32 0, i32 0
  store i8 %32, i8* %35, align 4
  %36 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 1
  %37 = load i8, i8* %36, align 1
  %38 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %39 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %39, i32 0, i32 1
  store i8 %37, i8* %40, align 1
  %41 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 2
  %42 = load i8, i8* %41, align 1
  %43 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %44 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %44, i32 0, i32 2
  store i8 %42, i8* %45, align 2
  %46 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %47 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ULED_FLAG_BLINK1, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %26
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  store i8 1, i8* %53, align 1
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  store i8 110, i8* %54, align 1
  %55 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 2
  store i8 %56, i8* %57, align 1
  %58 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 1
  %59 = load i8, i8* %58, align 1
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  store i8 %59, i8* %60, align 1
  %61 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 2
  %62 = load i8, i8* %61, align 1
  %63 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  store i8 %62, i8* %63, align 1
  %64 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  store i8 0, i8* %64, align 1
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  store i8 0, i8* %65, align 1
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 5
  store i8 0, i8* %66, align 1
  br label %82

67:                                               ; preds = %26
  %68 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 0
  %69 = load i8, i8* %68, align 1
  %70 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  store i8 %69, i8* %70, align 1
  %71 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 1
  %72 = load i8, i8* %71, align 1
  %73 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 1
  store i8 %72, i8* %73, align 1
  %74 = getelementptr inbounds %struct.uled_color, %struct.uled_color* %10, i32 0, i32 2
  %75 = load i8, i8* %74, align 1
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 2
  store i8 %75, i8* %76, align 1
  %77 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 5
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 4
  store i8 0, i8* %78, align 1
  %79 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 3
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 6
  store i8 26, i8* %80, align 1
  %81 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  store i8 5, i8* %81, align 1
  br label %82

82:                                               ; preds = %67, %52
  %83 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %84 = load i32, i32* @UT_WRITE_CLASS_INTERFACE, align 4
  %85 = load i32, i32* @UR_SET_REPORT, align 4
  %86 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 0
  %87 = call i32 @uled_ctrl_msg(%struct.uled_softc* %83, i32 %84, i32 %85, i32 512, i32 0, i8* %86, i32 8)
  store i32 %87, i32* %11, align 4
  br label %90

88:                                               ; preds = %4
  %89 = load i32, i32* @ENOTTY, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %88, %82, %19
  %91 = load %struct.uled_softc*, %struct.uled_softc** %9, align 8
  %92 = getelementptr inbounds %struct.uled_softc, %struct.uled_softc* %91, i32 0, i32 1
  %93 = call i32 @mtx_unlock(i32* %92)
  %94 = load i32, i32* %11, align 4
  ret i32 %94
}

declare dso_local %struct.uled_softc* @usb_fifo_softc(%struct.usb_fifo*) #1

declare dso_local i32 @mtx_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uled_ctrl_msg(%struct.uled_softc*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

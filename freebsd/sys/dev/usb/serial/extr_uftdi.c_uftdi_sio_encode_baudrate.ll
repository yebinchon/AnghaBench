; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_sio_encode_baudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_sio_encode_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uftdi_softc = type { i32 }
%struct.uftdi_param_config = type { i64, i64 }

@__const.uftdi_sio_encode_baudrate.sio_speeds = private unnamed_addr constant [10 x i32] [i32 300, i32 600, i32 1200, i32 2400, i32 4800, i32 9600, i32 19200, i32 38400, i32 57600, i32 115200], align 16
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uftdi_softc*, i32, %struct.uftdi_param_config*)* @uftdi_sio_encode_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_sio_encode_baudrate(%struct.uftdi_softc* %0, i32 %1, %struct.uftdi_param_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uftdi_param_config*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [10 x i32], align 16
  store %struct.uftdi_softc* %0, %struct.uftdi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uftdi_param_config* %2, %struct.uftdi_param_config** %7, align 8
  %10 = bitcast [10 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([10 x i32]* @__const.uftdi_sio_encode_baudrate.sio_speeds to i8*), i64 40, i1 false)
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i64, i64* %8, align 8
  %13 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %14 = call i64 @nitems(i32* %13)
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load i64, i64* %8, align 8
  %24 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %25 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %27 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %34

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %8, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %8, align 8
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* @ERANGE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %22
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @nitems(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

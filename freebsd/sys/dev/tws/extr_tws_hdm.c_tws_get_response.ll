; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_get_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_get_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_outbound_response = type { i32, i32 }

@TWS_INVALID_REQID = common dso_local global i32 0, align 4
@TWS_I2O0_HOBQPH = common dso_local global i32 0, align 4
@TWS_FIFO_EMPTY32 = common dso_local global i32 0, align 4
@TWS_I2O0_HOBQPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_get_response(%struct.tws_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tws_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tws_outbound_response, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @TWS_INVALID_REQID, align 4
  %12 = load i32*, i32** %6, align 8
  store i32 %11, i32* %12, align 4
  %13 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %14 = load i32, i32* @TWS_I2O0_HOBQPH, align 4
  %15 = call i32 @tws_read_reg(%struct.tws_softc* %13, i32 %14, i32 4)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @TWS_FIFO_EMPTY32, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 %21, 32
  store i32 %22, i32* %8, align 4
  %23 = load %struct.tws_softc*, %struct.tws_softc** %5, align 8
  %24 = load i32, i32* @TWS_I2O0_HOBQPL, align 4
  %25 = call i32 @tws_read_reg(%struct.tws_softc* %23, i32 %24, i32 4)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = bitcast i32* %8 to %struct.tws_outbound_response*
  %30 = bitcast %struct.tws_outbound_response* %10 to i8*
  %31 = bitcast %struct.tws_outbound_response* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = getelementptr inbounds %struct.tws_outbound_response, %struct.tws_outbound_response* %10, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %4, align 4
  br label %43

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.tws_outbound_response, %struct.tws_outbound_response* %10, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38
  store i32 1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %35, %19
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

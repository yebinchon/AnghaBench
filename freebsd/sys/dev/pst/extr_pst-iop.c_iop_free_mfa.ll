; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_free_mfa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_free_mfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.i2o_basic_message = type { i32, i32, i32, i32, i32, i32 }

@I2O_TID_IOP = common dso_local global i32 0, align 4
@I2O_TID_HOST = common dso_local global i32 0, align 4
@I2O_UTIL_NOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iop_free_mfa(%struct.iop_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.iop_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2o_basic_message*, align 8
  store %struct.iop_softc* %0, %struct.iop_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %7 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %8, %10
  %12 = inttoptr i64 %11 to %struct.i2o_basic_message*
  store %struct.i2o_basic_message* %12, %struct.i2o_basic_message** %5, align 8
  %13 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %14 = call i32 @bzero(%struct.i2o_basic_message* %13, i32 24)
  %15 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %16 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %18 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %20 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %19, i32 0, i32 2
  store i32 6, i32* %20, align 4
  %21 = load i32, i32* @I2O_TID_IOP, align 4
  %22 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %23 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @I2O_TID_HOST, align 4
  %25 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %26 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @I2O_UTIL_NOP, align 4
  %28 = load %struct.i2o_basic_message*, %struct.i2o_basic_message** %5, align 8
  %29 = getelementptr inbounds %struct.i2o_basic_message, %struct.i2o_basic_message* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.iop_softc*, %struct.iop_softc** %3, align 8
  %32 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.i2o_basic_message*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

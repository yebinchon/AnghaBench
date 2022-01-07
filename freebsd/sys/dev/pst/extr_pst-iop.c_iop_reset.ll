; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pst/extr_pst-iop.c_iop_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_softc = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.i2o_exec_iop_reset_message = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@I2O_TID_IOP = common dso_local global i32 0, align 4
@I2O_TID_HOST = common dso_local global i32 0, align 4
@I2O_EXEC_IOP_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iop_reset(%struct.iop_softc* %0) #0 {
  %2 = alloca %struct.iop_softc*, align 8
  %3 = alloca %struct.i2o_exec_iop_reset_message*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iop_softc* %0, %struct.iop_softc** %2, align 8
  store i32 5000, i32* %5, align 4
  store volatile i32 0, i32* %6, align 4
  %7 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %8 = call i32 @iop_get_mfa(%struct.iop_softc* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = inttoptr i64 %14 to %struct.i2o_exec_iop_reset_message*
  store %struct.i2o_exec_iop_reset_message* %15, %struct.i2o_exec_iop_reset_message** %3, align 8
  %16 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %17 = call i32 @bzero(%struct.i2o_exec_iop_reset_message* %16, i32 40)
  %18 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %19 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %21 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %20, i32 0, i32 1
  store i32 0, i32* %21, align 4
  %22 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %23 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %22, i32 0, i32 2
  store i32 10, i32* %23, align 8
  %24 = load i32, i32* @I2O_TID_IOP, align 4
  %25 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %26 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @I2O_TID_HOST, align 4
  %28 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %29 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @I2O_EXEC_IOP_RESET, align 4
  %31 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %32 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = call i32 @vtophys(i32* %6)
  %34 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %35 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i2o_exec_iop_reset_message*, %struct.i2o_exec_iop_reset_message** %3, align 8
  %37 = getelementptr inbounds %struct.i2o_exec_iop_reset_message, %struct.i2o_exec_iop_reset_message* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %40 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %53, %1
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load volatile i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = call i32 @DELAY(i32 1000)
  br label %43

55:                                               ; preds = %51
  store i32 10000, i32* %5, align 4
  br label %56

56:                                               ; preds = %69, %55
  %57 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %58 = getelementptr inbounds %struct.iop_softc, %struct.iop_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %63, %56
  %68 = phi i1 [ false, %56 ], [ %66, %63 ]
  br i1 %68, label %69, label %71

69:                                               ; preds = %67
  %70 = call i32 @DELAY(i32 1000)
  br label %56

71:                                               ; preds = %67
  %72 = load %struct.iop_softc*, %struct.iop_softc** %2, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @iop_free_mfa(%struct.iop_softc* %72, i32 %73)
  %75 = load volatile i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @iop_get_mfa(%struct.iop_softc*) #1

declare dso_local i32 @bzero(%struct.i2o_exec_iop_reset_message*, i32) #1

declare dso_local i32 @vtophys(i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @iop_free_mfa(%struct.iop_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

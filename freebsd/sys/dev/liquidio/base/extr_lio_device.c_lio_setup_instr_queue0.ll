; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_setup_instr_queue0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_device.c_lio_setup_instr_queue0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_5__, %struct.TYPE_4__** }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i8*, i64 }
%union.octeon_txpciq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }

@cn23xx_pf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_instr_queue0(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %union.octeon_txpciq, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = call i64 @LIO_CN23XX_PF(%struct.octeon_device* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %12 = load i32, i32* @cn23xx_pf, align 4
  %13 = call i32 @LIO_CHIP_CONF(%struct.octeon_device* %11, i32 %12)
  %14 = call i32 @LIO_GET_NUM_DEF_TX_DESCS_CFG(i32 %13)
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i8* null, i8** %29, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %32, i64 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = bitcast %union.octeon_txpciq* %4 to i64*
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = bitcast %union.octeon_txpciq* %4 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = bitcast %union.octeon_txpciq* %4 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = bitcast %union.octeon_txpciq* %4 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = bitcast %union.octeon_txpciq* %4 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @lio_init_instr_queue(%struct.octeon_device* %50, %union.octeon_txpciq* byval(%union.octeon_txpciq) align 8 %4, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %15
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = call i32 @lio_delete_instr_queue(%struct.octeon_device* %55, i32 0)
  store i32 1, i32* %2, align 4
  br label %62

57:                                               ; preds = %15
  %58 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %59, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @LIO_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i32 @LIO_GET_NUM_DEF_TX_DESCS_CFG(i32) #1

declare dso_local i32 @LIO_CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @lio_init_instr_queue(%struct.octeon_device*, %union.octeon_txpciq* byval(%union.octeon_txpciq) align 8, i32) #1

declare dso_local i32 @lio_delete_instr_queue(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_setup_iq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_request_manager.c_lio_setup_iq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_8__, i32, %struct.TYPE_7__** }
%struct.TYPE_8__ = type { i64 (%struct.octeon_device.0*)* }
%struct.octeon_device.0 = type opaque
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%union.octeon_txpciq = type { i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"IQ is in use. Cannot create the IQ: %d again\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lio_setup_iq(%struct.octeon_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.octeon_txpciq, align 4
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = getelementptr inbounds %union.octeon_txpciq, %union.octeon_txpciq* %7, i32 0, i32 0
  store i32 %3, i32* %13, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = bitcast %union.octeon_txpciq* %7 to %struct.TYPE_5__*
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %12, align 8
  %18 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %19 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %19, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %20, i64 %21
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %41

27:                                               ; preds = %5
  %28 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i32 @lio_dev_dbg(%struct.octeon_device* %28, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = bitcast %union.octeon_txpciq* %7 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %34, align 8
  %36 = load i64, i64* %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 %36
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %32, i32* %40, align 8
  store i32 0, i32* %6, align 4
  br label %83

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %44 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %44, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %45, i64 %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 %42, i32* %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %52 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %52, align 8
  %54 = load i64, i64* %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %53, i64 %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  store i32 %50, i32* %57, align 4
  %58 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %59 = load i64, i64* %11, align 8
  %60 = getelementptr inbounds %union.octeon_txpciq, %union.octeon_txpciq* %7, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @lio_init_instr_queue(%struct.octeon_device* %58, i32 %61, i64 %59)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %41
  %65 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @lio_delete_instr_queue(%struct.octeon_device* %65, i64 %66)
  store i32 1, i32* %6, align 4
  br label %83

68:                                               ; preds = %41
  %69 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %74 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i64 (%struct.octeon_device.0*)*, i64 (%struct.octeon_device.0*)** %75, align 8
  %77 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %78 = bitcast %struct.octeon_device* %77 to %struct.octeon_device.0*
  %79 = call i64 %76(%struct.octeon_device.0* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i32 1, i32* %6, align 4
  br label %83

82:                                               ; preds = %68
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %81, %64, %27
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @lio_dev_dbg(%struct.octeon_device*, i8*, i64) #1

declare dso_local i64 @lio_init_instr_queue(%struct.octeon_device*, i32, i64) #1

declare dso_local i32 @lio_delete_instr_queue(%struct.octeon_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

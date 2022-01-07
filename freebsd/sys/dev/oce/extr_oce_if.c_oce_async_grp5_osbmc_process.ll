; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_async_grp5_osbmc_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_async_grp5_osbmc_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.oce_async_evt_grp5_os2bmc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@OCE_FLAGS_OS2BMC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.oce_async_evt_grp5_os2bmc*)* @oce_async_grp5_osbmc_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_async_grp5_osbmc_process(%struct.TYPE_7__* %0, %struct.oce_async_evt_grp5_os2bmc* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.oce_async_evt_grp5_os2bmc*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.oce_async_evt_grp5_os2bmc* %1, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %5 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %6 = call i32 @DW_SWAP(%struct.oce_async_evt_grp5_os2bmc* %5, i32 48)
  %7 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %8 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @OCE_FLAGS_OS2BMC, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %20

19:                                               ; preds = %2
  br label %108

20:                                               ; preds = %13
  %21 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %22 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %29 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %39 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 2
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %49 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 3
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %59 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %69 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 %72, 5
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %79 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %82, 6
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %89 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 %92, 7
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %4, align 8
  %99 = getelementptr inbounds %struct.oce_async_evt_grp5_os2bmc, %struct.oce_async_evt_grp5_os2bmc* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 8
  %102 = load i32, i32* %101, align 8
  %103 = shl i32 %102, 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %20, %19
  ret void
}

declare dso_local i32 @DW_SWAP(%struct.oce_async_evt_grp5_os2bmc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

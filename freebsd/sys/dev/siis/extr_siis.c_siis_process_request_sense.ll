; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_request_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_process_request_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.siis_channel = type { i32, %struct.TYPE_6__**, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %union.ccb*)* @siis_process_request_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_process_request_sense(i32 %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.siis_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.siis_channel* @device_get_softc(i32 %7)
  store %struct.siis_channel* %8, %struct.siis_channel** %5, align 8
  %9 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %10 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %union.ccb*, %union.ccb** %4, align 8
  %12 = bitcast %union.ccb* %11 to %struct.TYPE_4__*
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @CAM_STATUS_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @CAM_REQ_CMP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %2
  %24 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %25 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %26 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %27, i64 %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %24
  store i32 %35, i32* %33, align 4
  br label %62

36:                                               ; preds = %2
  %37 = load i32, i32* @CAM_STATUS_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %40 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %41, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, %38
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %51 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %52 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %53, i64 %55
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %50
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %36, %23
  %63 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %64 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %65, i64 %67
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = call i32 @xpt_done(%struct.TYPE_6__* %69)
  %71 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %72 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %76, align 8
  %77 = load %struct.siis_channel*, %struct.siis_channel** %5, align 8
  %78 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %78, align 8
  %81 = load %union.ccb*, %union.ccb** %4, align 8
  %82 = call i32 @xpt_free_ccb(%union.ccb* %81)
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @xpt_done(%struct.TYPE_6__*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_wait_for_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_wait_for_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i32 }
%struct.mmc_request = type { i32, %struct.TYPE_4__*, %struct.mmc_softc*, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@mmc_wakeup = common dso_local global i32 0, align 4
@mmc_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"REQUEST: CMD%d arg %#x flags %#x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" data %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MMC_REQ_DONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"mmcreq\00", align 1
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"CMD%d RESULT: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_softc*, %struct.mmc_request*)* @mmc_wait_for_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_wait_for_req(%struct.mmc_softc* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_softc*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  store %struct.mmc_softc* %0, %struct.mmc_softc** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %5 = load i32, i32* @mmc_wakeup, align 4
  %6 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %7 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 8
  %8 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 2
  store %struct.mmc_softc* %8, %struct.mmc_softc** %10, align 8
  %11 = load i32, i32* @mmc_debug, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_false(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %31 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %29, i32 %34)
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %16
  %43 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %44 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %54

52:                                               ; preds = %16
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %42
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @device_get_parent(i32 %58)
  %60 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %64 = call i32 @MMCBR_REQUEST(i32 %59, i32 %62, %struct.mmc_request* %63)
  %65 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %66 = call i32 @MMC_LOCK(%struct.mmc_softc* %65)
  br label %67

67:                                               ; preds = %74, %55
  %68 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MMC_REQ_DONE, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %76 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %77 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %76, i32 0, i32 1
  %78 = call i32 @msleep(%struct.mmc_request* %75, i32* %77, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %67

79:                                               ; preds = %67
  %80 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %81 = call i32 @MMC_UNLOCK(%struct.mmc_softc* %80)
  %82 = load i32, i32* @mmc_debug, align 4
  %83 = icmp sgt i32 %82, 2
  br i1 %83, label %97, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @mmc_debug, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %89 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MMC_ERR_NONE, align 4
  %94 = icmp ne i32 %92, %93
  br label %95

95:                                               ; preds = %87, %84
  %96 = phi i1 [ false, %84 ], [ %94, %87 ]
  br label %97

97:                                               ; preds = %95, %79
  %98 = phi i1 [ true, %79 ], [ %96, %95 ]
  %99 = zext i1 %98 to i32
  %100 = call i64 @__predict_false(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %97
  %103 = load %struct.mmc_softc*, %struct.mmc_softc** %3, align 8
  %104 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %112 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %111, i32 0, i32 1
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %110, i32 %115)
  br label %117

117:                                              ; preds = %102, %97
  ret i32 0
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @MMCBR_REQUEST(i32, i32, %struct.mmc_request*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MMC_LOCK(%struct.mmc_softc*) #1

declare dso_local i32 @msleep(%struct.mmc_request*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MMC_UNLOCK(%struct.mmc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

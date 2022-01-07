; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_16__, i32, i64, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }

@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFLIB_QUEUE_HUNG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"Watchdog timeout (TX: %d desc avail: %d pidx: %d) -- resetting\0A\00", align 1
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IFC_DO_WATCHDOG = common dso_local global i32 0, align 4
@IFC_DO_RESET = common dso_local global i32 0, align 4
@IFCAP_NETMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @iflib_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iflib_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %9, %struct.TYPE_13__** %3, align 8
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 10
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %4, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %5, align 8
  %15 = load i32, i32* @ticks, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @hz, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %7, align 4
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @if_getdrvflags(i32 %20)
  %22 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %141

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  %32 = load i32, i32* @hz, align 4
  %33 = sdiv i32 %32, 2
  %34 = icmp sge i32 %31, %33
  br i1 %34, label %35, label %79

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IFDI_TIMER(%struct.TYPE_15__* %39, i32 %42)
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @IFLIB_QUEUE_HUNG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %35
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57, %49
  br label %109

63:                                               ; preds = %57, %35
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @ifmp_ring_is_stalled(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i64, i64* @IFLIB_QUEUE_HUNG, align 8
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %73, %26
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 8
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 7
  %87 = call i32 @GROUPTASK_ENQUEUE(i32* %86)
  br label %88

88:                                               ; preds = %84, %79
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @if_getdrvflags(i32 %93)
  %95 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %88
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 6
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @callout_reset_on(%struct.TYPE_16__* %100, i32 %101, void (i8*)* @iflib_timer, %struct.TYPE_13__* %102, i32 %106)
  br label %108

108:                                              ; preds = %98, %88
  br label %141

109:                                              ; preds = %62
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = call i32 @TXQ_AVAIL(%struct.TYPE_13__* %116)
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %115, i32 %117, i32 %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = call i32 @STATE_LOCK(%struct.TYPE_15__* %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %128 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %129 = call i32 @if_setdrvflagbits(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* @IFC_DO_WATCHDOG, align 4
  %131 = load i32, i32* @IFC_DO_RESET, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %138 = call i32 @iflib_admin_intr_deferred(%struct.TYPE_15__* %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = call i32 @STATE_UNLOCK(%struct.TYPE_15__* %139)
  br label %141

141:                                              ; preds = %109, %108, %25
  ret void
}

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @IFDI_TIMER(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @ifmp_ring_is_stalled(i32) #1

declare dso_local i32 @GROUPTASK_ENQUEUE(i32*) #1

declare dso_local i32 @callout_reset_on(%struct.TYPE_16__*, i32, void (i8*)*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @TXQ_AVAIL(%struct.TYPE_13__*) #1

declare dso_local i32 @STATE_LOCK(%struct.TYPE_15__*) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @iflib_admin_intr_deferred(%struct.TYPE_15__*) #1

declare dso_local i32 @STATE_UNLOCK(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

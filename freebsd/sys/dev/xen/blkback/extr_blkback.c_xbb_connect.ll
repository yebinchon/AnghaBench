; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@XenbusStateInitWait = common dso_local global i64 0, align 8
@XBBF_SHUTDOWN = common dso_local global i32 0, align 4
@XBB_MAX_SEGMENTS_PER_REQLIST = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to allocate communication memory\00", align 1
@XenbusStateConnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbb_softc*)* @xbb_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbb_connect(%struct.xbb_softc* %0) #0 {
  %2 = alloca %struct.xbb_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.xbb_softc* %0, %struct.xbb_softc** %2, align 8
  %4 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %5 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %4, i32 0, i32 6
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @xenbus_get_state(i32 %11)
  %13 = load i64, i64* @XenbusStateInitWait, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %17 = call i64 @xbb_collect_frontend_info(%struct.xbb_softc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %8, %1
  br label %86

20:                                               ; preds = %15
  %21 = load i32, i32* @XBBF_SHUTDOWN, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %28 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %31 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* @XBB_MAX_SEGMENTS_PER_REQLIST, align 4
  %35 = call i32 @MIN(i32 %33, i32 %34)
  %36 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %37 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %39 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %44 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %46 = call i32 @xbb_alloc_communication_mem(%struct.xbb_softc* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %20
  %50 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %51 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @xenbus_dev_fatal(i32 %52, i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %86

55:                                               ; preds = %20
  %56 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %57 = call i32 @xbb_alloc_requests(%struct.xbb_softc* %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %86

61:                                               ; preds = %55
  %62 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %63 = call i32 @xbb_alloc_request_lists(%struct.xbb_softc* %62)
  store i32 %63, i32* %3, align 4
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %86

67:                                               ; preds = %61
  %68 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %69 = call i32 @xbb_connect_ring(%struct.xbb_softc* %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  br label %86

73:                                               ; preds = %67
  %74 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %75 = call i64 @xbb_publish_backend_info(%struct.xbb_softc* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %79 = call i32 @xbb_disconnect(%struct.xbb_softc* %78)
  br label %86

80:                                               ; preds = %73
  %81 = load %struct.xbb_softc*, %struct.xbb_softc** %2, align 8
  %82 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @XenbusStateConnected, align 4
  %85 = call i32 @xenbus_set_state(i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %77, %72, %66, %60, %49, %19
  ret void
}

declare dso_local i64 @xenbus_get_state(i32) #1

declare dso_local i64 @xbb_collect_frontend_info(%struct.xbb_softc*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @xbb_alloc_communication_mem(%struct.xbb_softc*) #1

declare dso_local i32 @xenbus_dev_fatal(i32, i32, i8*) #1

declare dso_local i32 @xbb_alloc_requests(%struct.xbb_softc*) #1

declare dso_local i32 @xbb_alloc_request_lists(%struct.xbb_softc*) #1

declare dso_local i32 @xbb_connect_ring(%struct.xbb_softc*) #1

declare dso_local i64 @xbb_publish_backend_info(%struct.xbb_softc*) #1

declare dso_local i32 @xbb_disconnect(%struct.xbb_softc*) #1

declare dso_local i32 @xenbus_set_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

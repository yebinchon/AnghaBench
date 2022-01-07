; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_xact_exec1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_rndis.c_hn_rndis_xact_exec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i32, i32 }
%struct.vmbus_xact = type { i32 }
%struct.hn_nvs_sendctx = type { i32 }
%struct.vmbus_gpa = type { i32, i64, i64 }

@HN_XACT_REQ_PGCNT = common dso_local global i32 0, align 4
@HN_XACT_REQ_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid request length %zu\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"vmbus xact request is not page aligned 0x%jx\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"still have %zu request data left\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"RNDIS ctrl send failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.hn_softc*, %struct.vmbus_xact*, i64, %struct.hn_nvs_sendctx*, i64*)* @hn_rndis_xact_exec1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @hn_rndis_xact_exec1(%struct.hn_softc* %0, %struct.vmbus_xact* %1, i64 %2, %struct.hn_nvs_sendctx* %3, i64* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hn_softc*, align 8
  %8 = alloca %struct.vmbus_xact*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hn_nvs_sendctx*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %7, align 8
  store %struct.vmbus_xact* %1, %struct.vmbus_xact** %8, align 8
  store i64 %2, i64* %9, align 8
  store %struct.hn_nvs_sendctx* %3, %struct.hn_nvs_sendctx** %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @HN_XACT_REQ_PGCNT, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.vmbus_gpa, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @HN_XACT_REQ_SIZE, align 8
  %25 = icmp ule i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = icmp ugt i64 %27, 0
  br label %29

29:                                               ; preds = %26, %5
  %30 = phi i1 [ false, %5 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %31, i8* %33)
  %35 = load %struct.vmbus_xact*, %struct.vmbus_xact** %8, align 8
  %36 = call i32 @vmbus_xact_req_paddr(%struct.vmbus_xact* %35)
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* @PAGE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %16, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %41, i8* %44)
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %86, %29
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @HN_XACT_REQ_PGCNT, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %89

50:                                               ; preds = %46
  %51 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i64, i64* %9, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %89

55:                                               ; preds = %50
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %56, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %16, align 4
  %65 = call i64 @atop(i32 %64)
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %22, i64 %70
  %72 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %71, i32 0, i32 2
  store i64 %68, i64* %72, align 8
  %73 = load i32, i32* %17, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %22, i64 %75
  %77 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %22, i64 %79
  %81 = getelementptr inbounds %struct.vmbus_gpa, %struct.vmbus_gpa* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %63
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %46

89:                                               ; preds = %54, %46
  %90 = load i64, i64* %9, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load i64, i64* %9, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @KASSERT(i32 %92, i8* %94)
  %96 = load %struct.vmbus_xact*, %struct.vmbus_xact** %8, align 8
  %97 = call i32 @vmbus_xact_activate(%struct.vmbus_xact* %96)
  %98 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  %99 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.hn_nvs_sendctx*, %struct.hn_nvs_sendctx** %10, align 8
  %102 = load i32, i32* %14, align 4
  %103 = call i32 @hn_nvs_send_rndis_ctrl(i32 %100, %struct.hn_nvs_sendctx* %101, %struct.vmbus_gpa* %22, i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %89
  %107 = load %struct.vmbus_xact*, %struct.vmbus_xact** %8, align 8
  %108 = call i32 @vmbus_xact_deactivate(%struct.vmbus_xact* %107)
  %109 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  %110 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %15, align 4
  %113 = call i32 @if_printf(i32 %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i8* null, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %123

114:                                              ; preds = %89
  %115 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  %116 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.vmbus_xact*, %struct.vmbus_xact** %8, align 8
  %119 = load i64*, i64** %11, align 8
  %120 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  %121 = call i32 @HN_CAN_SLEEP(%struct.hn_softc* %120)
  %122 = call i8* @vmbus_chan_xact_wait(i32 %117, %struct.vmbus_xact* %118, i64* %119, i32 %121)
  store i8* %122, i8** %6, align 8
  store i32 1, i32* %18, align 4
  br label %123

123:                                              ; preds = %114, %106
  %124 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i8*, i8** %6, align 8
  ret i8* %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @vmbus_xact_req_paddr(%struct.vmbus_xact*) #2

declare dso_local i64 @atop(i32) #2

declare dso_local i32 @vmbus_xact_activate(%struct.vmbus_xact*) #2

declare dso_local i32 @hn_nvs_send_rndis_ctrl(i32, %struct.hn_nvs_sendctx*, %struct.vmbus_gpa*, i32) #2

declare dso_local i32 @vmbus_xact_deactivate(%struct.vmbus_xact*) #2

declare dso_local i32 @if_printf(i32, i8*, i32) #2

declare dso_local i8* @vmbus_chan_xact_wait(i32, %struct.vmbus_xact*, i64*, i32) #2

declare dso_local i32 @HN_CAN_SLEEP(%struct.hn_softc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

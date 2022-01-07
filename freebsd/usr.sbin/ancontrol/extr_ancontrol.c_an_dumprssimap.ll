; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumprssimap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumprssimap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_rssi_map = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.an_req = type { i32, i32 }

@AN_RID_RSSI_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"idx\09pct\09 dBm\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%3d\09%3d\09%4d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_dumprssimap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dumprssimap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_ltv_rssi_map*, align 8
  %4 = alloca %struct.an_req, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  store i32 8, i32* %6, align 4
  %7 = load i32, i32* @AN_RID_RSSI_MAP, align 4
  %8 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @an_getval(i8* %9, %struct.an_req* %4)
  %11 = bitcast %struct.an_req* %4 to %struct.an_ltv_rssi_map*
  store %struct.an_ltv_rssi_map* %11, %struct.an_ltv_rssi_map** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %1
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 255
  br i1 %15, label %16, label %39

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.an_ltv_rssi_map*, %struct.an_ltv_rssi_map** %3, align 8
  %19 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.an_ltv_rssi_map*, %struct.an_ltv_rssi_map** %3, align 8
  %27 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 0, %33
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %25, i32 %34)
  br label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %13
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

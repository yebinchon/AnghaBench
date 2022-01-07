; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_get_vif_cnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_get_vif_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.sioc_vif_req = type { i64, i32, i32, i32, i32 }

@V_numvifs = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V_viftable = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sioc_vif_req*)* @get_vif_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_vif_cnt(%struct.sioc_vif_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sioc_vif_req*, align 8
  %4 = alloca i64, align 8
  store %struct.sioc_vif_req* %0, %struct.sioc_vif_req** %3, align 8
  %5 = load %struct.sioc_vif_req*, %struct.sioc_vif_req** %3, align 8
  %6 = getelementptr inbounds %struct.sioc_vif_req, %struct.sioc_vif_req* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = call i32 (...) @VIF_LOCK()
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @V_numvifs, align 8
  %11 = icmp uge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = call i32 (...) @VIF_UNLOCK()
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %45

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_viftable, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sioc_vif_req*, %struct.sioc_vif_req** %3, align 8
  %22 = getelementptr inbounds %struct.sioc_vif_req, %struct.sioc_vif_req* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_viftable, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sioc_vif_req*, %struct.sioc_vif_req** %3, align 8
  %29 = getelementptr inbounds %struct.sioc_vif_req, %struct.sioc_vif_req* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_viftable, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sioc_vif_req*, %struct.sioc_vif_req** %3, align 8
  %36 = getelementptr inbounds %struct.sioc_vif_req, %struct.sioc_vif_req* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @V_viftable, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sioc_vif_req*, %struct.sioc_vif_req** %3, align 8
  %43 = getelementptr inbounds %struct.sioc_vif_req, %struct.sioc_vif_req* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = call i32 (...) @VIF_UNLOCK()
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %15, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @VIF_LOCK(...) #1

declare dso_local i32 @VIF_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

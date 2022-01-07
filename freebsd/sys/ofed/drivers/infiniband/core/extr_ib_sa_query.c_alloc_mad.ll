; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_alloc_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_alloc_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { %struct.TYPE_6__*, %struct.TYPE_7__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_6__* }

@EAGAIN = common dso_local global i32 0, align 4
@IB_MGMT_SA_HDR = common dso_local global i32 0, align 4
@IB_MGMT_SA_DATA = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@free_sm_ah = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32)* @alloc_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_mad(%struct.ib_sa_query* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_sa_query*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %8 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %14 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %13, i32 0, i32 2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %2
  %20 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %21 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %20, i32 0, i32 2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %90

28:                                               ; preds = %2
  %29 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %30 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = call i32 @kref_get(i32* %34)
  %36 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %37 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %42 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %41, i32 0, i32 0
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %42, align 8
  %43 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %44 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %50 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %55 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IB_MGMT_SA_HDR, align 4
  %60 = load i32, i32* @IB_MGMT_SA_DATA, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %63 = call %struct.TYPE_7__* @ib_create_send_mad(i32 %53, i32 1, i32 %58, i32 0, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %65 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %64, i32 0, i32 1
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %65, align 8
  %66 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %67 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = call i64 @IS_ERR(%struct.TYPE_7__* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %28
  %72 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %73 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* @free_sm_ah, align 4
  %77 = call i32 @kref_put(i32* %75, i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %90

80:                                               ; preds = %28
  %81 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %82 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %87 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %86, i32 0, i32 1
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 4
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %80, %71, %19
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local %struct.TYPE_7__* @ib_create_send_mad(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

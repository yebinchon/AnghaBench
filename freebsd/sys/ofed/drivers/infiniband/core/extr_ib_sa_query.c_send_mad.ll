; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_send_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_sa_query.c_send_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_query = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.ib_sa_query** }

@idr_lock = common dso_local global i32 0, align 4
@query_idr = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@IB_SA_ENABLE_LOCAL_SERVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_query*, i32, i32)* @send_mad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_mad(%struct.ib_sa_query* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_query*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ib_sa_query* %0, %struct.ib_sa_query** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @gfpflags_allow_blocking(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @idr_preload(i32 %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %20)
  %22 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = call i32 @idr_alloc(i32* @query_idr, %struct.ib_sa_query* %22, i32 0, i32 0, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = call i32 (...) @idr_preload_end()
  br label %31

31:                                               ; preds = %29, %19
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %84

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %39 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 8
  %42 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %43 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %44 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load %struct.ib_sa_query**, %struct.ib_sa_query*** %46, align 8
  %48 = getelementptr inbounds %struct.ib_sa_query*, %struct.ib_sa_query** %47, i64 0
  store %struct.ib_sa_query* %42, %struct.ib_sa_query** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %51 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %53 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @IB_SA_ENABLE_LOCAL_SERVICE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %36
  %59 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %60 = call i32 @ib_sa_disable_local_svc(%struct.ib_sa_query* %59)
  br label %61

61:                                               ; preds = %58, %36
  %62 = load %struct.ib_sa_query*, %struct.ib_sa_query** %5, align 8
  %63 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = call i32 @ib_post_send_mad(%struct.TYPE_2__* %64, i32* null)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_lock_irqsave(i32* @idr_lock, i64 %69)
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @idr_remove(i32* @query_idr, i32 %71)
  %73 = load i64, i64* %9, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @idr_lock, i64 %73)
  br label %75

75:                                               ; preds = %68, %61
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  br label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %34
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @gfpflags_allow_blocking(i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_alloc(i32*, %struct.ib_sa_query*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @ib_sa_disable_local_svc(%struct.ib_sa_query*) #1

declare dso_local i32 @ib_post_send_mad(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

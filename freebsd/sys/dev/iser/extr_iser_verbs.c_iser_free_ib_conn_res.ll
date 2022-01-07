; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_free_ib_conn_res.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_verbs.c_iser_free_ib_conn_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.iser_conn = type { i64, i64, %struct.ib_conn }
%struct.ib_conn = type { %struct.iser_device*, i32*, i32, %struct.TYPE_3__* }
%struct.iser_device = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"freeing conn %p cma_id %p qp %p\00", align 1
@ig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_free_ib_conn_res(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_conn*, align 8
  %6 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 2
  store %struct.ib_conn* %8, %struct.ib_conn** %5, align 8
  %9 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %10 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %9, i32 0, i32 0
  %11 = load %struct.iser_device*, %struct.iser_device** %10, align 8
  store %struct.iser_device* %11, %struct.iser_device** %6, align 8
  %12 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %13 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %14 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %17 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @ISER_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.iser_conn* %12, i32 %15, i32* %18)
  %20 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %21 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %2
  %25 = call i32 @mtx_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0))
  %26 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %27 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %26, i32 0, i32 3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = call i32 @mtx_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0))
  %33 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %34 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rdma_destroy_qp(i32 %35)
  %37 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %38 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %37, i32 0, i32 1
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %24, %2
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %39
  %43 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %44 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %49 = call i32 @iser_free_login_buf(%struct.iser_conn* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %52 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %57 = call i32 @iser_free_rx_descriptors(%struct.iser_conn* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %60 = icmp ne %struct.iser_device* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %63 = call i32 @iser_device_try_release(%struct.iser_device* %62)
  %64 = load %struct.ib_conn*, %struct.ib_conn** %5, align 8
  %65 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %64, i32 0, i32 0
  store %struct.iser_device* null, %struct.iser_device** %65, align 8
  br label %66

66:                                               ; preds = %61, %58
  br label %67

67:                                               ; preds = %66, %39
  ret void
}

declare dso_local i32 @ISER_INFO(i8*, %struct.iser_conn*, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @rdma_destroy_qp(i32) #1

declare dso_local i32 @iser_free_login_buf(%struct.iser_conn*) #1

declare dso_local i32 @iser_free_rx_descriptors(%struct.iser_conn*) #1

declare dso_local i32 @iser_device_try_release(%struct.iser_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

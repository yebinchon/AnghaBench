; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_transport_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_transport_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"ib_qp_destroy failed\0A\00", align 1
@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ib_cq_destroy (send) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ib_cq_destroy (recv) failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_transport_dev_cleanup(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %2, align 8
  %3 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %3, i32 0, i32 4
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 4
  %10 = load i32*, i32** %9, align 8
  %11 = call i64 @ib_destroy_qp(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %15 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %7
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 4
  store i32* null, i32** %18, align 8
  %19 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 3
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %25 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ib_destroy_cq(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %31 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ib_destroy_cq(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %40 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %43 = call i32 @ipoib_cm_dev_cleanup(%struct.ipoib_dev_priv* %42)
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %2, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ib_dealloc_pd(i32 %46)
  ret void
}

declare dso_local i64 @ib_destroy_qp(i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @ib_destroy_cq(i32) #1

declare dso_local i32 @ipoib_cm_dev_cleanup(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ib_dealloc_pd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

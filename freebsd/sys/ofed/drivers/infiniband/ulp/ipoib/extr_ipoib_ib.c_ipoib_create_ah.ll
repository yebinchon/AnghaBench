; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_create_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_ah = type { i32, i32, i64, %struct.ipoib_dev_priv* }
%struct.ipoib_dev_priv = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Created ah %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipoib_ah* @ipoib_create_ah(%struct.ipoib_dev_priv* %0, %struct.ib_pd* %1, %struct.ib_ah_attr* %2) #0 {
  %4 = alloca %struct.ipoib_ah*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_pd*, align 8
  %7 = alloca %struct.ib_ah_attr*, align 8
  %8 = alloca %struct.ipoib_ah*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %5, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %6, align 8
  store %struct.ib_ah_attr* %2, %struct.ib_ah_attr** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ipoib_ah* @kmalloc(i32 24, i32 %9)
  store %struct.ipoib_ah* %10, %struct.ipoib_ah** %8, align 8
  %11 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %12 = icmp ne %struct.ipoib_ah* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.ipoib_ah* null, %struct.ipoib_ah** %4, align 8
  br label %44

14:                                               ; preds = %3
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %17 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %16, i32 0, i32 3
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %17, align 8
  %18 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %19 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %21 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %20, i32 0, i32 1
  %22 = call i32 @kref_init(i32* %21)
  %23 = load %struct.ib_pd*, %struct.ib_pd** %6, align 8
  %24 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %7, align 8
  %25 = call i32 @ib_create_ah(%struct.ib_pd* %23, %struct.ib_ah_attr* %24)
  %26 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %27 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %29 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @IS_ERR(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %14
  %34 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %35 = call i32 @kfree(%struct.ipoib_ah* %34)
  store %struct.ipoib_ah* null, %struct.ipoib_ah** %8, align 8
  br label %42

36:                                               ; preds = %14
  %37 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %38 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  %39 = getelementptr inbounds %struct.ipoib_ah, %struct.ipoib_ah* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.ipoib_ah*, %struct.ipoib_ah** %8, align 8
  store %struct.ipoib_ah* %43, %struct.ipoib_ah** %4, align 8
  br label %44

44:                                               ; preds = %42, %13
  %45 = load %struct.ipoib_ah*, %struct.ipoib_ah** %4, align 8
  ret %struct.ipoib_ah* %45
}

declare dso_local %struct.ipoib_ah* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ib_create_ah(%struct.ib_pd*, %struct.ib_ah_attr*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.ipoib_ah*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

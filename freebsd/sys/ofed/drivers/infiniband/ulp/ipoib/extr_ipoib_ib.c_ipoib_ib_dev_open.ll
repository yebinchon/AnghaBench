; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"P_Key 0x%04x not found\0A\00", align 1
@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ipoib_init_qp returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ipoib_ib_post_receives returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ipoib_cm_dev_open returned %d\0A\00", align 1
@IPOIB_STOP_REAPER = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_open(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  %5 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %6 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 3
  %16 = call i64 @ib_find_pkey(i32 %7, i32 %10, i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 1
  %27 = call i32 @clear_bit(i32 %24, i32* %26)
  store i32 -1, i32* %2, align 4
  br label %77

28:                                               ; preds = %1
  %29 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 1
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %34 = call i32 @ipoib_init_qp(%struct.ipoib_dev_priv* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 -1, i32* %2, align 4
  br label %77

41:                                               ; preds = %28
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %43 = call i32 @ipoib_ib_post_receives(%struct.ipoib_dev_priv* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %51 = call i32 @ipoib_ib_dev_stop(%struct.ipoib_dev_priv* %50, i32 1)
  store i32 -1, i32* %2, align 4
  br label %77

52:                                               ; preds = %41
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %54 = call i32 @ipoib_cm_dev_open(%struct.ipoib_dev_priv* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %62 = call i32 @ipoib_ib_dev_stop(%struct.ipoib_dev_priv* %61, i32 1)
  store i32 -1, i32* %2, align 4
  br label %77

63:                                               ; preds = %52
  %64 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 1
  %67 = call i32 @clear_bit(i32 %64, i32* %66)
  %68 = load i32, i32* @ipoib_workqueue, align 4
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 2
  %71 = load i32, i32* @HZ, align 4
  %72 = call i32 @queue_delayed_work(i32 %68, i32* %70, i32 %71)
  %73 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %75 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %74, i32 0, i32 1
  %76 = call i32 @set_bit(i32 %73, i32* %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %63, %57, %46, %37, %18
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_init_qp(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_ib_post_receives(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @ipoib_ib_dev_stop(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_cm_dev_open(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

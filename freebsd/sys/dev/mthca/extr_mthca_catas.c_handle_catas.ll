; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_catas.c_handle_catas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_catas.c_handle_catas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.ib_event = type { %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i64 }

@IB_EVENT_DEVICE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"uplink bus error\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"DDR data error\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"internal parity error\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Catastrophic error detected: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"  buf[%02x]: %08x\0A\00", align 1
@catas_reset_disable = common dso_local global i64 0, align 8
@catas_lock = common dso_local global i32 0, align 4
@catas_list = common dso_local global i32 0, align 4
@catas_wq = common dso_local global i32 0, align 4
@catas_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*)* @handle_catas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_catas(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca %struct.ib_event, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %7 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %3, i32 0, i32 2
  store i32* %8, i32** %9, align 8
  %10 = load i32, i32* @IB_EVENT_DEVICE_FATAL, align 4
  %11 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %3, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %3, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = call i32 @ib_dispatch_event(%struct.ib_event* %3)
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @readl(i64 %20)
  %22 = call i32 @swab32(i32 %21)
  %23 = ashr i32 %22, 24
  switch i32 %23, label %28 [
    i32 130, label %24
    i32 128, label %25
    i32 131, label %26
    i32 129, label %27
  ]

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %29

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %29

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %29

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %29

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %24
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %53, %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %36 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %34, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %44 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = call i32 @readl(i64 %49)
  %51 = call i32 @swab32(i32 %50)
  %52 = call i32 (%struct.mthca_dev*, i8*, ...) @mthca_err(%struct.mthca_dev* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %42, i32 %51)
  br label %53

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load i64, i64* @catas_reset_disable, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %71

60:                                               ; preds = %56
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @spin_lock_irqsave(i32* @catas_lock, i64 %61)
  %63 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %64 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @list_add(i32* %65, i32* @catas_list)
  %67 = load i32, i32* @catas_wq, align 4
  %68 = call i32 @queue_work(i32 %67, i32* @catas_work)
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @catas_lock, i64 %69)
  br label %71

71:                                               ; preds = %60, %59
  ret void
}

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

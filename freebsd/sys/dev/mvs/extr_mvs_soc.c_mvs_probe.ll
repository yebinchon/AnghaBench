; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i8* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mrvl,sata\00", align 1
@mvs_ids = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"%s SATA controller\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mvs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @ofw_bus_status_okay(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %66

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ofw_bus_is_compatible(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %2, align 4
  br label %66

19:                                               ; preds = %13
  %20 = call i32 @soc_id(i64* %6, i64* %7)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %61, %19
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvs_ids, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %21
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvs_ids, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %29
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvs_ids, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %38
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mvs_ids, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @snprintf(i8* %48, i32 64, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* %3, align 4
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %58 = call i32 @device_set_desc_copy(i32 %56, i8* %57)
  %59 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %59, i32* %2, align 4
  br label %66

60:                                               ; preds = %38, %29
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %21

64:                                               ; preds = %21
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %47, %17, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @ofw_bus_status_okay(i32) #1

declare dso_local i32 @ofw_bus_is_compatible(i32, i8*) #1

declare dso_local i32 @soc_id(i64*, i64*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

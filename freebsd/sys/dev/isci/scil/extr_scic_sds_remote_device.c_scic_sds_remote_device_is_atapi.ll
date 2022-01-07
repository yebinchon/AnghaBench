; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_is_atapi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_is_atapi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_remote_device_is_atapi(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %60

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @scic_sds_port_get_a_connected_phy(i32 %24)
  store i32* %25, i32** %4, align 8
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @scic_sata_phy_get_properties(i32* %26, %struct.TYPE_13__* %5)
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %6, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %56

33:                                               ; preds = %21
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 20
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 235
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 95
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @TRUE, align 4
  store i32 %55, i32* %2, align 4
  br label %60

56:                                               ; preds = %48, %43, %38, %33, %21
  %57 = load i32, i32* @FALSE, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %16
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56, %54, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32* @scic_sds_port_get_a_connected_phy(i32) #1

declare dso_local i32 @scic_sata_phy_get_properties(i32*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

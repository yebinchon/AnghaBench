; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_set_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_port.c_scic_sds_port_set_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i32, i32 }
%struct.TYPE_10__ = type { i64 }

@SCI_INVALID_HANDLE = common dso_local global i64 0, align 8
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCI_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_port_set_phy(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %47

16:                                               ; preds = %2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = call i64 @scic_sds_phy_get_port(%struct.TYPE_10__* %17)
  %19 = load i64, i64* @SCI_INVALID_HANDLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %16
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @scic_sds_port_is_valid_phy_assignment(%struct.TYPE_9__* %22, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = ptrtoint %struct.TYPE_10__* %34 to i64
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i64, i64* %38, i64 %41
  store i64 %35, i64* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = call i32 @scic_sds_phy_set_port(%struct.TYPE_10__* %43, %struct.TYPE_9__* %44)
  %46 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %46, i32* %3, align 4
  br label %49

47:                                               ; preds = %21, %16, %2
  %48 = load i32, i32* @SCI_FAILURE, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %47, %28
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @scic_sds_phy_get_port(%struct.TYPE_10__*) #1

declare dso_local i64 @scic_sds_port_is_valid_phy_assignment(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @scic_sds_phy_set_port(%struct.TYPE_10__*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

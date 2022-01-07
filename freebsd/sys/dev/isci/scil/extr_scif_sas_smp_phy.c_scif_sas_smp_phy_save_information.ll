; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_phy.c_scif_sas_smp_phy_save_information.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_smp_phy.c_scif_sas_smp_phy_save_information.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_10__, i64, i32, i8*, i32* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_11__ = type { i64, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@SMP_EDGE_EXPANDER_DEVICE = common dso_local global i64 0, align 8
@SMP_FANOUT_EXPANDER_DEVICE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scif_sas_smp_phy_save_information(%struct.TYPE_12__* %0, i32* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %6, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = ptrtoint i8* %27 to i64
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SMP_EDGE_EXPANDER_DEVICE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %3
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SMP_FANOUT_EXPANDER_DEVICE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32*, i32** %5, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32* %56, i32** %59, align 8
  br label %61

60:                                               ; preds = %49, %3
  br label %61

61:                                               ; preds = %60, %55
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

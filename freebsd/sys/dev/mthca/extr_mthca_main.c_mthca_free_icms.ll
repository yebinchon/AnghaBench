; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_free_icms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_free_icms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@MTHCA_FLAG_SRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mthca_dev*)* @mthca_free_icms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mthca_free_icms(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %3 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 6
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %3, i32 %7)
  %9 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MTHCA_FLAG_SRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %17 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %16, i32 %20)
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %25 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %23, i32 %27)
  %29 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %30 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %31 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %29, i32 %33)
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %37 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %35, i32 %39)
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %42 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %43 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %41, i32 %45)
  %47 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %48 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %49 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %47, i32 %51)
  %53 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mthca_free_icm_table(%struct.mthca_dev* %53, i32 %57)
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %60 = call i32 @mthca_unmap_eq_icm(%struct.mthca_dev* %59)
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %62 = call i32 @mthca_UNMAP_ICM_AUX(%struct.mthca_dev* %61)
  %63 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @mthca_free_icm(%struct.mthca_dev* %63, i32 %68, i32 0)
  ret void
}

declare dso_local i32 @mthca_free_icm_table(%struct.mthca_dev*, i32) #1

declare dso_local i32 @mthca_unmap_eq_icm(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_UNMAP_ICM_AUX(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_free_icm(%struct.mthca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

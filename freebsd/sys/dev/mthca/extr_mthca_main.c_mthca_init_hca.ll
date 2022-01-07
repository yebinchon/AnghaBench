; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_init_hca.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_main.c_mthca_init_hca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_adapter = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"QUERY_ADAPTER command returned %d, aborting.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_init_hca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_init_hca(%struct.mthca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mthca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_adapter, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %3, align 8
  %6 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %7 = call i64 @mthca_is_memfree(%struct.mthca_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %11 = call i32 @mthca_init_arbel(%struct.mthca_dev* %10)
  store i32 %11, i32* %4, align 4
  br label %15

12:                                               ; preds = %1
  %13 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %14 = call i32 @mthca_init_tavor(%struct.mthca_dev* %13)
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %54

20:                                               ; preds = %15
  %21 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %22 = call i32 @mthca_QUERY_ADAPTER(%struct.mthca_dev* %21, %struct.mthca_adapter* %5)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mthca_err(%struct.mthca_dev* %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %50

29:                                               ; preds = %20
  %30 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %5, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %36 = call i64 @mthca_is_memfree(%struct.mthca_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %42 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %29
  %44 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mthca_adapter, %struct.mthca_adapter* %5, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i32 %46, i32 %48, i32 4)
  store i32 0, i32* %2, align 4
  br label %54

50:                                               ; preds = %25
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %3, align 8
  %52 = call i32 @mthca_close_hca(%struct.mthca_dev* %51)
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %43, %18
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_arbel(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_init_tavor(%struct.mthca_dev*) #1

declare dso_local i32 @mthca_QUERY_ADAPTER(%struct.mthca_dev*, %struct.mthca_adapter*) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mthca_close_hca(%struct.mthca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

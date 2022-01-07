; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_pd.c_mthca_pd_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_pd.c_mthca_pd_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mthca_pd = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_READ = common dso_local global i32 0, align 4
@MTHCA_MPT_FLAG_LOCAL_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_pd_alloc(%struct.mthca_dev* %0, i32 %1, %struct.mthca_pd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mthca_pd*, align 8
  %8 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mthca_pd* %2, %struct.mthca_pd** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %11 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %13 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %12, i32 0, i32 3
  %14 = call i32 @atomic_set(i32* %13, i32 0)
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @mthca_alloc(i32* %17)
  %19 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %20 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %22 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %33 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %34 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_READ, align 4
  %37 = load i32, i32* @MTHCA_MPT_FLAG_LOCAL_WRITE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %40 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %39, i32 0, i32 2
  %41 = call i32 @mthca_mr_alloc_notrans(%struct.mthca_dev* %32, i32 %35, i32 %38, i32* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %31
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %5, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.mthca_pd*, %struct.mthca_pd** %7, align 8
  %49 = getelementptr inbounds %struct.mthca_pd, %struct.mthca_pd* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @mthca_free(i32* %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %31
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %25
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @mthca_mr_alloc_notrans(%struct.mthca_dev*, i32, i32, i32*) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_alloc_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_qp.c_mthca_alloc_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mthca_pd = type { i32 }
%struct.mthca_cq = type { i32 }
%struct.ib_qp_cap = type { i32 }
%struct.mthca_qp = type { i32, i64, i32 }

@RC = common dso_local global i32 0, align 4
@UC = common dso_local global i32 0, align 4
@UD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_alloc_qp(%struct.mthca_dev* %0, %struct.mthca_pd* %1, %struct.mthca_cq* %2, %struct.mthca_cq* %3, i32 %4, i32 %5, %struct.ib_qp_cap* %6, %struct.mthca_qp* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.mthca_dev*, align 8
  %11 = alloca %struct.mthca_pd*, align 8
  %12 = alloca %struct.mthca_cq*, align 8
  %13 = alloca %struct.mthca_cq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_qp_cap*, align 8
  %17 = alloca %struct.mthca_qp*, align 8
  %18 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %10, align 8
  store %struct.mthca_pd* %1, %struct.mthca_pd** %11, align 8
  store %struct.mthca_cq* %2, %struct.mthca_cq** %12, align 8
  store %struct.mthca_cq* %3, %struct.mthca_cq** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ib_qp_cap* %6, %struct.ib_qp_cap** %16, align 8
  store %struct.mthca_qp* %7, %struct.mthca_qp** %17, align 8
  %19 = load i32, i32* %14, align 4
  switch i32 %19, label %32 [
    i32 130, label %20
    i32 129, label %24
    i32 128, label %28
  ]

20:                                               ; preds = %8
  %21 = load i32, i32* @RC, align 4
  %22 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %23 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  br label %35

24:                                               ; preds = %8
  %25 = load i32, i32* @UC, align 4
  %26 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %27 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %35

28:                                               ; preds = %8
  %29 = load i32, i32* @UD, align 4
  %30 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %31 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  br label %35

32:                                               ; preds = %8
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %103

35:                                               ; preds = %28, %24, %20
  %36 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %37 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %16, align 8
  %38 = load %struct.mthca_pd*, %struct.mthca_pd** %11, align 8
  %39 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %40 = call i32 @mthca_set_qp_size(%struct.mthca_dev* %36, %struct.ib_qp_cap* %37, %struct.mthca_pd* %38, %struct.mthca_qp* %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %9, align 4
  br label %103

45:                                               ; preds = %35
  %46 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %47 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = call i32 @mthca_alloc(i32* %48)
  %50 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %51 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %53 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %103

59:                                               ; preds = %45
  %60 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %61 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  %62 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %63 = load %struct.mthca_pd*, %struct.mthca_pd** %11, align 8
  %64 = load %struct.mthca_cq*, %struct.mthca_cq** %12, align 8
  %65 = load %struct.mthca_cq*, %struct.mthca_cq** %13, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %68 = call i32 @mthca_alloc_qp_common(%struct.mthca_dev* %62, %struct.mthca_pd* %63, %struct.mthca_cq* %64, %struct.mthca_cq* %65, i32 %66, %struct.mthca_qp* %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %73 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %76 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @mthca_free(i32* %74, i32 %77)
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %9, align 4
  br label %103

80:                                               ; preds = %59
  %81 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %82 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_irq(i32* %83)
  %85 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %86 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %89 = getelementptr inbounds %struct.mthca_qp, %struct.mthca_qp* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %92 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %90, %95
  %97 = load %struct.mthca_qp*, %struct.mthca_qp** %17, align 8
  %98 = call i32 @mthca_array_set(i32* %87, i32 %96, %struct.mthca_qp* %97)
  %99 = load %struct.mthca_dev*, %struct.mthca_dev** %10, align 8
  %100 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_unlock_irq(i32* %101)
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %80, %71, %56, %43, %32
  %104 = load i32, i32* %9, align 4
  ret i32 %104
}

declare dso_local i32 @mthca_set_qp_size(%struct.mthca_dev*, %struct.ib_qp_cap*, %struct.mthca_pd*, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_alloc(i32*) #1

declare dso_local i32 @mthca_alloc_qp_common(%struct.mthca_dev*, %struct.mthca_pd*, %struct.mthca_cq*, %struct.mthca_cq*, i32, %struct.mthca_qp*) #1

declare dso_local i32 @mthca_free(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @mthca_array_set(i32*, i32, %struct.mthca_qp*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

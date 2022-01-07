; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_wq = type { i32, i32*, %struct.ib_pd*, %struct.TYPE_3__*, %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_pd = type { i32, %struct.TYPE_3__* }
%struct.ib_wq_init_attr = type { %struct.TYPE_4__*, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_wq* @ib_create_wq(%struct.ib_pd* %0, %struct.ib_wq_init_attr* %1) #0 {
  %3 = alloca %struct.ib_wq*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_wq_init_attr*, align 8
  %6 = alloca %struct.ib_wq*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_wq_init_attr* %1, %struct.ib_wq_init_attr** %5, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)*, %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)** %10, align 8
  %12 = icmp ne %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ib_wq* @ERR_PTR(i32 %15)
  store %struct.ib_wq* %16, %struct.ib_wq** %3, align 8
  br label %73

17:                                               ; preds = %2
  %18 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)*, %struct.ib_wq* (%struct.ib_pd*, %struct.ib_wq_init_attr*, i32*)** %21, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %25 = call %struct.ib_wq* %22(%struct.ib_pd* %23, %struct.ib_wq_init_attr* %24, i32* null)
  store %struct.ib_wq* %25, %struct.ib_wq** %6, align 8
  %26 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %27 = call i32 @IS_ERR(%struct.ib_wq* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %17
  %30 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %34 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %36 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %39 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %44 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %49 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %48, i32 0, i32 4
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %51 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %54 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %53, i32 0, i32 3
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %56 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %57 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %56, i32 0, i32 2
  store %struct.ib_pd* %55, %struct.ib_pd** %57, align 8
  %58 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %59 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %61 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %60, i32 0, i32 0
  %62 = call i32 @atomic_inc(i32* %61)
  %63 = load %struct.ib_wq_init_attr*, %struct.ib_wq_init_attr** %5, align 8
  %64 = getelementptr inbounds %struct.ib_wq_init_attr, %struct.ib_wq_init_attr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = call i32 @atomic_inc(i32* %66)
  %68 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  %69 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %68, i32 0, i32 0
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %29, %17
  %72 = load %struct.ib_wq*, %struct.ib_wq** %6, align 8
  store %struct.ib_wq* %72, %struct.ib_wq** %3, align 8
  br label %73

73:                                               ; preds = %71, %13
  %74 = load %struct.ib_wq*, %struct.ib_wq** %3, align 8
  ret %struct.ib_wq* %74
}

declare dso_local %struct.ib_wq* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_wq*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

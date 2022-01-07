; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32*, %struct.ib_pd*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, i32*)* }
%struct.ib_pd = type { i32, %struct.TYPE_2__* }
%struct.ib_ah_attr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_ah* @ib_create_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1) #0 {
  %3 = alloca %struct.ib_pd*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.ib_ah*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %3, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %4, align 8
  %6 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %7 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, i32*)*, %struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, i32*)** %9, align 8
  %11 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %12 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %13 = call %struct.ib_ah* %10(%struct.ib_pd* %11, %struct.ib_ah_attr* %12, i32* null)
  store %struct.ib_ah* %13, %struct.ib_ah** %5, align 8
  %14 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %15 = call i32 @IS_ERR(%struct.ib_ah* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %22 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %21, i32 0, i32 2
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %22, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %24 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %25 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %24, i32 0, i32 1
  store %struct.ib_pd* %23, %struct.ib_pd** %25, align 8
  %26 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  %27 = getelementptr inbounds %struct.ib_ah, %struct.ib_ah* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.ib_pd*, %struct.ib_pd** %3, align 8
  %29 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %28, i32 0, i32 0
  %30 = call i32 @atomic_inc(i32* %29)
  br label %31

31:                                               ; preds = %17, %2
  %32 = load %struct.ib_ah*, %struct.ib_ah** %5, align 8
  ret %struct.ib_ah* %32
}

declare dso_local i32 @IS_ERR(%struct.ib_ah*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_lookup_comp_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_uverbs_main.c_ib_uverbs_lookup_comp_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_uverbs_event_file = type { i32, i64 }
%struct.fd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_uverbs_event_file*, i32* }

@uverbs_event_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_uverbs_event_file* @ib_uverbs_lookup_comp_file(i32 %0) #0 {
  %2 = alloca %struct.ib_uverbs_event_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_uverbs_event_file*, align 8
  %5 = alloca %struct.fd, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ib_uverbs_event_file* null, %struct.ib_uverbs_event_file** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.TYPE_2__* @fdget(i32 %6)
  %8 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %8, align 8
  %9 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.ib_uverbs_event_file* null, %struct.ib_uverbs_event_file** %2, align 8
  br label %39

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, @uverbs_event_fops
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %34

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %23, align 8
  store %struct.ib_uverbs_event_file* %24, %struct.ib_uverbs_event_file** %4, align 8
  %25 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %4, align 8
  %26 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store %struct.ib_uverbs_event_file* null, %struct.ib_uverbs_event_file** %4, align 8
  br label %34

30:                                               ; preds = %20
  %31 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %4, align 8
  %32 = getelementptr inbounds %struct.ib_uverbs_event_file, %struct.ib_uverbs_event_file* %31, i32 0, i32 0
  %33 = call i32 @kref_get(i32* %32)
  br label %34

34:                                               ; preds = %30, %29, %19
  %35 = getelementptr inbounds %struct.fd, %struct.fd* %5, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @fdput(%struct.TYPE_2__* %36)
  %38 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %4, align 8
  store %struct.ib_uverbs_event_file* %38, %struct.ib_uverbs_event_file** %2, align 8
  br label %39

39:                                               ; preds = %34, %12
  %40 = load %struct.ib_uverbs_event_file*, %struct.ib_uverbs_event_file** %2, align 8
  ret %struct.ib_uverbs_event_file* %40
}

declare dso_local %struct.TYPE_2__* @fdget(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @fdput(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

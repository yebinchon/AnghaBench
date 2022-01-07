; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i64, i32, %struct.TYPE_14__, i32, i32, i32*, %struct.ib_pd*, %struct.TYPE_8__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)* }
%struct.ib_pd = type { i32, %struct.TYPE_8__* }
%struct.ib_srq_init_attr = type { i64, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__*, %struct.TYPE_11__* }

@ENOSYS = common dso_local global i32 0, align 4
@IB_SRQT_XRC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_srq* @ib_create_srq(%struct.ib_pd* %0, %struct.ib_srq_init_attr* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_srq_init_attr*, align 8
  %6 = alloca %struct.ib_srq*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.ib_srq_init_attr* %1, %struct.ib_srq_init_attr** %5, align 8
  %7 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %8 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %7, i32 0, i32 1
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)*, %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)** %10, align 8
  %12 = icmp ne %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOSYS, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.ib_srq* @ERR_PTR(i32 %15)
  store %struct.ib_srq* %16, %struct.ib_srq** %3, align 8
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %19 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)*, %struct.ib_srq* (%struct.ib_pd*, %struct.ib_srq_init_attr*, i32*)** %21, align 8
  %23 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %24 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %25 = call %struct.ib_srq* %22(%struct.ib_pd* %23, %struct.ib_srq_init_attr* %24, i32* null)
  store %struct.ib_srq* %25, %struct.ib_srq** %6, align 8
  %26 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %27 = call i32 @IS_ERR(%struct.ib_srq* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %100, label %29

29:                                               ; preds = %17
  %30 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %31 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %34 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %33, i32 0, i32 7
  store %struct.TYPE_8__* %32, %struct.TYPE_8__** %34, align 8
  %35 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %36 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %37 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %36, i32 0, i32 6
  store %struct.ib_pd* %35, %struct.ib_pd** %37, align 8
  %38 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %39 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %38, i32 0, i32 5
  store i32* null, i32** %39, align 8
  %40 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %44 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %46 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %49 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %54 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %56 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IB_SRQT_XRC, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %93

60:                                               ; preds = %29
  %61 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %62 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %67 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 1
  store %struct.TYPE_11__* %65, %struct.TYPE_11__** %69, align 8
  %70 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %5, align 8
  %71 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %76 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  store %struct.TYPE_12__* %74, %struct.TYPE_12__** %78, align 8
  %79 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %80 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = call i32 @atomic_inc(i32* %84)
  %86 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %87 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = call i32 @atomic_inc(i32* %91)
  br label %93

93:                                               ; preds = %60, %29
  %94 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %95 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %94, i32 0, i32 0
  %96 = call i32 @atomic_inc(i32* %95)
  %97 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %98 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %97, i32 0, i32 1
  %99 = call i32 @atomic_set(i32* %98, i32 0)
  br label %100

100:                                              ; preds = %93, %17
  %101 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  store %struct.ib_srq* %101, %struct.ib_srq** %3, align 8
  br label %102

102:                                              ; preds = %100, %13
  %103 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  ret %struct.ib_srq* %103
}

declare dso_local %struct.ib_srq* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_srq*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_findzone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_findzone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.busdma_bufzone = type { i64 }
%struct.TYPE_3__ = type { i32, %struct.busdma_bufzone* }

@MAX_ZONE_BUFSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Didn't find a buffer zone of the right size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.busdma_bufzone* @busdma_bufalloc_findzone(%struct.TYPE_3__* %0, i64 %1) #0 {
  %3 = alloca %struct.busdma_bufzone*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.busdma_bufzone*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_ZONE_BUFSIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.busdma_bufzone* null, %struct.busdma_bufzone** %3, align 8
  br label %38

12:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %14, align 8
  store %struct.busdma_bufzone* %15, %struct.busdma_bufzone** %6, align 8
  br label %16

16:                                               ; preds = %31, %12
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %6, align 8
  %24 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %6, align 8
  store %struct.busdma_bufzone* %29, %struct.busdma_bufzone** %3, align 8
  br label %38

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  %34 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %6, align 8
  %35 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %34, i32 1
  store %struct.busdma_bufzone* %35, %struct.busdma_bufzone** %6, align 8
  br label %16

36:                                               ; preds = %16
  %37 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %28, %11
  %39 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %3, align 8
  ret %struct.busdma_bufzone* %39
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

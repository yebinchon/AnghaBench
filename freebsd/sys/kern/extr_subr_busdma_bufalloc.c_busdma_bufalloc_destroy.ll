; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_busdma_bufalloc.c_busdma_bufalloc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.busdma_bufzone* }
%struct.busdma_bufzone = type { i32 }

@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @busdma_bufalloc_destroy(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.busdma_bufzone*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = icmp eq %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %10, align 8
  store %struct.busdma_bufzone* %11, %struct.busdma_bufzone** %3, align 8
  br label %12

12:                                               ; preds = %23, %8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %12
  %19 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %3, align 8
  %20 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uma_zdestroy(i32 %21)
  br label %23

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load %struct.busdma_bufzone*, %struct.busdma_bufzone** %3, align 8
  %27 = getelementptr inbounds %struct.busdma_bufzone, %struct.busdma_bufzone* %26, i32 1
  store %struct.busdma_bufzone* %27, %struct.busdma_bufzone** %3, align 8
  br label %12

28:                                               ; preds = %12
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = call i32 @free(%struct.TYPE_4__* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %7
  ret void
}

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

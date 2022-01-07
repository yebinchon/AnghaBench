; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_pqbatch_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_pqbatch_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_pagequeue = type { i32 }
%struct.vm_batchqueue = type { i32, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_pagequeue*, %struct.vm_batchqueue*, i64)* @vm_pqbatch_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pqbatch_process(%struct.vm_pagequeue* %0, %struct.vm_batchqueue* %1, i64 %2) #0 {
  %4 = alloca %struct.vm_pagequeue*, align 8
  %5 = alloca %struct.vm_batchqueue*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store %struct.vm_pagequeue* %0, %struct.vm_pagequeue** %4, align 8
  store %struct.vm_batchqueue* %1, %struct.vm_batchqueue** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %36, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %12 = getelementptr inbounds %struct.vm_batchqueue, %struct.vm_batchqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %17 = getelementptr inbounds %struct.vm_batchqueue, %struct.vm_batchqueue* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %18, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %7, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @__predict_false(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %15
  br label %36

32:                                               ; preds = %15
  %33 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %4, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %35 = call i32 @vm_pqbatch_process_page(%struct.vm_pagequeue* %33, %struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %9

39:                                               ; preds = %9
  %40 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %41 = call i32 @vm_batchqueue_init(%struct.vm_batchqueue* %40)
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vm_pqbatch_process_page(%struct.vm_pagequeue*, %struct.TYPE_3__*) #1

declare dso_local i32 @vm_batchqueue_init(%struct.vm_batchqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

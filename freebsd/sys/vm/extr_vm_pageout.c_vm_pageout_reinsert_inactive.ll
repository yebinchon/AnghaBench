; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_reinsert_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_reinsert_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scan_state = type { %struct.vm_pagequeue* }
%struct.vm_pagequeue = type { i32 }
%struct.vm_batchqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scan_state*, %struct.vm_batchqueue*, i32*)* @vm_pageout_reinsert_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_reinsert_inactive(%struct.scan_state* %0, %struct.vm_batchqueue* %1, i32* %2) #0 {
  %4 = alloca %struct.scan_state*, align 8
  %5 = alloca %struct.vm_batchqueue*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vm_pagequeue*, align 8
  %8 = alloca i32, align 4
  store %struct.scan_state* %0, %struct.scan_state** %4, align 8
  store %struct.vm_batchqueue* %1, %struct.vm_batchqueue** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.scan_state*, %struct.scan_state** %4, align 8
  %10 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %9, i32 0, i32 0
  %11 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  store %struct.vm_pagequeue* %11, %struct.vm_pagequeue** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @vm_batchqueue_insert(%struct.vm_batchqueue* %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %54

20:                                               ; preds = %14
  %21 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %22 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %21)
  %23 = load %struct.scan_state*, %struct.scan_state** %4, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @vm_pageout_reinsert_inactive_page(%struct.scan_state* %23, i32* %24)
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %32 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %31)
  br label %33

33:                                               ; preds = %30, %20
  br label %34

34:                                               ; preds = %38, %33
  %35 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %36 = call i32* @vm_batchqueue_pop(%struct.vm_batchqueue* %35)
  store i32* %36, i32** %6, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.scan_state*, %struct.scan_state** %4, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @vm_pageout_reinsert_inactive_page(%struct.scan_state* %39, i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %8, align 4
  br label %34

46:                                               ; preds = %34
  %47 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @vm_pagequeue_cnt_add(%struct.vm_pagequeue* %47, i32 %48)
  %50 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %7, align 8
  %51 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %50)
  %52 = load %struct.vm_batchqueue*, %struct.vm_batchqueue** %5, align 8
  %53 = call i32 @vm_batchqueue_init(%struct.vm_batchqueue* %52)
  br label %54

54:                                               ; preds = %46, %19
  ret void
}

declare dso_local i64 @vm_batchqueue_insert(%struct.vm_batchqueue*, i32*) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i64 @vm_pageout_reinsert_inactive_page(%struct.scan_state*, i32*) #1

declare dso_local i32* @vm_batchqueue_pop(%struct.vm_batchqueue*) #1

declare dso_local i32 @vm_pagequeue_cnt_add(%struct.vm_pagequeue*, i32) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_batchqueue_init(%struct.vm_batchqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_createtq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_mca_createtq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mca_banks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"mca\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@mca_tq = common dso_local global i32 0, align 4
@SWI_TQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mca taskq\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mca_createtq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_createtq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @mca_banks, align 8
  %4 = icmp sle i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load i32, i32* @M_WAITOK, align 4
  %8 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %9 = call i32 @taskqueue_create_fast(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %8, i32* @mca_tq)
  store i32 %9, i32* @mca_tq, align 4
  %10 = load i32, i32* @SWI_TQ, align 4
  %11 = call i32 @PI_SWI(i32 %10)
  %12 = call i32 @taskqueue_start_threads(i32* @mca_tq, i32 1, i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 (...) @mca_resize_freelist()
  br label %14

14:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @taskqueue_create_fast(i8*, i32, i32, i32*) #1

declare dso_local i32 @taskqueue_start_threads(i32*, i32, i32, i8*) #1

declare dso_local i32 @PI_SWI(i32) #1

declare dso_local i32 @mca_resize_freelist(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_resume_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_event_resume_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_handler = type { i32, i32, %struct.intr_event* }
%struct.intr_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"interrupt handler \22%s\22 has a NULL interrupt event\00", align 1
@IH_SUSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_event_resume_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.intr_handler*, align 8
  %5 = alloca %struct.intr_event*, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.intr_handler*
  store %struct.intr_handler* %7, %struct.intr_handler** %4, align 8
  %8 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %9 = icmp eq %struct.intr_handler* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  store i32 %11, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %14 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %13, i32 0, i32 2
  %15 = load %struct.intr_event*, %struct.intr_event** %14, align 8
  store %struct.intr_event* %15, %struct.intr_event** %5, align 8
  %16 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %17 = icmp ne %struct.intr_event* %16, null
  %18 = zext i1 %17 to i32
  %19 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %20 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @KASSERT(i32 %18, i8* %23)
  %25 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %26 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %25, i32 0, i32 0
  %27 = call i32 @mtx_lock(i32* %26)
  %28 = load i32, i32* @IH_SUSP, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %31 = getelementptr inbounds %struct.intr_handler, %struct.intr_handler* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.intr_handler*, %struct.intr_handler** %4, align 8
  %35 = call i32 @intr_handler_barrier(%struct.intr_handler* %34)
  %36 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %37 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %12, %10
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @intr_handler_barrier(%struct.intr_handler*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_display_spinlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_display_spinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { i32 }
%struct.thread = type { i64, i64 }
%struct.lock_instance = type { i32 }
%struct.pcpu = type { i32 }

@NOCPU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @witness_display_spinlock(%struct.lock_object* %0, %struct.thread* %1, i32 (i8*, ...)* %2) #0 {
  %4 = alloca %struct.lock_object*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32 (i8*, ...)*, align 8
  %7 = alloca %struct.lock_instance*, align 8
  %8 = alloca %struct.pcpu*, align 8
  store %struct.lock_object* %0, %struct.lock_object** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store i32 (i8*, ...)* %2, i32 (i8*, ...)** %6, align 8
  %9 = load %struct.thread*, %struct.thread** %5, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NOCPU, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  br label %37

20:                                               ; preds = %13
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call %struct.pcpu* @pcpu_find(i64 %23)
  store %struct.pcpu* %24, %struct.pcpu** %8, align 8
  %25 = load %struct.pcpu*, %struct.pcpu** %8, align 8
  %26 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.lock_object*, %struct.lock_object** %4, align 8
  %29 = call %struct.lock_instance* @find_instance(i32 %27, %struct.lock_object* %28)
  store %struct.lock_instance* %29, %struct.lock_instance** %7, align 8
  %30 = load %struct.lock_instance*, %struct.lock_instance** %7, align 8
  %31 = icmp ne %struct.lock_instance* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.lock_instance*, %struct.lock_instance** %7, align 8
  %34 = load i32 (i8*, ...)*, i32 (i8*, ...)** %6, align 8
  %35 = bitcast i32 (i8*, ...)* %34 to i32 (i8*)*
  %36 = call i32 @witness_list_lock(%struct.lock_instance* %33, i32 (i8*)* %35)
  br label %37

37:                                               ; preds = %19, %32, %20
  ret void
}

declare dso_local %struct.pcpu* @pcpu_find(i64) #1

declare dso_local %struct.lock_instance* @find_instance(i32, %struct.lock_object*) #1

declare dso_local i32 @witness_list_lock(%struct.lock_instance*, i32 (i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

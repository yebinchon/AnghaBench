; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_turnstile.c_turnstile_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.turnstile = type { %struct.thread*, i32, %struct.lock_object* }
%struct.thread = type { i32 }
%struct.lock_object = type { i32 }
%struct.turnstile_chain = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnstile_lock(%struct.turnstile* %0, %struct.lock_object** %1, %struct.thread** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.turnstile*, align 8
  %6 = alloca %struct.lock_object**, align 8
  %7 = alloca %struct.thread**, align 8
  %8 = alloca %struct.turnstile_chain*, align 8
  %9 = alloca %struct.lock_object*, align 8
  store %struct.turnstile* %0, %struct.turnstile** %5, align 8
  store %struct.lock_object** %1, %struct.lock_object*** %6, align 8
  store %struct.thread** %2, %struct.thread*** %7, align 8
  %10 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %11 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %10, i32 0, i32 2
  %12 = load %struct.lock_object*, %struct.lock_object** %11, align 8
  store %struct.lock_object* %12, %struct.lock_object** %9, align 8
  %13 = icmp eq %struct.lock_object* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

15:                                               ; preds = %3
  %16 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %17 = call %struct.turnstile_chain* @TC_LOOKUP(%struct.lock_object* %16)
  store %struct.turnstile_chain* %17, %struct.turnstile_chain** %8, align 8
  %18 = load %struct.turnstile_chain*, %struct.turnstile_chain** %8, align 8
  %19 = getelementptr inbounds %struct.turnstile_chain, %struct.turnstile_chain* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock_spin(i32* %19)
  %21 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %22 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %21, i32 0, i32 1
  %23 = call i32 @mtx_lock_spin(i32* %22)
  %24 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %25 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %26 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %25, i32 0, i32 2
  %27 = load %struct.lock_object*, %struct.lock_object** %26, align 8
  %28 = icmp ne %struct.lock_object* %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @__predict_false(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %15
  %33 = load %struct.turnstile_chain*, %struct.turnstile_chain** %8, align 8
  %34 = getelementptr inbounds %struct.turnstile_chain, %struct.turnstile_chain* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock_spin(i32* %34)
  %36 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %37 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %36, i32 0, i32 1
  %38 = call i32 @mtx_unlock_spin(i32* %37)
  store i32 0, i32* %4, align 4
  br label %46

39:                                               ; preds = %15
  %40 = load %struct.lock_object*, %struct.lock_object** %9, align 8
  %41 = load %struct.lock_object**, %struct.lock_object*** %6, align 8
  store %struct.lock_object* %40, %struct.lock_object** %41, align 8
  %42 = load %struct.turnstile*, %struct.turnstile** %5, align 8
  %43 = getelementptr inbounds %struct.turnstile, %struct.turnstile* %42, i32 0, i32 0
  %44 = load %struct.thread*, %struct.thread** %43, align 8
  %45 = load %struct.thread**, %struct.thread*** %7, align 8
  store %struct.thread* %44, %struct.thread** %45, align 8
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %32, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.turnstile_chain* @TC_LOOKUP(%struct.lock_object*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_lock.c_lockmgr_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_object = type { i32 }
%struct.lock_class = type { i32 (%struct.lock_object*)* }

@LK_INTERLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.lock_object*, i32)* @lockmgr_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lockmgr_exit(i32 %0, %struct.lock_object* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lock_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lock_class*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.lock_object* %1, %struct.lock_object** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @LK_INTERLOCK, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %14 = call %struct.lock_class* @LOCK_CLASS(%struct.lock_object* %13)
  store %struct.lock_class* %14, %struct.lock_class** %7, align 8
  %15 = load %struct.lock_class*, %struct.lock_class** %7, align 8
  %16 = getelementptr inbounds %struct.lock_class, %struct.lock_class* %15, i32 0, i32 0
  %17 = load i32 (%struct.lock_object*)*, i32 (%struct.lock_object*)** %16, align 8
  %18 = load %struct.lock_object*, %struct.lock_object** %5, align 8
  %19 = call i32 %17(%struct.lock_object* %18)
  br label %20

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @__predict_false(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 (...) @kick_proc0()
  br label %26

26:                                               ; preds = %24, %20
  ret void
}

declare dso_local %struct.lock_class* @LOCK_CLASS(%struct.lock_object*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @kick_proc0(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

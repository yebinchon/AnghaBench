; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_alq_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_alq_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alq = type { i32 }

@AQ_FLUSHING = common dso_local global i32 0, align 4
@AQ_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alq_flush(%struct.alq* %0) #0 {
  %2 = alloca %struct.alq*, align 8
  %3 = alloca i32, align 4
  store %struct.alq* %0, %struct.alq** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = call i32 (...) @ALD_LOCK()
  %5 = load %struct.alq*, %struct.alq** %2, align 8
  %6 = call i32 @ALQ_LOCK(%struct.alq* %5)
  %7 = load %struct.alq*, %struct.alq** %2, align 8
  %8 = call i64 @HAS_PENDING_DATA(%struct.alq* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.alq*, %struct.alq** %2, align 8
  %12 = getelementptr inbounds %struct.alq, %struct.alq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AQ_FLUSHING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %10
  %18 = load %struct.alq*, %struct.alq** %2, align 8
  %19 = getelementptr inbounds %struct.alq, %struct.alq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AQ_ACTIVE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.alq*, %struct.alq** %2, align 8
  %26 = call i32 @ald_deactivate(%struct.alq* %25)
  br label %27

27:                                               ; preds = %24, %17
  %28 = call i32 (...) @ALD_UNLOCK()
  %29 = load %struct.alq*, %struct.alq** %2, align 8
  %30 = call i32 @alq_doio(%struct.alq* %29)
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %10, %1
  %32 = call i32 (...) @ALD_UNLOCK()
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.alq*, %struct.alq** %2, align 8
  %35 = call i32 @ALQ_UNLOCK(%struct.alq* %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.alq*, %struct.alq** %2, align 8
  %40 = call i32 @wakeup_one(%struct.alq* %39)
  br label %41

41:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @ALD_LOCK(...) #1

declare dso_local i32 @ALQ_LOCK(%struct.alq*) #1

declare dso_local i64 @HAS_PENDING_DATA(%struct.alq*) #1

declare dso_local i32 @ald_deactivate(%struct.alq*) #1

declare dso_local i32 @ALD_UNLOCK(...) #1

declare dso_local i32 @alq_doio(%struct.alq*) #1

declare dso_local i32 @ALQ_UNLOCK(%struct.alq*) #1

declare dso_local i32 @wakeup_one(%struct.alq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

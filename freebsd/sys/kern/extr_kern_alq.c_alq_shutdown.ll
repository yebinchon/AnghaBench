; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_alq_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_alq.c_alq_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alq = type { i32, i32, i32, i32 }

@AQ_SHUTDOWN = common dso_local global i32 0, align 4
@AQ_ACTIVE = common dso_local global i32 0, align 4
@AQ_WANTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"aldclose\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alq*)* @alq_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alq_shutdown(%struct.alq* %0) #0 {
  %2 = alloca %struct.alq*, align 8
  store %struct.alq* %0, %struct.alq** %2, align 8
  %3 = load %struct.alq*, %struct.alq** %2, align 8
  %4 = call i32 @ALQ_LOCK(%struct.alq* %3)
  %5 = load i32, i32* @AQ_SHUTDOWN, align 4
  %6 = load %struct.alq*, %struct.alq** %2, align 8
  %7 = getelementptr inbounds %struct.alq, %struct.alq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = or i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.alq*, %struct.alq** %2, align 8
  %11 = getelementptr inbounds %struct.alq, %struct.alq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AQ_ACTIVE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = load %struct.alq*, %struct.alq** %2, align 8
  %18 = call i64 @HAS_PENDING_DATA(%struct.alq* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load i32, i32* @AQ_ACTIVE, align 4
  %22 = load %struct.alq*, %struct.alq** %2, align 8
  %23 = getelementptr inbounds %struct.alq, %struct.alq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.alq*, %struct.alq** %2, align 8
  %27 = call i32 @ALQ_UNLOCK(%struct.alq* %26)
  %28 = call i32 (...) @ALD_LOCK()
  %29 = load %struct.alq*, %struct.alq** %2, align 8
  %30 = call i32 @ald_activate(%struct.alq* %29)
  %31 = call i32 (...) @ALD_UNLOCK()
  %32 = load %struct.alq*, %struct.alq** %2, align 8
  %33 = call i32 @ALQ_LOCK(%struct.alq* %32)
  br label %34

34:                                               ; preds = %20, %16, %1
  br label %35

35:                                               ; preds = %42, %34
  %36 = load %struct.alq*, %struct.alq** %2, align 8
  %37 = getelementptr inbounds %struct.alq, %struct.alq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AQ_ACTIVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %35
  %43 = load i32, i32* @AQ_WANTED, align 4
  %44 = load %struct.alq*, %struct.alq** %2, align 8
  %45 = getelementptr inbounds %struct.alq, %struct.alq* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load %struct.alq*, %struct.alq** %2, align 8
  %49 = load %struct.alq*, %struct.alq** %2, align 8
  %50 = getelementptr inbounds %struct.alq, %struct.alq* %49, i32 0, i32 3
  %51 = call i32 @msleep_spin(%struct.alq* %48, i32* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %35

52:                                               ; preds = %35
  %53 = load %struct.alq*, %struct.alq** %2, align 8
  %54 = call i32 @ALQ_UNLOCK(%struct.alq* %53)
  %55 = load %struct.alq*, %struct.alq** %2, align 8
  %56 = getelementptr inbounds %struct.alq, %struct.alq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FWRITE, align 4
  %59 = load %struct.alq*, %struct.alq** %2, align 8
  %60 = getelementptr inbounds %struct.alq, %struct.alq* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @curthread, align 4
  %63 = call i32 @vn_close(i32 %57, i32 %58, i32 %61, i32 %62)
  %64 = load %struct.alq*, %struct.alq** %2, align 8
  %65 = getelementptr inbounds %struct.alq, %struct.alq* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @crfree(i32 %66)
  ret void
}

declare dso_local i32 @ALQ_LOCK(%struct.alq*) #1

declare dso_local i64 @HAS_PENDING_DATA(%struct.alq*) #1

declare dso_local i32 @ALQ_UNLOCK(%struct.alq*) #1

declare dso_local i32 @ALD_LOCK(...) #1

declare dso_local i32 @ald_activate(%struct.alq*) #1

declare dso_local i32 @ALD_UNLOCK(...) #1

declare dso_local i32 @msleep_spin(%struct.alq*, i32*, i8*, i32) #1

declare dso_local i32 @vn_close(i32, i32, i32, i32) #1

declare dso_local i32 @crfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

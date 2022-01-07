; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zalloc_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zalloc_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }

@RANDOM_UMA = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"uma_zalloc_domain thread %x zone %s(%p) domain %d flags %d\00", align 1
@curthread = common dso_local global %struct.TYPE_9__* null, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"uma_zalloc_domain: zone \22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"uma_zalloc_domain: called with spinlock or critical section held\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_zalloc_domain(%struct.TYPE_8__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @RANDOM_UMA, align 4
  %10 = call i32 @random_harvest_fast_uma(%struct.TYPE_8__** %5, i32 8, i32 %9)
  %11 = load i32, i32* @KTR_UMA, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CTR5(i32 %11, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_9__* %12, i32 %15, %struct.TYPE_8__* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load i32, i32* @WARN_GIANTOK, align 4
  %26 = load i32, i32* @WARN_SLEEPOK, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WITNESS_WARN(i32 %27, i32* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %24, %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @curthread, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = call i64 (...) @SCHEDULER_STOPPED()
  %39 = icmp ne i64 %38, 0
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i1 [ true, %32 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @zone_alloc_item(%struct.TYPE_8__* %44, i8* %45, i32 %46, i32 %47)
  ret i8* %48
}

declare dso_local i32 @random_harvest_fast_uma(%struct.TYPE_8__**, i32, i32) #1

declare dso_local i32 @CTR5(i32, i8*, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i8* @zone_alloc_item(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

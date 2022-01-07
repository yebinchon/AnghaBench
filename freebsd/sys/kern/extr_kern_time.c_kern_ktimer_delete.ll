; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_ktimer_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }
%struct.itimer = type { i64, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ITF_DELETING = common dso_local global i32 0, align 4
@ITF_WANTED = common dso_local global i32 0, align 4
@PPAUSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"itimer\00", align 1
@timer_delete = common dso_local global i32 0, align 4
@itimer_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_ktimer_delete(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.itimer*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.thread*, %struct.thread** %4, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %6, align 8
  %11 = load %struct.proc*, %struct.proc** %6, align 8
  %12 = call i32 @PROC_LOCK(%struct.proc* %11)
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.itimer* @itimer_find(%struct.proc* %13, i32 %14)
  store %struct.itimer* %15, %struct.itimer** %7, align 8
  %16 = load %struct.itimer*, %struct.itimer** %7, align 8
  %17 = icmp eq %struct.itimer* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.proc*, %struct.proc** %6, align 8
  %20 = call i32 @PROC_UNLOCK(%struct.proc* %19)
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %85

22:                                               ; preds = %2
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = call i32 @PROC_UNLOCK(%struct.proc* %23)
  %25 = load i32, i32* @ITF_DELETING, align 4
  %26 = load %struct.itimer*, %struct.itimer** %7, align 8
  %27 = getelementptr inbounds %struct.itimer, %struct.itimer* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %35, %22
  %31 = load %struct.itimer*, %struct.itimer** %7, align 8
  %32 = getelementptr inbounds %struct.itimer, %struct.itimer* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %30
  %36 = load i32, i32* @ITF_WANTED, align 4
  %37 = load %struct.itimer*, %struct.itimer** %7, align 8
  %38 = getelementptr inbounds %struct.itimer, %struct.itimer* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.itimer*, %struct.itimer** %7, align 8
  %42 = load %struct.itimer*, %struct.itimer** %7, align 8
  %43 = getelementptr inbounds %struct.itimer, %struct.itimer* %42, i32 0, i32 4
  %44 = load i32, i32* @PPAUSE, align 4
  %45 = call i32 @msleep(%struct.itimer* %41, i32* %43, i32 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %30

46:                                               ; preds = %30
  %47 = load i32, i32* @ITF_WANTED, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.itimer*, %struct.itimer** %7, align 8
  %50 = getelementptr inbounds %struct.itimer, %struct.itimer* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load %struct.itimer*, %struct.itimer** %7, align 8
  %54 = getelementptr inbounds %struct.itimer, %struct.itimer* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @timer_delete, align 4
  %57 = load %struct.itimer*, %struct.itimer** %7, align 8
  %58 = call i32 @CLOCK_CALL(i32 %55, i32 %56, %struct.itimer* %57)
  %59 = load %struct.itimer*, %struct.itimer** %7, align 8
  %60 = call i32 @ITIMER_UNLOCK(%struct.itimer* %59)
  %61 = load %struct.proc*, %struct.proc** %6, align 8
  %62 = call i32 @PROC_LOCK(%struct.proc* %61)
  %63 = load %struct.itimer*, %struct.itimer** %7, align 8
  %64 = getelementptr inbounds %struct.itimer, %struct.itimer* %63, i32 0, i32 1
  %65 = call i64 @KSI_ONQ(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %46
  %68 = load %struct.itimer*, %struct.itimer** %7, align 8
  %69 = getelementptr inbounds %struct.itimer, %struct.itimer* %68, i32 0, i32 1
  %70 = call i32 @sigqueue_take(i32* %69)
  br label %71

71:                                               ; preds = %67, %46
  %72 = load %struct.proc*, %struct.proc** %6, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  %80 = load %struct.proc*, %struct.proc** %6, align 8
  %81 = call i32 @PROC_UNLOCK(%struct.proc* %80)
  %82 = load i32, i32* @itimer_zone, align 4
  %83 = load %struct.itimer*, %struct.itimer** %7, align 8
  %84 = call i32 @uma_zfree(i32 %82, %struct.itimer* %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %71, %18
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local %struct.itimer* @itimer_find(%struct.proc*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @msleep(%struct.itimer*, i32*, i32, i8*, i32) #1

declare dso_local i32 @CLOCK_CALL(i32, i32, %struct.itimer*) #1

declare dso_local i32 @ITIMER_UNLOCK(%struct.itimer*) #1

declare dso_local i64 @KSI_ONQ(i32*) #1

declare dso_local i32 @sigqueue_take(i32*) #1

declare dso_local i32 @uma_zfree(i32, %struct.itimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

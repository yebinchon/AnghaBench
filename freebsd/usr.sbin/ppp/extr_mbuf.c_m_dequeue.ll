; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.mqueue = type { i64, %struct.mbuf*, %struct.mbuf* }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"m_dequeue: queue len = %lu\0A\00", align 1
@LogERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"m_dequeue: Not zero (%lu)!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_dequeue(%struct.mqueue* %0) #0 {
  %2 = alloca %struct.mqueue*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.mqueue* %0, %struct.mqueue** %2, align 8
  %4 = load i32, i32* @LogDEBUG, align 4
  %5 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %6 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = call i32 @log_Printf(i32 %4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %11 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %10, i32 0, i32 1
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %3, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = icmp ne %struct.mbuf* %13, null
  br i1 %14, label %15, label %52

15:                                               ; preds = %1
  %16 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %17 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %16, i32 0, i32 1
  %18 = load %struct.mbuf*, %struct.mbuf** %17, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %21 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %22 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %21, i32 0, i32 1
  store %struct.mbuf* %20, %struct.mbuf** %22, align 8
  %23 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %24 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %28 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %27, i32 0, i32 1
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = icmp eq %struct.mbuf* %29, null
  br i1 %30, label %31, label %49

31:                                               ; preds = %15
  %32 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %33 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %32, i32 0, i32 1
  %34 = load %struct.mbuf*, %struct.mbuf** %33, align 8
  %35 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %36 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %35, i32 0, i32 2
  store %struct.mbuf* %34, %struct.mbuf** %36, align 8
  %37 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %38 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load i32, i32* @LogERROR, align 4
  %43 = load %struct.mqueue*, %struct.mqueue** %2, align 8
  %44 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @log_Printf(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %31
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %51, align 8
  br label %52

52:                                               ; preds = %49, %1
  %53 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %53
}

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

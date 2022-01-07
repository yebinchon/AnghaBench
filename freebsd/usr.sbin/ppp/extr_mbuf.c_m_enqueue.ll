; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue = type { i64, %struct.mbuf*, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"m_enqueue: len = %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_enqueue(%struct.mqueue* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mqueue*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mqueue* %0, %struct.mqueue** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %6 = icmp ne %struct.mbuf* %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %2
  %8 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %9 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %8, i32 0, i32 2
  %10 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %15 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %14, i32 0, i32 2
  %16 = load %struct.mbuf*, %struct.mbuf** %15, align 8
  %17 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %16, i32 0, i32 0
  store %struct.mbuf* %13, %struct.mbuf** %17, align 8
  %18 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %19 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %20 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %19, i32 0, i32 2
  store %struct.mbuf* %18, %struct.mbuf** %20, align 8
  br label %27

21:                                               ; preds = %7
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %24 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %23, i32 0, i32 1
  store %struct.mbuf* %22, %struct.mbuf** %24, align 8
  %25 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %26 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %25, i32 0, i32 2
  store %struct.mbuf* %22, %struct.mbuf** %26, align 8
  br label %27

27:                                               ; preds = %21, %12
  %28 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %29 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* @LogDEBUG, align 4
  %33 = load %struct.mqueue*, %struct.mqueue** %3, align 8
  %34 = getelementptr inbounds %struct.mqueue, %struct.mqueue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @log_Printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %35)
  br label %37

37:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_Dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_Dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"link_Dequeue: Dequeued from queue %d, containing %lu more packets\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @link_Dequeue(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbuf*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  %5 = load %struct.link*, %struct.link** %2, align 8
  %6 = call i32 @LINK_QUEUES(%struct.link* %5)
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %3, align 4
  br label %8

8:                                                ; preds = %42, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load %struct.link*, %struct.link** %2, align 8
  %13 = getelementptr inbounds %struct.link, %struct.link* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %11
  %22 = load %struct.link*, %struct.link** %2, align 8
  %23 = getelementptr inbounds %struct.link, %struct.link* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = call %struct.mbuf* @m_dequeue(%struct.TYPE_2__* %27)
  store %struct.mbuf* %28, %struct.mbuf** %4, align 8
  %29 = load i32, i32* @LogDEBUG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.link*, %struct.link** %2, align 8
  %32 = getelementptr inbounds %struct.link, %struct.link* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @log_Printf(i32 %29, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %39)
  br label %45

41:                                               ; preds = %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %3, align 4
  br label %8

45:                                               ; preds = %21, %8
  %46 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %46
}

declare dso_local i32 @LINK_QUEUES(%struct.link*) #1

declare dso_local %struct.mbuf* @m_dequeue(%struct.TYPE_2__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

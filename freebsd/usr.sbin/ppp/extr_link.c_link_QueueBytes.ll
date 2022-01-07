; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_QueueBytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_link.c_link_QueueBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @link_QueueBytes(%struct.link* %0) #0 {
  %2 = alloca %struct.link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  store %struct.link* %0, %struct.link** %2, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %42, %1
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.link*, %struct.link** %2, align 8
  %10 = call i32 @LINK_QUEUES(%struct.link* %9)
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %45

12:                                               ; preds = %7
  %13 = load %struct.link*, %struct.link** %2, align 8
  %14 = getelementptr inbounds %struct.link, %struct.link* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.link*, %struct.link** %2, align 8
  %22 = getelementptr inbounds %struct.link, %struct.link* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load %struct.mbuf*, %struct.mbuf** %27, align 8
  store %struct.mbuf* %28, %struct.mbuf** %6, align 8
  br label %29

29:                                               ; preds = %33, %12
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %4, align 8
  %32 = icmp ne i64 %30, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %35 = call i64 @m_length(%struct.mbuf* %34)
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = load %struct.mbuf*, %struct.mbuf** %39, align 8
  store %struct.mbuf* %40, %struct.mbuf** %6, align 8
  br label %29

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load i64, i64* %5, align 8
  ret i64 %46
}

declare dso_local i32 @LINK_QUEUES(%struct.link*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

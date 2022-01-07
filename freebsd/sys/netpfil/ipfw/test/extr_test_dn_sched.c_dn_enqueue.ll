; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_test_dn_sched.c_dn_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_test_dn_sched.c_dn_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dn_enqueue(%struct.dn_queue* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dn_queue*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.dn_queue* %0, %struct.dn_queue** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %44

11:                                               ; preds = %3
  %12 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %13 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp sge i32 %15, 200
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %44

18:                                               ; preds = %11
  %19 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %20 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %19, i32 0, i32 1
  %21 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %22 = call i32 @mq_append(i32* %20, %struct.mbuf* %21)
  %23 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %24 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %33 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %31
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 4
  %39 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %40 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  store i32 0, i32* %4, align 4
  br label %50

44:                                               ; preds = %17, %10
  %45 = load %struct.dn_queue*, %struct.dn_queue** %5, align 8
  %46 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %44, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @mq_append(i32*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

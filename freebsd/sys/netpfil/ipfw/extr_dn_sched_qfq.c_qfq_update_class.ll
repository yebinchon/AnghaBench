; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_update_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_update_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_group = type { i64, i32 }
%struct.qfq_class = type { i64, i64, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qfq_sched*, %struct.qfq_group*, %struct.qfq_class*)* @qfq_update_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_update_class(%struct.qfq_sched* %0, %struct.qfq_group* %1, %struct.qfq_class* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qfq_sched*, align 8
  %6 = alloca %struct.qfq_group*, align 8
  %7 = alloca %struct.qfq_class*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %5, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %6, align 8
  store %struct.qfq_class* %2, %struct.qfq_class** %7, align 8
  %10 = load %struct.qfq_sched*, %struct.qfq_sched** %5, align 8
  %11 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %12 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %15 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %14, i32 0, i32 1
  store i64 %13, i64* %15, align 8
  %16 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %17 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp eq %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %24 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %23)
  br label %66

25:                                               ; preds = %3
  %26 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %27 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %35 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %40 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = mul nsw i64 %38, %41
  %43 = add nsw i64 %36, %42
  %44 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %45 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %44, i32 0, i32 2
  store i64 %43, i64* %45, align 8
  %46 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %47 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %50 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @qfq_round_down(i64 %48, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %55 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %67

59:                                               ; preds = %25
  %60 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %61 = call i32 @qfq_front_slot_remove(%struct.qfq_group* %60)
  %62 = load %struct.qfq_group*, %struct.qfq_group** %6, align 8
  %63 = load %struct.qfq_class*, %struct.qfq_class** %7, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @qfq_slot_insert(%struct.qfq_group* %62, %struct.qfq_class* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %22
  store i32 1, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %58
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @qfq_front_slot_remove(%struct.qfq_group*) #1

declare dso_local i64 @qfq_round_down(i64, i32) #1

declare dso_local i32 @qfq_slot_insert(%struct.qfq_group*, %struct.qfq_class*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

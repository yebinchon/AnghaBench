; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_class = type { i32 }
%struct.qfq_group = type { i32, i32, %struct.qfq_class**, i32 }

@.str = private unnamed_addr constant [15 x i8] c"grp %d full %x\00", align 1
@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qfq_class* (%struct.qfq_group*)* @qfq_slot_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qfq_class* @qfq_slot_scan(%struct.qfq_group* %0) #0 {
  %2 = alloca %struct.qfq_class*, align 8
  %3 = alloca %struct.qfq_group*, align 8
  %4 = alloca i32, align 4
  store %struct.qfq_group* %0, %struct.qfq_group** %3, align 8
  %5 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %6 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %9 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ND(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %13 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store %struct.qfq_class* null, %struct.qfq_class** %2, align 8
  br label %50

17:                                               ; preds = %1
  %18 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @ffs(i32 %20)
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %17
  %26 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %27 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %32 = srem i32 %30, %31
  %33 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %34 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %37 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = ashr i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %25, %17
  %41 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %42 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %41, i32 0, i32 2
  %43 = load %struct.qfq_class**, %struct.qfq_class*** %42, align 8
  %44 = load %struct.qfq_group*, %struct.qfq_group** %3, align 8
  %45 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %43, i64 %47
  %49 = load %struct.qfq_class*, %struct.qfq_class** %48, align 8
  store %struct.qfq_class* %49, %struct.qfq_class** %2, align 8
  br label %50

50:                                               ; preds = %40, %16
  %51 = load %struct.qfq_class*, %struct.qfq_class** %2, align 8
  ret %struct.qfq_class* %51
}

declare dso_local i32 @ND(i8*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

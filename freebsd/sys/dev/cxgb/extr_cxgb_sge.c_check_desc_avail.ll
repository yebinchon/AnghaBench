; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_check_desc_avail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_check_desc_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_txq = type { i32, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.sge_qset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sge_txq*, %struct.mbuf*, i32, i32)* @check_desc_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_desc_avail(i32* %0, %struct.sge_txq* %1, %struct.mbuf* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sge_qset*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %8, align 8
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %14 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i32 0, i32 3
  %15 = call i32 @mbufq_len(i32* %14)
  %16 = call i64 @__predict_false(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %5
  br label %19

19:                                               ; preds = %55, %18
  %20 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 3
  %22 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %23 = call i32 @mbufq_enqueue(i32* %21, %struct.mbuf* %22)
  store i32 1, i32* %6, align 4
  br label %61

24:                                               ; preds = %5
  %25 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %26 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %29 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @__predict_false(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %24
  %38 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call %struct.sge_qset* @txq_to_qset(%struct.sge_txq* %38, i32 %39)
  store %struct.sge_qset* %40, %struct.sge_qset** %12, align 8
  %41 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %42 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %41, i32 0, i32 0
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @setbit(i32* %42, i32 %43)
  %45 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %46 = call i64 @should_restart_tx(%struct.sge_txq* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.sge_qset*, %struct.sge_qset** %12, align 8
  %51 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %50, i32 0, i32 0
  %52 = call i64 @test_and_clear_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 2, i32* %6, align 4
  br label %61

55:                                               ; preds = %48, %37
  %56 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %57 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %19

60:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %54, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mbufq_len(i32*) #1

declare dso_local i32 @mbufq_enqueue(i32*, %struct.mbuf*) #1

declare dso_local %struct.sge_qset* @txq_to_qset(%struct.sge_txq*, i32) #1

declare dso_local i32 @setbit(i32*, i32) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

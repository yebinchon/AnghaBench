; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_restart_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_restart_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.adapter* }
%struct.adapter = type { i32 }

@TXQ_OFLD = common dso_local global i64 0, align 8
@TXQ_CTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_qset*)* @restart_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_tx(%struct.sge_qset* %0) #0 {
  %2 = alloca %struct.sge_qset*, align 8
  %3 = alloca %struct.adapter*, align 8
  store %struct.sge_qset* %0, %struct.sge_qset** %2, align 8
  %4 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %5 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %10 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %9, i32 0, i32 1
  %11 = load i64, i64* @TXQ_OFLD, align 8
  %12 = call i64 @isset(i32* %10, i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %16 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @TXQ_OFLD, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = call i64 @should_restart_tx(%struct.TYPE_4__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %14
  %23 = load i64, i64* @TXQ_OFLD, align 8
  %24 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %25 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %24, i32 0, i32 1
  %26 = call i64 @test_and_clear_bit(i64 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %22
  %29 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %30 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @TXQ_OFLD, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %41 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* @TXQ_OFLD, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @taskqueue_enqueue(i32 %39, i32* %45)
  br label %47

47:                                               ; preds = %28, %22, %14, %1
  %48 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %49 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %48, i32 0, i32 1
  %50 = load i64, i64* @TXQ_CTRL, align 8
  %51 = call i64 @isset(i32* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %47
  %54 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %55 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i64, i64* @TXQ_CTRL, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %57
  %59 = call i64 @should_restart_tx(%struct.TYPE_4__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %53
  %62 = load i64, i64* @TXQ_CTRL, align 8
  %63 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %64 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %63, i32 0, i32 1
  %65 = call i64 @test_and_clear_bit(i64 %62, i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %69 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i64, i64* @TXQ_CTRL, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sge_qset*, %struct.sge_qset** %2, align 8
  %80 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i64, i64* @TXQ_CTRL, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = call i32 @taskqueue_enqueue(i32 %78, i32* %84)
  br label %86

86:                                               ; preds = %67, %61, %53, %47
  ret void
}

declare dso_local i64 @isset(i32*, i64) #1

declare dso_local i64 @should_restart_tx(%struct.TYPE_4__*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

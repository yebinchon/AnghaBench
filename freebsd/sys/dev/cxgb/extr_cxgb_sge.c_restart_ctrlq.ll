; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_restart_ctrlq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_restart_ctrlq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32 }
%struct.sge_qset = type { i32, %struct.TYPE_2__*, %struct.sge_txq* }
%struct.TYPE_2__ = type { i32* }
%struct.sge_txq = type { i64, i64, i64, i32, i32, i32, i32, i32* }

@TXQ_CTRL = common dso_local global i64 0, align 8
@A_SG_KDOORBELL = common dso_local global i32 0, align 4
@F_SELEGRCNTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @restart_ctrlq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restart_ctrlq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.sge_qset*, align 8
  %7 = alloca %struct.sge_txq*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.sge_qset*
  store %struct.sge_qset* %10, %struct.sge_qset** %6, align 8
  %11 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %12 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %11, i32 0, i32 2
  %13 = load %struct.sge_txq*, %struct.sge_txq** %12, align 8
  %14 = load i64, i64* @TXQ_CTRL, align 8
  %15 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %13, i64 %14
  store %struct.sge_txq* %15, %struct.sge_txq** %7, align 8
  %16 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %17 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  %21 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %22 = call i32 @TXQ_LOCK(%struct.sge_qset* %21)
  br label %23

23:                                               ; preds = %100, %2
  %24 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %25 = call i32 @reclaim_completed_tx_imm(%struct.sge_txq* %24)
  br label %26

26:                                               ; preds = %76, %23
  %27 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %31 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %36 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %35, i32 0, i32 6
  %37 = call %struct.mbuf* @mbufq_dequeue(i32* %36)
  store %struct.mbuf* %37, %struct.mbuf** %5, align 8
  %38 = icmp ne %struct.mbuf* %37, null
  br label %39

39:                                               ; preds = %34, %26
  %40 = phi i1 [ false, %26 ], [ %38, %34 ]
  br i1 %40, label %41, label %81

41:                                               ; preds = %39
  %42 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %43 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %42, i32 0, i32 7
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %46 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %56 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @write_imm(i32* %48, i32 %51, i32 %54, i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = call i32 @m_free(%struct.mbuf* %59)
  %61 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %62 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %66 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp uge i64 %64, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %41
  %70 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %71 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %73 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = xor i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %69, %41
  %77 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %78 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %26

81:                                               ; preds = %39
  %82 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %83 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %82, i32 0, i32 6
  %84 = call i64 @mbufq_len(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %106

86:                                               ; preds = %81
  %87 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %88 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %87, i32 0, i32 0
  %89 = load i64, i64* @TXQ_CTRL, align 8
  %90 = call i32 @setbit(i32* %88, i64 %89)
  %91 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %92 = call i64 @should_restart_tx(%struct.sge_txq* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i64, i64* @TXQ_CTRL, align 8
  %96 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %97 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %96, i32 0, i32 0
  %98 = call i64 @test_and_clear_bit(i64 %95, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %23

101:                                              ; preds = %94, %86
  %102 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %103 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %101, %81
  %107 = load %struct.sge_qset*, %struct.sge_qset** %6, align 8
  %108 = call i32 @TXQ_UNLOCK(%struct.sge_qset* %107)
  %109 = load i32*, i32** %8, align 8
  %110 = load i32, i32* @A_SG_KDOORBELL, align 4
  %111 = load i32, i32* @F_SELEGRCNTX, align 4
  %112 = load %struct.sge_txq*, %struct.sge_txq** %7, align 8
  %113 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @V_EGRCNTX(i32 %114)
  %116 = or i32 %111, %115
  %117 = call i32 @t3_write_reg(i32* %109, i32 %110, i32 %116)
  ret void
}

declare dso_local i32 @TXQ_LOCK(%struct.sge_qset*) #1

declare dso_local i32 @reclaim_completed_tx_imm(%struct.sge_txq*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @write_imm(i32*, i32, i32, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i64 @mbufq_len(i32*) #1

declare dso_local i32 @setbit(i32*, i64) #1

declare dso_local i64 @should_restart_tx(%struct.sge_txq*) #1

declare dso_local i64 @test_and_clear_bit(i64, i32*) #1

declare dso_local i32 @TXQ_UNLOCK(%struct.sge_qset*) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_EGRCNTX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

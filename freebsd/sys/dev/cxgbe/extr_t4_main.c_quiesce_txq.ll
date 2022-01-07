; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_quiesce_txq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_quiesce_txq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.sge_txq = type { i32, %struct.sge_eq }
%struct.sge_eq = type { i64, i32, i64, i64, i32* }
%struct.sge_qstat = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"rquiesce\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"equiesce\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"dquiesce\00", align 1
@EQ_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_txq*)* @quiesce_txq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quiesce_txq(%struct.adapter* %0, %struct.sge_txq* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_txq*, align 8
  %5 = alloca %struct.sge_eq*, align 8
  %6 = alloca %struct.sge_qstat*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %4, align 8
  %7 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %8 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %7, i32 0, i32 1
  store %struct.sge_eq* %8, %struct.sge_eq** %5, align 8
  %9 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %10 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %13 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = bitcast i32* %15 to i8*
  %17 = bitcast i8* %16 to %struct.sge_qstat*
  store %struct.sge_qstat* %17, %struct.sge_qstat** %6, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  br label %19

19:                                               ; preds = %26, %2
  %20 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %21 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mp_ring_is_idle(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.sge_txq*, %struct.sge_txq** %4, align 8
  %28 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @mp_ring_check_drainage(i32 %29, i32 0)
  %31 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %19

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %42, %32
  %34 = load %struct.sge_qstat*, %struct.sge_qstat** %6, align 8
  %35 = getelementptr inbounds %struct.sge_qstat, %struct.sge_qstat* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %38 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @htobe16(i64 %39)
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 1)
  br label %33

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %53, %44
  %46 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %47 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sge_eq*, %struct.sge_eq** %5, align 8
  %50 = getelementptr inbounds %struct.sge_eq, %struct.sge_eq* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  br label %45

55:                                               ; preds = %45
  ret void
}

declare dso_local i32 @mp_ring_is_idle(i32) #1

declare dso_local i32 @mp_ring_check_drainage(i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @htobe16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

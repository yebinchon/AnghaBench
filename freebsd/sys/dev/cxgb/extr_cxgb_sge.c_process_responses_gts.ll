; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_process_responses_gts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_sge.c_process_responses_gts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i32, i32, i32 }

@process_responses_gts.last_holdoff = internal global i32 0, align 4
@cxgb_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"next_holdoff=%d\0A\00", align 1
@A_SG_GTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sge_rspq*)* @process_responses_gts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_responses_gts(i32* %0, %struct.sge_rspq* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sge_rspq*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.sge_rspq* %1, %struct.sge_rspq** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %8 = call i32 @rspq_to_qset(%struct.sge_rspq* %7)
  %9 = call i32 @process_responses(i32* %6, i32 %8, i32 -1)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @cxgb_debug, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %14 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @process_responses_gts.last_holdoff, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %20 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %24 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* @process_responses_gts.last_holdoff, align 4
  br label %26

26:                                               ; preds = %18, %12, %2
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @A_SG_GTS, align 4
  %29 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %30 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @V_RSPQ(i32 %31)
  %33 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %34 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @V_NEWTIMER(i32 %35)
  %37 = or i32 %32, %36
  %38 = load %struct.sge_rspq*, %struct.sge_rspq** %4, align 8
  %39 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @V_NEWINDEX(i32 %40)
  %42 = or i32 %37, %41
  %43 = call i32 @t3_write_reg(i32* %27, i32 %28, i32 %42)
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i32 @process_responses(i32*, i32, i32) #1

declare dso_local i32 @rspq_to_qset(%struct.sge_rspq*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @t3_write_reg(i32*, i32, i32) #1

declare dso_local i32 @V_RSPQ(i32) #1

declare dso_local i32 @V_NEWTIMER(i32) #1

declare dso_local i32 @V_NEWINDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

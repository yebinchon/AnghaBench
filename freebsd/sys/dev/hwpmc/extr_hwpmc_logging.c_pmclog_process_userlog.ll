; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_userlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_logging.c_pmclog_process_userlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_owner = type { i32 }
%struct.pmc_op_writelog = type { i32 }

@LOG = common dso_local global i32 0, align 4
@WRI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"writelog po=%p ud=0x%x\00", align 1
@USERDATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmclog_process_userlog(%struct.pmc_owner* %0, %struct.pmc_op_writelog* %1) #0 {
  %3 = alloca %struct.pmc_owner*, align 8
  %4 = alloca %struct.pmc_op_writelog*, align 8
  %5 = alloca i32, align 4
  store %struct.pmc_owner* %0, %struct.pmc_owner** %3, align 8
  store %struct.pmc_op_writelog* %1, %struct.pmc_op_writelog** %4, align 8
  %6 = load i32, i32* @LOG, align 4
  %7 = load i32, i32* @WRI, align 4
  %8 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %9 = load %struct.pmc_op_writelog*, %struct.pmc_op_writelog** %4, align 8
  %10 = getelementptr inbounds %struct.pmc_op_writelog, %struct.pmc_op_writelog* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @PMCDBG2(i32 %6, i32 %7, i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.pmc_owner* %8, i32 %11)
  store i32 0, i32* %5, align 4
  %13 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %14 = load i32, i32* @USERDATA, align 4
  %15 = call i32 @PMCLOG_RESERVE_WITH_ERROR(%struct.pmc_owner* %13, i32 %14, i32 4)
  %16 = load %struct.pmc_op_writelog*, %struct.pmc_op_writelog** %4, align 8
  %17 = getelementptr inbounds %struct.pmc_op_writelog, %struct.pmc_op_writelog* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @PMCLOG_EMIT32(i32 %18)
  %20 = load %struct.pmc_owner*, %struct.pmc_owner** %3, align 8
  %21 = call i32 @PMCLOG_DESPATCH(%struct.pmc_owner* %20)
  br label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @PMCDBG2(i32, i32, i32, i8*, %struct.pmc_owner*, i32) #1

declare dso_local i32 @PMCLOG_RESERVE_WITH_ERROR(%struct.pmc_owner*, i32, i32) #1

declare dso_local i32 @PMCLOG_EMIT32(i32) #1

declare dso_local i32 @PMCLOG_DESPATCH(%struct.pmc_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

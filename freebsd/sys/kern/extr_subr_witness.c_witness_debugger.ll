; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_debugger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_debugger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.stack = type { i32 }

@witness_trace = common dso_local global i64 0, align 8
@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@witness_output_drain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"stack backtrace:\0A\00", align 1
@KDB_WHY_WITNESS = common dso_local global i32 0, align 4
@witness_kdb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @witness_debugger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @witness_debugger(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.sbuf, align 4
  %7 = alloca %struct.stack, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %25

11:                                               ; preds = %2
  %12 = load i64, i64* @witness_trace, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %11
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %17 = call i32 @sbuf_new(%struct.sbuf* %6, i8* %15, i32 32, i32 %16)
  %18 = load i32, i32* @witness_output_drain, align 4
  %19 = call i32 @sbuf_set_drain(%struct.sbuf* %6, i32 %18, i32* null)
  %20 = call i32 @stack_zero(%struct.stack* %7)
  %21 = call i32 @stack_save(%struct.stack* %7)
  %22 = call i32 @witness_output(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @stack_sbuf_print_ddb(%struct.sbuf* %6, %struct.stack* %7)
  %24 = call i32 @sbuf_finish(%struct.sbuf* %6)
  br label %25

25:                                               ; preds = %10, %14, %11
  ret void
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @sbuf_set_drain(%struct.sbuf*, i32, i32*) #1

declare dso_local i32 @stack_zero(%struct.stack*) #1

declare dso_local i32 @stack_save(%struct.stack*) #1

declare dso_local i32 @witness_output(i8*) #1

declare dso_local i32 @stack_sbuf_print_ddb(%struct.sbuf*, %struct.stack*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

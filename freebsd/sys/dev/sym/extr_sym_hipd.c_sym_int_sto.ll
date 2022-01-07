; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_sto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_sto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nc_dsp = common dso_local global i32 0, align 4
@DEBUG_FLAGS = common dso_local global i32 0, align 4
@DEBUG_TINY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"T\00", align 1
@wf_sel_done = common dso_local global i32 0, align 4
@HS_SEL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sym_int_sto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_sto(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @nc_dsp, align 4
  %5 = call i64 @INL(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @DEBUG_FLAGS, align 4
  %7 = load i32, i32* @DEBUG_TINY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @wf_sel_done, align 4
  %16 = call i64 @SCRIPTA_BA(i32 %14, i32 %15)
  %17 = add nsw i64 %16, 8
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @HS_SEL_TIMEOUT, align 4
  %22 = call i32 @sym_recover_scsi_int(i32 %20, i32 %21)
  br label %26

23:                                               ; preds = %12
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @sym_start_reset(i32 %24)
  br label %26

26:                                               ; preds = %23, %19
  ret void
}

declare dso_local i64 @INL(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @SCRIPTA_BA(i32, i32) #1

declare dso_local i32 @sym_recover_scsi_int(i32, i32) #1

declare dso_local i32 @sym_start_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

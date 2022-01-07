; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_print_xerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_print_xerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XE_PARITY_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unrecovered SCSI parity error.\0A\00", align 1
@XE_EXTRA_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"extraneous data discarded.\0A\00", align 1
@XE_BAD_PHASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"illegal scsi phase (4/5).\0A\00", align 1
@XE_SODL_UNRUN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"ODD transfer in DATA OUT phase.\0A\00", align 1
@XE_SWIDE_OVRUN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"ODD transfer in DATA IN phase.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @sym_print_xerr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_print_xerr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @XE_PARITY_ERR, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @PRINT_ADDR(i32 %10)
  %12 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @XE_EXTRA_DATA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @PRINT_ADDR(i32 %19)
  %21 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XE_BAD_PHASE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @PRINT_ADDR(i32 %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @XE_SODL_UNRUN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @PRINT_ADDR(i32 %37)
  %39 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @XE_SWIDE_OVRUN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @PRINT_ADDR(i32 %46)
  %48 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @PRINT_ADDR(i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

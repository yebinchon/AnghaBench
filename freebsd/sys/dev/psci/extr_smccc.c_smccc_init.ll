; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_smccc.c_smccc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/psci/extr_smccc.c_smccc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMCCC_VERSION = common dso_local global i32 0, align 4
@PSCI_RETVAL_NOT_SUPPORTED = common dso_local global i64 0, align 8
@smccc_version = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Found SMCCC version %u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @smccc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smccc_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @SMCCC_VERSION, align 4
  %6 = call i64 @psci_features(i32 %5)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @PSCI_RETVAL_NOT_SUPPORTED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load i32, i32* @SMCCC_VERSION, align 4
  %12 = call i64 @psci_call(i32 %11, i32 0, i32 0, i32 0)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* @smccc_version, align 8
  br label %17

17:                                               ; preds = %15, %10
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @smccc_version, align 8
  %23 = call i32 @SMCCC_VERSION_MAJOR(i64 %22)
  %24 = load i64, i64* @smccc_version, align 8
  %25 = call i32 @SMCCC_VERSION_MINOR(i64 %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25)
  br label %27

27:                                               ; preds = %21, %18
  ret void
}

declare dso_local i64 @psci_features(i32) #1

declare dso_local i64 @psci_call(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @SMCCC_VERSION_MAJOR(i64) #1

declare dso_local i32 @SMCCC_VERSION_MINOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

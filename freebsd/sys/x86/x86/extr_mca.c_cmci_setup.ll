; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_mca.c_cmci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_maxid = common dso_local global i32 0, align 4
@M_MCA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@cmc_state = common dso_local global i8** null, align 8
@mca_banks = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@_hw_mca = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cmc_throttle\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@cmc_throttle = common dso_local global i32 0, align 4
@sysctl_positive_int = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"Interval in seconds to throttle corrected MC interrupts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cmci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmci_setup() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @mp_maxid, align 4
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = mul i64 %4, 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @M_MCA, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call i8* @malloc(i32 %6, i32 %7, i32 %8)
  %10 = bitcast i8* %9 to i8**
  store i8** %10, i8*** @cmc_state, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %29, %0
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @mp_maxid, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load i32, i32* @mca_banks, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @M_MCA, align 4
  %21 = load i32, i32* @M_WAITOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = or i32 %21, %22
  %24 = call i8* @malloc(i32 %19, i32 %20, i32 %23)
  %25 = load i8**, i8*** @cmc_state, align 8
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %25, i64 %27
  store i8* %24, i8** %28, align 8
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i32, i32* @_hw_mca, align 4
  %34 = call i32 @SYSCTL_STATIC_CHILDREN(i32 %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLTYPE_INT, align 4
  %37 = load i32, i32* @CTLFLAG_RW, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @sysctl_positive_int, align 4
  %42 = call i32 @SYSCTL_ADD_PROC(i32* null, i32 %34, i32 %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40, i32* @cmc_throttle, i32 0, i32 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_STATIC_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

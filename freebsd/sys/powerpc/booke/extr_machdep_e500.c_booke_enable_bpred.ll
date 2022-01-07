; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_bpred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_machdep_e500.c_booke_enable_bpred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_BUCSR = common dso_local global i32 0, align 4
@boothowto = common dso_local global i32 0, align 4
@RB_VERBOSE = common dso_local global i32 0, align 4
@BUCSR_BPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Branch Predictor %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @booke_enable_bpred() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @bpred_enable()
  %3 = load i32, i32* @SPR_BUCSR, align 4
  %4 = call i32 @mfspr(i32 %3)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @boothowto, align 4
  %6 = load i32, i32* @RB_VERBOSE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @BUCSR_BPEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9, %0
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @BUCSR_BPEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %21 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @bpred_enable(...) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

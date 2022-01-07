; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_init_xsave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_init_xsave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@use_xsave = common dso_local global i32 0, align 4
@cpu_fxsr = common dso_local global i32 0, align 4
@cpu_feature2 = common dso_local global i32 0, align 4
@CPUID2_XSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hw.use_xsave\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_xsave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_xsave() #0 {
  %1 = load i32, i32* @use_xsave, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %15

4:                                                ; preds = %0
  %5 = load i32, i32* @cpu_fxsr, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i32, i32* @cpu_feature2, align 4
  %9 = load i32, i32* @CPUID2_XSAVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %4
  br label %15

13:                                               ; preds = %7
  store i32 1, i32* @use_xsave, align 4
  %14 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* @use_xsave)
  br label %15

15:                                               ; preds = %13, %12, %3
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

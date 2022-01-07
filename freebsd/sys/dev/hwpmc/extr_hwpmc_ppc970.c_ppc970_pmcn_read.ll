; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_pmcn_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_ppc970.c_ppc970_pmcn_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_970PMC1 = common dso_local global i32 0, align 4
@SPR_970PMC2 = common dso_local global i32 0, align 4
@SPR_970PMC3 = common dso_local global i32 0, align 4
@SPR_970PMC4 = common dso_local global i32 0, align 4
@SPR_970PMC5 = common dso_local global i32 0, align 4
@SPR_970PMC6 = common dso_local global i32 0, align 4
@SPR_970PMC7 = common dso_local global i32 0, align 4
@SPR_970PMC8 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid PMC number: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc970_pmcn_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc970_pmcn_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %29 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
    i32 3, label %14
    i32 4, label %17
    i32 5, label %20
    i32 6, label %23
    i32 7, label %26
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @SPR_970PMC1, align 4
  %7 = call i32 @mfspr(i32 %6)
  store i32 %7, i32* %3, align 4
  br label %32

8:                                                ; preds = %1
  %9 = load i32, i32* @SPR_970PMC2, align 4
  %10 = call i32 @mfspr(i32 %9)
  store i32 %10, i32* %3, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @SPR_970PMC3, align 4
  %13 = call i32 @mfspr(i32 %12)
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load i32, i32* @SPR_970PMC4, align 4
  %16 = call i32 @mfspr(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load i32, i32* @SPR_970PMC5, align 4
  %19 = call i32 @mfspr(i32 %18)
  store i32 %19, i32* %3, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @SPR_970PMC6, align 4
  %22 = call i32 @mfspr(i32 %21)
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %1
  %24 = load i32, i32* @SPR_970PMC7, align 4
  %25 = call i32 @mfspr(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %1
  %27 = load i32, i32* @SPR_970PMC8, align 4
  %28 = call i32 @mfspr(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %26, %23, %20, %17, %14, %11, %8, %5
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

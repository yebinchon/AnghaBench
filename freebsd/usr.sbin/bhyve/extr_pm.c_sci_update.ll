; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_sci_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pm.c_sci_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }

@pm1_enable = common dso_local global i32 0, align 4
@PM1_TMR_EN = common dso_local global i32 0, align 4
@pm1_status = common dso_local global i32 0, align 4
@PM1_TMR_STS = common dso_local global i32 0, align 4
@PM1_GBL_EN = common dso_local global i32 0, align 4
@PM1_GBL_STS = common dso_local global i32 0, align 4
@PM1_PWRBTN_EN = common dso_local global i32 0, align 4
@PM1_PWRBTN_STS = common dso_local global i32 0, align 4
@PM1_SLPBTN_EN = common dso_local global i32 0, align 4
@PM1_SLPBTN_STS = common dso_local global i32 0, align 4
@PM1_RTC_EN = common dso_local global i32 0, align 4
@PM1_RTC_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmctx*)* @sci_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sci_update(%struct.vmctx* %0) #0 {
  %2 = alloca %struct.vmctx*, align 8
  %3 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @pm1_enable, align 4
  %5 = load i32, i32* @PM1_TMR_EN, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load i32, i32* @pm1_status, align 4
  %10 = load i32, i32* @PM1_TMR_STS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %8, %1
  %15 = load i32, i32* @pm1_enable, align 4
  %16 = load i32, i32* @PM1_GBL_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* @pm1_status, align 4
  %21 = load i32, i32* @PM1_GBL_STS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %19, %14
  %26 = load i32, i32* @pm1_enable, align 4
  %27 = load i32, i32* @PM1_PWRBTN_EN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load i32, i32* @pm1_status, align 4
  %32 = load i32, i32* @PM1_PWRBTN_STS, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %30, %25
  %37 = load i32, i32* @pm1_enable, align 4
  %38 = load i32, i32* @PM1_SLPBTN_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* @pm1_status, align 4
  %43 = load i32, i32* @PM1_SLPBTN_STS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %41, %36
  %48 = load i32, i32* @pm1_enable, align 4
  %49 = load i32, i32* @PM1_RTC_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* @pm1_status, align 4
  %54 = load i32, i32* @PM1_RTC_STS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52, %47
  %59 = load i32, i32* %3, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.vmctx*, %struct.vmctx** %2, align 8
  %63 = call i32 @sci_assert(%struct.vmctx* %62)
  br label %67

64:                                               ; preds = %58
  %65 = load %struct.vmctx*, %struct.vmctx** %2, align 8
  %66 = call i32 @sci_deassert(%struct.vmctx* %65)
  br label %67

67:                                               ; preds = %64, %61
  ret void
}

declare dso_local i32 @sci_assert(%struct.vmctx*) #1

declare dso_local i32 @sci_deassert(%struct.vmctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_lpt.c_lptclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.lpt_data* }
%struct.lpt_data = type { i32, i32, i32, i64, i32, i32 }
%struct.thread = type { i32 }

@LP_BYPASS = common dso_local global i32 0, align 4
@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@INTERRUPTED = common dso_local global i32 0, align 4
@LP_USE_IRQ = common dso_local global i32 0, align 4
@LPS_SEL = common dso_local global i32 0, align 4
@LPS_OUT = common dso_local global i32 0, align 4
@LPS_NBSY = common dso_local global i32 0, align 4
@LPS_NERR = common dso_local global i32 0, align 4
@LPPRI = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"lpclose\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@OPEN = common dso_local global i32 0, align 4
@LPC_NINIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"closed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @lptclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lptclose(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.lpt_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %14 = load %struct.cdev*, %struct.cdev** %6, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.lpt_data*, %struct.lpt_data** %15, align 8
  store %struct.lpt_data* %16, %struct.lpt_data** %10, align 8
  %17 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %18 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @ppb_lock(i32 %22)
  %24 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %25 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @LP_BYPASS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  br label %109

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @PPB_WAIT, align 4
  %34 = load i32, i32* @PPB_INTR, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @lpt_request_ppbus(i32 %32, i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @ppb_unlock(i32 %39)
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %117

42:                                               ; preds = %31
  %43 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %44 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @INTERRUPTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %94, label %49

49:                                               ; preds = %42
  %50 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %51 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @LP_USE_IRQ, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %94

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %92, %56
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @ppb_rstr(i32 %58)
  %60 = load i32, i32* @LPS_SEL, align 4
  %61 = load i32, i32* @LPS_OUT, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @LPS_NBSY, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @LPS_NERR, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %59, %66
  %68 = load i32, i32* @LPS_SEL, align 4
  %69 = load i32, i32* @LPS_NBSY, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @LPS_NERR, align 4
  %72 = or i32 %70, %71
  %73 = icmp ne i32 %67, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %57
  %75 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %76 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br label %79

79:                                               ; preds = %74, %57
  %80 = phi i1 [ true, %57 ], [ %78, %74 ]
  br i1 %80, label %81, label %93

81:                                               ; preds = %79
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @LPPRI, align 4
  %85 = load i32, i32* @PCATCH, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @hz, align 4
  %88 = call i64 @ppb_sleep(i32 %82, i32 %83, i32 %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i64, i64* @EWOULDBLOCK, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %93

92:                                               ; preds = %81
  br label %57

93:                                               ; preds = %91, %79
  br label %94

94:                                               ; preds = %93, %49, %42
  %95 = load i32, i32* @OPEN, align 4
  %96 = xor i32 %95, -1
  %97 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %98 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %102 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %101, i32 0, i32 4
  %103 = call i32 @callout_stop(i32* %102)
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* @LPC_NINIT, align 4
  %106 = call i32 @ppb_wctr(i32 %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @lpt_release_ppbus(i32 %107)
  br label %109

109:                                              ; preds = %94, %30
  %110 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %111 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.lpt_data*, %struct.lpt_data** %10, align 8
  %113 = getelementptr inbounds %struct.lpt_data, %struct.lpt_data* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @ppb_unlock(i32 %114)
  %116 = call i32 @lprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %109, %38
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @lpt_request_ppbus(i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @ppb_rstr(i32) #1

declare dso_local i64 @ppb_sleep(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @lpt_release_ppbus(i32) #1

declare dso_local i32 @lprintf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

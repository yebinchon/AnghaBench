; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, %struct.pps_data* }
%struct.pps_data = type { i32, i32, i32, i32, i32, i32 }
%struct.thread = type { i32 }

@PPB_WAIT = common dso_local global i32 0, align 4
@PPB_INTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@PPB_PS2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"EPP: %d %d\0A\00", align 1
@IRQENABLE = common dso_local global i32 0, align 4
@PCD = common dso_local global i32 0, align 4
@nINIT = common dso_local global i32 0, align 4
@SELECTIN = common dso_local global i32 0, align 4
@ppshcpoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ppsopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppsopen(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.pps_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 1
  %17 = load %struct.pps_data*, %struct.pps_data** %16, align 8
  store %struct.pps_data* %17, %struct.pps_data** %10, align 8
  %18 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %19 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.cdev*, %struct.cdev** %6, align 8
  %22 = getelementptr inbounds %struct.cdev, %struct.cdev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %27 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %26, i32 0, i32 1
  %28 = call i32 @sx_xlock(i32* %27)
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @ppb_lock(i32 %29)
  %31 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %32 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %4
  %36 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %37 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @PPB_WAIT, align 4
  %42 = load i32, i32* @PPB_INTR, align 4
  %43 = or i32 %41, %42
  %44 = call i64 @ppb_request_bus(i32 %39, i32 %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %35
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ppb_unlock(i32 %47)
  %49 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %50 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %49, i32 0, i32 1
  %51 = call i32 @sx_xunlock(i32* %50)
  %52 = load i32, i32* @EINTR, align 4
  store i32 %52, i32* %5, align 4
  br label %108

53:                                               ; preds = %35
  %54 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %55 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PPB_PS2, align 4
  %58 = call i32 @ppb_set_mode(i32 %56, i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %61 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @PPB_IN_EPP_MODE(i32 %62)
  %64 = call i32 @PRVERBOSE(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load i32, i32* @IRQENABLE, align 4
  %66 = load i32, i32* @PCD, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @nINIT, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SELECTIN, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @ppb_wctr(i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %53, %4
  %76 = load i32, i32* %12, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %75
  %79 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %80 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, -2
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %86 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %85, i32 0, i32 4
  %87 = load i32, i32* @ppshcpoll, align 4
  %88 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %89 = call i32 @callout_reset(i32* %86, i32 1, i32 %87, %struct.pps_data* %88)
  %90 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %91 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ppb_rdtr(i32 %92)
  %94 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %95 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %78, %75
  %97 = load i32, i32* %12, align 4
  %98 = shl i32 1, %97
  %99 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %100 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @ppb_unlock(i32 %103)
  %105 = load %struct.pps_data*, %struct.pps_data** %10, align 8
  %106 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %105, i32 0, i32 1
  %107 = call i32 @sx_xunlock(i32* %106)
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %96, %46
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i64 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i32 @PRVERBOSE(i8*, i32, i32) #1

declare dso_local i32 @PPB_IN_EPP_MODE(i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.pps_data*) #1

declare dso_local i32 @ppb_rdtr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

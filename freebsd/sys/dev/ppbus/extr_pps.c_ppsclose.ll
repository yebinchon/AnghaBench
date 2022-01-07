; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_pps.c_ppsclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, %struct.pps_data* }
%struct.pps_data = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.thread = type { i32 }

@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ppsclose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppsclose(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.pps_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %13 = load %struct.cdev*, %struct.cdev** %5, align 8
  %14 = getelementptr inbounds %struct.cdev, %struct.cdev* %13, i32 0, i32 1
  %15 = load %struct.pps_data*, %struct.pps_data** %14, align 8
  store %struct.pps_data* %15, %struct.pps_data** %9, align 8
  %16 = load %struct.cdev*, %struct.cdev** %5, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %22 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %21, i32 0, i32 1
  %23 = call i32 @sx_xlock(i32* %22)
  %24 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %25 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %24, i32 0, i32 5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %33 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ppb_lock(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = shl i32 1, %36
  %38 = xor i32 %37, -1
  %39 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %40 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %4
  %46 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %47 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, -2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %45
  %52 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %53 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %52, i32 0, i32 4
  %54 = call i32 @callout_stop(i32* %53)
  br label %55

55:                                               ; preds = %51, %45, %4
  %56 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %57 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %62 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %11, align 4
  %64 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %65 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @ppb_wdtr(i32 %67, i32 0)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @ppb_wctr(i32 %69, i32 0)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @PPB_COMPATIBLE, align 4
  %73 = call i32 @ppb_set_mode(i32 %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ppb_release_bus(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %60, %55
  %78 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %79 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @ppb_unlock(i32 %80)
  %82 = load %struct.pps_data*, %struct.pps_data** %9, align 8
  %83 = getelementptr inbounds %struct.pps_data, %struct.pps_data* %82, i32 0, i32 1
  %84 = call i32 @sx_xunlock(i32* %83)
  ret i32 0
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @ppb_lock(i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ppb_wdtr(i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

declare dso_local i32 @ppb_unlock(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

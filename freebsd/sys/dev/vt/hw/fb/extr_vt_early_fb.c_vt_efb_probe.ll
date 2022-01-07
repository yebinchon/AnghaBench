; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_early_fb.c_vt_efb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/fb/extr_vt_early_fb.c_vt_efb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32 }

@CN_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"linebytes\00", align 1
@CN_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @vt_efb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_efb_probe(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %5 = call i32 (...) @vt_efb_get_fbnode()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @CN_DEAD, align 4
  store i32 %9, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @OF_getproplen(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = call i64 @OF_getproplen(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @OF_getproplen(i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %4, align 4
  %24 = call i64 @OF_getproplen(i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22, %18, %14, %10
  %27 = load i32, i32* @CN_DEAD, align 4
  store i32 %27, i32* %2, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %26, %8
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vt_efb_get_fbnode(...) #1

declare dso_local i64 @OF_getproplen(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

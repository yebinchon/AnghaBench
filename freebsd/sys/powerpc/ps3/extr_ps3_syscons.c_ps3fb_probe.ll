; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3_syscons.c_ps3fb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3_syscons.c_ps3fb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3fb_softc = type { i32 }
%struct.vt_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"hw.syscons.disable\00", align 1
@ps3fb_softc = common dso_local global %struct.ps3fb_softc zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"hw.platform\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ps3\00", align 1
@CN_INTERNAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@CN_DEAD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"sony,ps3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @ps3fb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3fb_probe(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.ps3fb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [64 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

12:                                               ; preds = %1
  store %struct.ps3fb_softc* @ps3fb_softc, %struct.ps3fb_softc** %4, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %14 = call i32 @TUNABLE_STR_FETCH(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 64)
  %15 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %19, i32* %2, align 4
  br label %36

20:                                               ; preds = %12
  %21 = call i32 @OF_finddevice(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %24 = call i64 @OF_getprop(i32 %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %23, i32 64)
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CN_DEAD, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %20
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %6, i64 0, i64 0
  %30 = call i64 @strncmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 64)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @CN_DEAD, align 4
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @CN_INTERNAL, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %32, %26, %18, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @TUNABLE_STR_FETCH(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i64 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

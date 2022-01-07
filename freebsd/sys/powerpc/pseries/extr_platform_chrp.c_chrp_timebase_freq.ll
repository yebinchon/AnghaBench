; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_timebase_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_platform_chrp.c_chrp_timebase_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuref = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/cpus\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"CPU tree not found on Open Firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"CPU node not found on Open Firmware\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"timebase-frequency\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"Unable to determine timebase frequency!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.cpuref*)* @chrp_timebase_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chrp_timebase_freq(i32 %0, %struct.cpuref* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpuref*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  store i32 %0, i32* %3, align 4
  store %struct.cpuref* %1, %struct.cpuref** %4, align 8
  store i64 -1, i64* %7, align 8
  %10 = call i32 @OF_finddevice(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @OF_child(i32 %16)
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %33, %15
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %24 = call i32 @OF_getprop(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %23, i32 8)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %29 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %36

32:                                               ; preds = %27, %21
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @OF_peer(i32 %34)
  store i32 %35, i32* %6, align 4
  br label %18

36:                                               ; preds = %31, %18
  %37 = load i32, i32* %6, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @OF_getencprop(i32 %42, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64* %7, i32 8)
  %44 = load i64, i64* %7, align 8
  %45 = icmp sle i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i64, i64* %7, align 8
  ret i64 %49
}

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @OF_child(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @OF_peer(i32) #1

declare dso_local i32 @OF_getencprop(i32, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

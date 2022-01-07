; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_getfiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_getfiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfile = type { i32 }

@kd = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [38 x i8] c"files on dead kernel, not implemented\00", align 1
@CTL_KERN = common dso_local global i32 0, align 4
@KERN_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"sysctl: KERN_FILE\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfile**, i64*)* @getfiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfiles(%struct.xfile** %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfile**, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.xfile*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.xfile** %0, %struct.xfile*** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32*, i32** @kd, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @errx(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @CTL_KERN, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @KERN_FILE, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %19 = call i32 @sysctl(i32* %18, i32 2, %struct.xfile* null, i64* %7, i32* null, i32 0)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

23:                                               ; preds = %13
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.xfile* @malloc(i64 %24)
  store %struct.xfile* %25, %struct.xfile** %6, align 8
  %26 = icmp eq %struct.xfile* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %23
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = load %struct.xfile*, %struct.xfile** %6, align 8
  %32 = call i32 @sysctl(i32* %30, i32 2, %struct.xfile* %31, i64* %7, i32* null, i32 0)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

36:                                               ; preds = %29
  %37 = load %struct.xfile*, %struct.xfile** %6, align 8
  %38 = load %struct.xfile**, %struct.xfile*** %4, align 8
  store %struct.xfile* %37, %struct.xfile** %38, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %36, %34, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sysctl(i32*, i32, %struct.xfile*, i64*, i32*, i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local %struct.xfile* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

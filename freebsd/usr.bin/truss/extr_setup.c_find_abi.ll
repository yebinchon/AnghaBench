; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_find_abi.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_find_abi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.procabi*, i32 }
%struct.procabi = type { i32 }

@CTL_KERN = common dso_local global i32 0, align 4
@KERN_PROC = common dso_local global i32 0, align 4
@KERN_PROC_SV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can not get sysvec name\00", align 1
@abis = common dso_local global %struct.TYPE_3__* null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"ABI %s for pid %ld is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.procabi* (i32)* @find_abi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.procabi* @find_abi(i32 %0) #0 {
  %2 = alloca %struct.procabi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [32 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i64 32, i64* %4, align 8
  %9 = load i32, i32* @CTL_KERN, align 4
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  store i32 %9, i32* %10, align 16
  %11 = load i32, i32* @KERN_PROC, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @KERN_PROC_SV_NAME, align 4
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %19 = call i32 @sysctl(i32* %17, i32 4, i8* %18, i64* %4, i32* null, i32 0)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @err(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %48, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @abis, align 8
  %28 = call i32 @nitems(%struct.TYPE_3__* %27)
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @abis, align 8
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %38 = call i64 @strcmp(i32 %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** @abis, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.procabi*, %struct.procabi** %45, align 8
  store %struct.procabi* %46, %struct.procabi** %2, align 8
  br label %56

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %25

51:                                               ; preds = %25
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %52, i64 %54)
  store %struct.procabi* null, %struct.procabi** %2, align 8
  br label %56

56:                                               ; preds = %51, %40
  %57 = load %struct.procabi*, %struct.procabi** %2, align 8
  ret %struct.procabi* %57
}

declare dso_local i32 @sysctl(i32*, i32, i8*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @nitems(%struct.TYPE_3__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @warnx(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

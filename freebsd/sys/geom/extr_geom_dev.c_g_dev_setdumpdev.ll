; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_setdumpdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_setdumpdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, %struct.g_consumer* }
%struct.g_consumer = type { i32 }
%struct.diocskerneldump_arg = type { i64 }
%struct.g_kerneldump = type { i32, i32, i64 }

@KDA_REMOVE = common dso_local global i64 0, align 8
@OFF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@SI_DUMPDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.diocskerneldump_arg*)* @g_dev_setdumpdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_dev_setdumpdev(%struct.cdev* %0, %struct.diocskerneldump_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca %struct.diocskerneldump_arg*, align 8
  %6 = alloca %struct.g_kerneldump, align 8
  %7 = alloca %struct.g_consumer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %4, align 8
  store %struct.diocskerneldump_arg* %1, %struct.diocskerneldump_arg** %5, align 8
  %10 = load %struct.cdev*, %struct.cdev** %4, align 8
  %11 = icmp ne %struct.cdev* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %5, align 8
  %14 = icmp ne %struct.diocskerneldump_arg* %13, null
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i1 [ false, %2 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %5, align 8
  %20 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @KDA_REMOVE, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @MPASS(i32 %24)
  %26 = load %struct.cdev*, %struct.cdev** %4, align 8
  %27 = getelementptr inbounds %struct.cdev, %struct.cdev* %26, i32 0, i32 1
  %28 = load %struct.g_consumer*, %struct.g_consumer** %27, align 8
  store %struct.g_consumer* %28, %struct.g_consumer** %7, align 8
  store i32 16, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @memset(%struct.g_kerneldump* %6, i32 0, i32 %29)
  %31 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %6, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @OFF_MAX, align 4
  %33 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %6, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.g_consumer*, %struct.g_consumer** %7, align 8
  %35 = call i32 @g_io_getattr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.g_consumer* %34, i32* %9, %struct.g_kerneldump* %6)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %15
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %6, i32 0, i32 0
  %42 = load %struct.cdev*, %struct.cdev** %4, align 8
  %43 = call i32 @devtoname(%struct.cdev* %42)
  %44 = load %struct.diocskerneldump_arg*, %struct.diocskerneldump_arg** %5, align 8
  %45 = call i32 @dumper_insert(i32* %41, i32 %43, %struct.diocskerneldump_arg* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @SI_DUMPDEV, align 4
  %50 = load %struct.cdev*, %struct.cdev** %4, align 8
  %51 = getelementptr inbounds %struct.cdev, %struct.cdev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %38
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @memset(%struct.g_kerneldump*, i32, i32) #1

declare dso_local i32 @g_io_getattr(i8*, %struct.g_consumer*, i32*, %struct.g_kerneldump*) #1

declare dso_local i32 @dumper_insert(i32*, i32, %struct.diocskerneldump_arg*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

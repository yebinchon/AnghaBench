; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_init_dumpdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_init_dumpdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.diocskerneldump_arg = type { i32 }
%struct.g_consumer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@KDA_APPEND = common dso_local global i32 0, align 4
@dumpdev = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*)* @init_dumpdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_dumpdev(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.diocskerneldump_arg, align 4
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %10 = call i32 @bzero(%struct.diocskerneldump_arg* %4, i32 4)
  %11 = load i32, i32* @KDA_APPEND, align 4
  %12 = getelementptr inbounds %struct.diocskerneldump_arg, %struct.diocskerneldump_arg* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** @dumpdev, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

16:                                               ; preds = %1
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.cdev*, %struct.cdev** %3, align 8
  %20 = call i8* @devtoname(%struct.cdev* %19)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load i32*, i32** @dumpdev, align 8
  %23 = call i64 @strcmp(i8* %21, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = load i32*, i32** @dumpdev, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i64 @strncmp(i32* %26, i8* %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** @dumpdev, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = call i64 @strcmp(i8* %32, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %25
  store i32 0, i32* %2, align 4
  br label %62

39:                                               ; preds = %31, %16
  %40 = load %struct.cdev*, %struct.cdev** %3, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.g_consumer*
  store %struct.g_consumer* %43, %struct.g_consumer** %5, align 8
  %44 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %45 = call i32 @g_access(%struct.g_consumer* %44, i32 1, i32 0, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %39
  %51 = load %struct.cdev*, %struct.cdev** %3, align 8
  %52 = call i32 @g_dev_setdumpdev(%struct.cdev* %51, %struct.diocskerneldump_arg* %4)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32*, i32** @dumpdev, align 8
  %57 = call i32 @freeenv(i32* %56)
  store i32* null, i32** @dumpdev, align 8
  br label %58

58:                                               ; preds = %55, %50
  %59 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %60 = call i32 @g_access(%struct.g_consumer* %59, i32 -1, i32 0, i32 0)
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %48, %38, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @bzero(%struct.diocskerneldump_arg*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @devtoname(%struct.cdev*) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i64) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_dev_setdumpdev(%struct.cdev*, %struct.diocskerneldump_arg*) #1

declare dso_local i32 @freeenv(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

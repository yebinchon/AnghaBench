; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_get_chiptype.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_get_chiptype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@compat_data = common dso_local global %struct.TYPE_5__* null, align 8
@TYPE_NONE = common dso_local global i32 0, align 4
@TYPE_PCF8563 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nxprtc_get_chiptype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxprtc_get_chiptype(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_name(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_unit(i32 %9)
  %11 = call i64 @resource_string_value(i32 %8, i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @compat_data, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  br label %15

15:                                               ; preds = %29, %13
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i64 @strcmp(i8* %21, i32* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %32

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 1
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %4, align 8
  br label %15

32:                                               ; preds = %27, %15
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %1
  %37 = load i32, i32* @TYPE_NONE, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TYPE_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @TYPE_PCF8563, align 4
  store i32 %43, i32* %2, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i64 @strcmp(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

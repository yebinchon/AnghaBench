; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_slicer.c_chipc_slicer_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc_slicer.c_chipc_slicer_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.flash_slice = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [50 x i8] c"slicer: scanning memory [%x bytes] for headers...\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"stop on 2nd TRX: %x\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"TRX found: %x\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"FS offset: %x\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"WARNING! filesystem offset should be aligned on sector size (%d bytes)\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"ignoring TRX firmware image\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"rootfs\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"CFE found: %x\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"NVRAM found: %x\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"slicer: done\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.resource*, %struct.flash_slice*, i32*)* @chipc_slicer_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_slicer_walk(i32 %0, %struct.resource* %1, %struct.flash_slice* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.flash_slice*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.resource* %1, %struct.resource** %6, align 8
  store %struct.flash_slice* %2, %struct.flash_slice** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = call i32 @rman_get_size(%struct.resource* %16)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @BHND_TRACE_DEV(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %95, %4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %98

26:                                               ; preds = %22
  %27 = load %struct.resource*, %struct.resource** %6, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @bus_read_4(%struct.resource* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  switch i32 %30, label %93 [
    i32 128, label %31
    i32 130, label %87
    i32 129, label %90
  ]

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @BHND_TRACE_DEV(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %94

39:                                               ; preds = %31
  %40 = load i32, i32* %14, align 4
  %41 = call i32 (i8*, ...) @BHND_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %12, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 24
  %46 = call i32 @bus_read_4(%struct.resource* %43, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 (i8*, ...) @BHND_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %10, align 4
  %50 = srem i32 %49, 512
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = call i32 (i8*, ...) @BHND_WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 512)
  %54 = call i32 (i8*, ...) @BHND_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %94

55:                                               ; preds = %39
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %56, %57
  %59 = load %struct.flash_slice*, %struct.flash_slice** %7, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %59, i64 %62
  %64 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %63, i32 0, i32 2
  store i32 %58, i32* %64, align 8
  %65 = load %struct.resource*, %struct.resource** %6, align 8
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 4
  %68 = call i32 @bus_read_4(%struct.resource* %65, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load %struct.flash_slice*, %struct.flash_slice** %7, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %72, i64 %75
  %77 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %76, i32 0, i32 0
  store i32 %71, i32* %77, align 8
  %78 = load %struct.flash_slice*, %struct.flash_slice** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %78, i64 %81
  %83 = getelementptr inbounds %struct.flash_slice, %struct.flash_slice* %82, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %83, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %94

87:                                               ; preds = %26
  %88 = load i32, i32* %14, align 4
  %89 = call i32 (i8*, ...) @BHND_TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %88)
  br label %94

90:                                               ; preds = %26
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i8*, ...) @BHND_TRACE(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %91)
  br label %94

93:                                               ; preds = %26
  br label %94

94:                                               ; preds = %93, %90, %87, %55, %52, %35
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %14, align 4
  %97 = add nsw i32 %96, 4096
  store i32 %97, i32* %14, align 4
  br label %22

98:                                               ; preds = %22
  %99 = call i32 (i8*, ...) @BHND_TRACE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @BHND_TRACE_DEV(i32, i8*, i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @BHND_TRACE(i8*, ...) #1

declare dso_local i32 @BHND_WARN(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_controller_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_controller_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter_info = type { i32, i32, i8* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ports\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s, %d %s\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cxgb_controller_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb_controller_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.adapter_info* @cxgb_get_adapter_info(i32 %8)
  store %struct.adapter_info* %9, %struct.adapter_info** %4, align 8
  %10 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %11 = icmp eq %struct.adapter_info* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %16 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %19 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %26

25:                                               ; preds = %14
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %26

26:                                               ; preds = %25, %24
  %27 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %28 = load %struct.adapter_info*, %struct.adapter_info** %4, align 8
  %29 = getelementptr inbounds %struct.adapter_info, %struct.adapter_info* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @snprintf(i8* %27, i32 80, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31, i8* %32)
  %34 = load i32, i32* %3, align 4
  %35 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %36 = call i32 @device_set_desc_copy(i32 %34, i8* %35)
  %37 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %26, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.adapter_info* @cxgb_get_adapter_info(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

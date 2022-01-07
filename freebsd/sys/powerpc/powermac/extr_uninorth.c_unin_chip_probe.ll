; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"uni-n\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"u3\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"u4\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Apple UniNorth System Controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @unin_chip_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unin_chip_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i8* @ofw_bus_get_name(i32 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %28

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %19, %15, %11
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @device_set_desc(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %25, %23, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i8* @ofw_bus_get_name(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

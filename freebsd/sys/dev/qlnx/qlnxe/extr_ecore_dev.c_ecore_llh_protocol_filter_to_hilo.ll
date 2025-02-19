; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_protocol_filter_to_hilo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dev.c_ecore_llh_protocol_filter_to_hilo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Non valid LLH protocol filter type %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, i32, i32, i32, i32*, i32*)* @ecore_llh_protocol_filter_to_hilo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_llh_protocol_filter_to_hilo(%struct.ecore_dev* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32*, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32*, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %33 [
    i32 134, label %17
    i32 131, label %20
    i32 128, label %20
    i32 133, label %24
    i32 130, label %24
    i32 132, label %27
    i32 129, label %27
  ]

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %12, align 8
  store i32 %18, i32* %19, align 4
  br label %38

20:                                               ; preds = %6, %6
  %21 = load i32, i32* %10, align 4
  %22 = shl i32 %21, 16
  %23 = load i32*, i32** %13, align 8
  store i32 %22, i32* %23, align 4
  br label %38

24:                                               ; preds = %6, %6
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %13, align 8
  store i32 %25, i32* %26, align 4
  br label %38

27:                                               ; preds = %6, %6
  %28 = load i32, i32* %10, align 4
  %29 = shl i32 %28, 16
  %30 = load i32, i32* %11, align 4
  %31 = or i32 %29, %30
  %32 = load i32*, i32** %13, align 8
  store i32 %31, i32* %32, align 4
  br label %38

33:                                               ; preds = %6
  %34 = load %struct.ecore_dev*, %struct.ecore_dev** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @DP_NOTICE(%struct.ecore_dev* %34, i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %37, i32* %7, align 4
  br label %40

38:                                               ; preds = %27, %24, %20, %17
  %39 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @DP_NOTICE(%struct.ecore_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

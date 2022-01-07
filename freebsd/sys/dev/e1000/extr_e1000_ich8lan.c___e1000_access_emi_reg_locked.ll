; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c___e1000_access_emi_reg_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c___e1000_access_emi_reg_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [30 x i8] c"__e1000_access_emi_reg_locked\00", align 1
@I82579_EMI_ADDR = common dso_local global i32 0, align 4
@I82579_EMI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32*, i32)* @__e1000_access_emi_reg_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_access_emi_reg_locked(%struct.e1000_hw* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %15, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = bitcast %struct.e1000_hw* %17 to %struct.e1000_hw.0*
  %19 = load i32, i32* @I82579_EMI_ADDR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i64 %16(%struct.e1000_hw.0* %18, i32 %19, i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i64, i64* %10, align 8
  store i64 %25, i64* %5, align 8
  br label %54

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %33, align 8
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %36 = bitcast %struct.e1000_hw* %35 to %struct.e1000_hw.1*
  %37 = load i32, i32* @I82579_EMI_DATA, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 %34(%struct.e1000_hw.1* %36, i32 %37, i32* %38)
  store i64 %39, i64* %10, align 8
  br label %52

40:                                               ; preds = %26
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %44, align 8
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %47 = bitcast %struct.e1000_hw* %46 to %struct.e1000_hw.0*
  %48 = load i32, i32* @I82579_EMI_DATA, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i64 %45(%struct.e1000_hw.0* %47, i32 %48, i32 %50)
  store i64 %51, i64* %10, align 8
  br label %52

52:                                               ; preds = %40, %29
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %52, %24
  %55 = load i64, i64* %5, align 8
  ret i64 %55
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_write_kmrn_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c___e1000_write_kmrn_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [29 x i8] c"e1000_write_kmrn_reg_generic\00", align 1
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32)* @__e1000_write_kmrn_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000_write_kmrn_reg(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %16, i64* %11, align 8
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %20, align 8
  %22 = icmp ne i64 (%struct.e1000_hw.1*)* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %15
  %24 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %24, i64* %5, align 8
  br label %67

25:                                               ; preds = %15
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.1*
  %33 = call i64 %30(%struct.e1000_hw.1* %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i64, i64* %11, align 8
  store i64 %37, i64* %5, align 8
  br label %67

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %48 = load i32, i32* @E1000_KMRNCTRLSTA, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %47, i32 %48, i32 %49)
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %51)
  %53 = call i32 @usec_delay(i32 2)
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %39
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.0*
  %64 = call i32 %61(%struct.e1000_hw.0* %63)
  br label %65

65:                                               ; preds = %56, %39
  %66 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %66, i64* %5, align 8
  br label %67

67:                                               ; preds = %65, %36, %23
  %68 = load i64, i64* %5, align 8
  ret i64 %68
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

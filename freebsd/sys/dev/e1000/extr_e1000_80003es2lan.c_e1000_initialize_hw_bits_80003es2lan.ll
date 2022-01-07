; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_initialize_hw_bits_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_initialize_hw_bits_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c"e1000_initialize_hw_bits_80003es2lan\00", align 1
@e1000_media_type_copper = common dso_local global i64 0, align 8
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_MULR = common dso_local global i32 0, align 4
@E1000_RFCTL = common dso_local global i32 0, align 4
@E1000_RFCTL_IPV6_EX_DIS = common dso_local global i32 0, align 4
@E1000_RFCTL_NEW_IPV6_EXT_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_initialize_hw_bits_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = call i32 @E1000_TXDCTL(i32 0)
  %7 = call i32 @E1000_READ_REG(%struct.e1000_hw* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, 4194304
  store i32 %9, i32* %3, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = call i32 @E1000_TXDCTL(i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @E1000_TXDCTL(i32 1)
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, 4194304
  store i32 %18, i32* %3, align 4
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = call i32 @E1000_TXDCTL(i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %24 = call i32 @E1000_TARC(i32 0)
  %25 = call i32 @E1000_READ_REG(%struct.e1000_hw* %23, i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, -2013265921
  store i32 %27, i32* %3, align 4
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %29 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @e1000_media_type_copper, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, -1048577
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %1
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = call i32 @E1000_TARC(i32 0)
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %38, i32 %39, i32 %40)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = call i32 @E1000_TARC(i32 1)
  %44 = call i32 @E1000_READ_REG(%struct.e1000_hw* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = load i32, i32* @E1000_TCTL, align 4
  %47 = call i32 @E1000_READ_REG(%struct.e1000_hw* %45, i32 %46)
  %48 = load i32, i32* @E1000_TCTL_MULR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %37
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, -268435457
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %37
  %55 = load i32, i32* %3, align 4
  %56 = or i32 %55, 268435456
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %59 = call i32 @E1000_TARC(i32 1)
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = load i32, i32* @E1000_RFCTL, align 4
  %64 = call i32 @E1000_READ_REG(%struct.e1000_hw* %62, i32 %63)
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @E1000_RFCTL_IPV6_EX_DIS, align 4
  %66 = load i32, i32* @E1000_RFCTL_NEW_IPV6_EXT_DIS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %71 = load i32, i32* @E1000_RFCTL, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_TARC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_sfp_data_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_write_sfp_data_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"e1000_write_sfp_data_byte\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"I2CCMD command address exceeds upper limit\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_I2CCMD_REG_ADDR_SHIFT = common dso_local global i64 0, align 8
@E1000_I2CCMD_OPCODE_READ = common dso_local global i64 0, align 8
@E1000_I2CCMD = common dso_local global i32 0, align 4
@E1000_I2CCMD_PHY_TIMEOUT = common dso_local global i64 0, align 8
@E1000_I2CCMD_READY = common dso_local global i64 0, align 8
@E1000_I2CCMD_OPCODE_WRITE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"I2CCMD Write did not complete\0A\00", align 1
@E1000_I2CCMD_ERROR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"I2CCMD Error bit set\0A\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_sfp_data_byte(%struct.e1000_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @E1000_I2CCMD_SFP_DIAG_ADDR(i32 255)
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @E1000_ERR_PHY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %91

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @E1000_I2CCMD_REG_ADDR_SHIFT, align 8
  %22 = shl i64 %20, %21
  %23 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %9, align 8
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %26 = load i32, i32* @E1000_I2CCMD, align 4
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %25, i32 %26, i64 %27)
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %68, %19
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @E1000_I2CCMD_PHY_TIMEOUT, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = call i32 @usec_delay(i32 50)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = load i32, i32* @E1000_I2CCMD, align 4
  %37 = call i64 @E1000_READ_REG(%struct.e1000_hw* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %33
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %45 = and i64 %43, %44
  %46 = load i64, i64* @E1000_I2CCMD_OPCODE_READ, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %42
  %49 = load i64, i64* %9, align 8
  %50 = and i64 %49, 65280
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = or i64 %52, %51
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @E1000_I2CCMD_REG_ADDR_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = load i64, i64* @E1000_I2CCMD_OPCODE_WRITE, align 8
  %58 = or i64 %56, %57
  %59 = load i64, i64* %10, align 8
  %60 = or i64 %58, %59
  store i64 %60, i64* %9, align 8
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %62 = load i32, i32* @E1000_I2CCMD, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %61, i32 %62, i64 %63)
  br label %66

65:                                               ; preds = %42
  br label %71

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %33
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %8, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %8, align 8
  br label %29

71:                                               ; preds = %65, %29
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* @E1000_I2CCMD_READY, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %71
  %77 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @E1000_ERR_PHY, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %91

80:                                               ; preds = %71
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* @E1000_I2CCMD_ERROR, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @E1000_ERR_PHY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %85, %76, %15
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @E1000_I2CCMD_SFP_DIAG_ADDR(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

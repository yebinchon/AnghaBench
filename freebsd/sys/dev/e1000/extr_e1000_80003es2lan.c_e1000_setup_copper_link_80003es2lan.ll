; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_setup_copper_link_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_setup_copper_link_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"e1000_setup_copper_link_80003es2lan\00", align 1
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_INB_CTRL = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_setup_copper_link_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_setup_copper_link_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = load i32, i32* @E1000_CTRL, align 4
  %10 = call i32 @E1000_READ_REG(%struct.e1000_hw* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @E1000_CTRL_SLU, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %15 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = load i32, i32* @E1000_CTRL, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %20, i32 %21, i32 %22)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = call i32 @GG82563_REG(i32 52, i32 4)
  %26 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %24, i32 %25, i32 65535)
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %2, align 8
  br label %80

31:                                               ; preds = %1
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = call i32 @GG82563_REG(i32 52, i32 9)
  %34 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %32, i32 %33, i32* %6)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %80

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, 63
  store i32 %41, i32* %6, align 4
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = call i32 @GG82563_REG(i32 52, i32 9)
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %42, i32 %43, i32 %44)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %80

50:                                               ; preds = %39
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_INB_CTRL, align 4
  %53 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %51, i32 %52, i32* %6)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %80

58:                                               ; preds = %50
  %59 = load i32, i32* @E1000_KMRNCTRLSTA_INB_CTRL_DIS_PADDING, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %63 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_INB_CTRL, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %62, i32 %63, i32 %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i64, i64* %5, align 8
  store i64 %69, i64* %2, align 8
  br label %80

70:                                               ; preds = %58
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = call i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw* %71)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %2, align 8
  br label %80

77:                                               ; preds = %70
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = call i64 @e1000_setup_copper_link_generic(%struct.e1000_hw* %78)
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %77, %75, %68, %56, %48, %37, %29
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @GG82563_REG(i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_copper_link_setup_gg82563_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_setup_copper_link_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

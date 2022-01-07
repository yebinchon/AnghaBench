; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6000sw.c_e6000sw_readreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@SA_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"e6000sw: readreg timeout\0A\00", align 1
@SMI_CMD = common dso_local global i32 0, align 4
@SMI_CMD_OP_C22_READ = common dso_local global i32 0, align 4
@SMI_CMD_REG_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR = common dso_local global i32 0, align 4
@SMI_CMD_DEV_ADDR_MASK = common dso_local global i32 0, align 4
@SMI_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @e6000sw_readreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6000sw_readreg(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = load i32, i32* @SA_XLOCKED, align 4
  %10 = call i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_6__* %8, i32 %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = call i32 @MVSWITCH_MULTICHIP(%struct.TYPE_6__* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @MDIO_READ(i32 %17, i32 %18, i32 %19)
  %21 = and i32 %20, 65535
  store i32 %21, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @e6000sw_smi_waitready(%struct.TYPE_6__* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 65535, i32* %4, align 4
  br label %69

31:                                               ; preds = %22
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SMI_CMD, align 4
  %39 = load i32, i32* @SMI_CMD_OP_C22_READ, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @SMI_CMD_REG_ADDR_MASK, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SMI_CMD_DEV_ADDR, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @SMI_CMD_DEV_ADDR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %43, %48
  %50 = call i32 @MDIO_WRITE(i32 %34, i32 %37, i32 %38, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @e6000sw_smi_waitready(%struct.TYPE_6__* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %31
  %58 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 65535, i32* %4, align 4
  br label %69

59:                                               ; preds = %31
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SMI_DATA, align 4
  %67 = call i32 @MDIO_READ(i32 %62, i32 %65, i32 %66)
  %68 = and i32 %67, 65535
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %59, %57, %29, %14
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @E6000SW_LOCK_ASSERT(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @MVSWITCH_MULTICHIP(%struct.TYPE_6__*) #1

declare dso_local i32 @MDIO_READ(i32, i32, i32) #1

declare dso_local i64 @e6000sw_smi_waitready(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MDIO_WRITE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

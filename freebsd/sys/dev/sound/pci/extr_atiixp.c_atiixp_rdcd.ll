; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_rdcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_rdcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_info = type { i32, i32 }

@ATI_REG_PHYS_OUT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR_EN = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_RW = common dso_local global i32 0, align 4
@ATI_REG_PHYS_OUT_ADDR = common dso_local global i32 0, align 4
@ATI_REG_PHYS_IN_ADDR = common dso_local global i32 0, align 4
@ATI_REG_PHYS_IN_READ_FLAG = common dso_local global i32 0, align 4
@ATI_REG_PHYS_IN_DATA_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"codec read timeout! (reg 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @atiixp_rdcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_rdcd(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atiixp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.atiixp_info*
  store %struct.atiixp_info* %12, %struct.atiixp_info** %8, align 8
  %13 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %14 = call i64 @atiixp_waitready_codec(%struct.atiixp_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %66

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ATI_REG_PHYS_OUT_RW, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %26 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %30 = load i32, i32* @ATI_REG_PHYS_OUT_ADDR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @atiixp_wr(%struct.atiixp_info* %29, i32 %30, i32 %31)
  %33 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %34 = call i64 @atiixp_waitready_codec(%struct.atiixp_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %66

37:                                               ; preds = %17
  store i32 500, i32* %10, align 4
  br label %38

38:                                               ; preds = %52, %37
  %39 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %40 = load i32, i32* @ATI_REG_PHYS_IN_ADDR, align 4
  %41 = call i32 @atiixp_rd(%struct.atiixp_info* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @ATI_REG_PHYS_IN_READ_FLAG, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @ATI_REG_PHYS_IN_DATA_SHIFT, align 4
  %49 = ashr i32 %47, %48
  store i32 %49, i32* %4, align 4
  br label %66

50:                                               ; preds = %38
  %51 = call i32 @DELAY(i32 1)
  br label %52

52:                                               ; preds = %50
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %38, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 124
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.atiixp_info*, %struct.atiixp_info** %8, align 8
  %61 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %56
  store i32 -1, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %46, %36, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @atiixp_waitready_codec(%struct.atiixp_info*) #1

declare dso_local i32 @atiixp_wr(%struct.atiixp_info*, i32, i32) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

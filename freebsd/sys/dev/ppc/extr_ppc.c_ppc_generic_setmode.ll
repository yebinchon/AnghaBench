; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_generic_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_generic_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPB_ECP = common dso_local global i32 0, align 4
@PPC_ECR_RESET = common dso_local global i32 0, align 4
@PPC_DISABLE_INTR = common dso_local global i32 0, align 4
@PPB_EPP = common dso_local global i32 0, align 4
@PPC_ECR_ECP = common dso_local global i32 0, align 4
@PPB_PS2 = common dso_local global i32 0, align 4
@PPC_ECR_PS2 = common dso_local global i32 0, align 4
@PPC_ECR_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_data*, i32)* @ppc_generic_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_generic_setmode(%struct.ppc_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ppc_data* %0, %struct.ppc_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %11 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %9, %2
  %19 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %20 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PPB_ECP, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %27 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PPB_ECP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %25, %18
  %33 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %34 = load i32, i32* @PPC_ECR_RESET, align 4
  %35 = call i32 @w_ecr(%struct.ppc_data* %33, i32 %34)
  %36 = load i32, i32* @PPC_DISABLE_INTR, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PPB_EPP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %75

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @PPB_ECP, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @PPC_ECR_ECP, align 4
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %66

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @PPB_PS2, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @PPC_ECR_PS2, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load i32, i32* @PPC_ECR_STD, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %61, %57
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @w_ecr(%struct.ppc_data* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %25
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.ppc_data*, %struct.ppc_data** %4, align 8
  %74 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %41, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @w_ecr(%struct.ppc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_generic_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_generic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i32, i32, i32, i32 }

@PPC_TYPE_GENERIC = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"SPP\00", align 1
@PPC_ECR_PS2 = common dso_local global i32 0, align 4
@PPB_ECP = common dso_local global i32 0, align 4
@PPB_SPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" ECP \00", align 1
@PPC_ECR_EPP = common dso_local global i32 0, align 4
@PPB_EPP = common dso_local global i32 0, align 4
@SMC_LIKE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" ECP+EPP\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" EPP\00", align 1
@PPC_ECR_STD = common dso_local global i32 0, align 4
@PPB_NIBBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc_data*, i32)* @ppc_generic_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_generic_detect(%struct.ppc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ppc_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ppc_data* %0, %struct.ppc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @PPC_TYPE_GENERIC, align 4
  %6 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %7 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %12 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @device_printf(i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %17 = load i32, i32* @PPC_ECR_PS2, align 4
  %18 = call i32 @w_ecr(%struct.ppc_data* %16, i32 %17)
  %19 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %20 = call i32 @r_ecr(%struct.ppc_data* %19)
  %21 = and i32 %20, 224
  %22 = load i32, i32* @PPC_ECR_PS2, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %15
  %25 = load i32, i32* @PPB_ECP, align 4
  %26 = load i32, i32* @PPB_SPP, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %29 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i64, i64* @bootverbose, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %24
  %37 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %38 = load i32, i32* @PPC_ECR_EPP, align 4
  %39 = call i32 @w_ecr(%struct.ppc_data* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %15
  %41 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %42 = call i64 @ppc_check_epp_timeout(%struct.ppc_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load i32, i32* @PPB_EPP, align 4
  %46 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %47 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %51 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @PPB_ECP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %44
  %57 = load i32, i32* @SMC_LIKE, align 4
  %58 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %59 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %61 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %60, i32 0, i32 0
  store i32 128, i32* %61, align 4
  %62 = load i64, i64* @bootverbose, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  br label %73

67:                                               ; preds = %44
  %68 = load i64, i64* @bootverbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %66
  br label %78

74:                                               ; preds = %40
  %75 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %76 = load i32, i32* @PPC_ECR_STD, align 4
  %77 = call i32 @w_ecr(%struct.ppc_data* %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %73
  %79 = load i32, i32* @PPB_NIBBLE, align 4
  %80 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %81 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %89 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  br label %96

90:                                               ; preds = %78
  %91 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %92 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %95 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i64, i64* @bootverbose, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %96
  %102 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %103 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  switch i32 %104, label %109 [
    i32 128, label %105
  ]

105:                                              ; preds = %101
  %106 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @ppc_smclike_setmode(%struct.ppc_data* %106, i32 %107)
  br label %113

109:                                              ; preds = %101
  %110 = load %struct.ppc_data*, %struct.ppc_data** %3, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @ppc_generic_setmode(%struct.ppc_data* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %105
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @w_ecr(%struct.ppc_data*, i32) #1

declare dso_local i32 @r_ecr(%struct.ppc_data*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ppc_check_epp_timeout(%struct.ppc_data*) #1

declare dso_local i32 @ppc_smclike_setmode(%struct.ppc_data*, i32) #1

declare dso_local i32 @ppc_generic_setmode(%struct.ppc_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

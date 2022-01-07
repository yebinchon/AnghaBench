; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_emu_instr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_spe_emu_instr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fpemu = type { i32, i32 }
%struct.fpn = type { i32 }

@SPE_INST_MASK = common dso_local global i32 0, align 4
@FPSCR_RN = common dso_local global i32 0, align 4
@FP_RZ = common dso_local global i32 0, align 4
@FPSCR_FG = common dso_local global i32 0, align 4
@FPSCR_FL = common dso_local global i32 0, align 4
@FPSCR_FE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown instruction %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fpemu*, %struct.fpn**, i32*)* @spe_emu_instr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spe_emu_instr(i32 %0, %struct.fpemu* %1, %struct.fpn** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpemu*, align 8
  %8 = alloca %struct.fpn**, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.fpemu* %1, %struct.fpemu** %7, align 8
  store %struct.fpn** %2, %struct.fpn*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SPE_INST_MASK, align 4
  %12 = and i32 %10, %11
  switch i32 %12, label %99 [
    i32 141, label %13
    i32 130, label %13
    i32 129, label %13
    i32 133, label %14
    i32 134, label %26
    i32 135, label %32
    i32 136, label %44
    i32 140, label %50
    i32 128, label %54
    i32 131, label %58
    i32 132, label %62
    i32 138, label %66
    i32 137, label %77
    i32 139, label %88
  ]

13:                                               ; preds = %4, %4, %4
  br label %102

14:                                               ; preds = %4
  %15 = load i32, i32* @FPSCR_RN, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %18 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @FP_RZ, align 4
  %22 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %23 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %4, %14
  %27 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %28 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %29 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %28, i32 0, i32 1
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @spe_to_int(%struct.fpemu* %27, i32* %29, i32* %30, i32 0)
  store i32 -1, i32* %5, align 4
  br label %103

32:                                               ; preds = %4
  %33 = load i32, i32* @FPSCR_RN, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %36 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @FP_RZ, align 4
  %40 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %41 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %4, %32
  %45 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %46 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %47 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %46, i32 0, i32 1
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @spe_to_int(%struct.fpemu* %45, i32* %47, i32* %48, i32 1)
  store i32 -1, i32* %5, align 4
  br label %103

50:                                               ; preds = %4
  %51 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %52 = call %struct.fpn* @fpu_add(%struct.fpemu* %51)
  %53 = load %struct.fpn**, %struct.fpn*** %8, align 8
  store %struct.fpn* %52, %struct.fpn** %53, align 8
  br label %102

54:                                               ; preds = %4
  %55 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %56 = call %struct.fpn* @fpu_sub(%struct.fpemu* %55)
  %57 = load %struct.fpn**, %struct.fpn*** %8, align 8
  store %struct.fpn* %56, %struct.fpn** %57, align 8
  br label %102

58:                                               ; preds = %4
  %59 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %60 = call %struct.fpn* @fpu_mul(%struct.fpemu* %59)
  %61 = load %struct.fpn**, %struct.fpn*** %8, align 8
  store %struct.fpn* %60, %struct.fpn** %61, align 8
  br label %102

62:                                               ; preds = %4
  %63 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %64 = call %struct.fpn* @fpu_div(%struct.fpemu* %63)
  %65 = load %struct.fpn**, %struct.fpn*** %8, align 8
  store %struct.fpn* %64, %struct.fpn** %65, align 8
  br label %102

66:                                               ; preds = %4
  %67 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %68 = call i32 @fpu_compare(%struct.fpemu* %67, i32 0)
  %69 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %70 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FPSCR_FG, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 1, i32* %5, align 4
  br label %103

76:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %103

77:                                               ; preds = %4
  %78 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %79 = call i32 @fpu_compare(%struct.fpemu* %78, i32 0)
  %80 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %81 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FPSCR_FL, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %103

87:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %103

88:                                               ; preds = %4
  %89 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %90 = call i32 @fpu_compare(%struct.fpemu* %89, i32 0)
  %91 = load %struct.fpemu*, %struct.fpemu** %7, align 8
  %92 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @FPSCR_FE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 1, i32* %5, align 4
  br label %103

98:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %103

99:                                               ; preds = %4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %99, %62, %58, %54, %50, %13
  store i32 -1, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %98, %97, %87, %86, %76, %75, %44, %26
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @spe_to_int(%struct.fpemu*, i32*, i32*, i32) #1

declare dso_local %struct.fpn* @fpu_add(%struct.fpemu*) #1

declare dso_local %struct.fpn* @fpu_sub(%struct.fpemu*) #1

declare dso_local %struct.fpn* @fpu_mul(%struct.fpemu*) #1

declare dso_local %struct.fpn* @fpu_div(%struct.fpemu*) #1

declare dso_local i32 @fpu_compare(%struct.fpemu*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

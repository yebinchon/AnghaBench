; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_par.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_int_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 }

@HS_PRT = common dso_local global i32 0, align 4
@nc_dsp = common dso_local global i32 0, align 4
@nc_dbc = common dso_local global i32 0, align 4
@nc_dsa = common dso_local global i32 0, align 4
@nc_sbcl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s: SCSI parity error detected: SCR1=%d DBC=%x SBCL=%x\0A\00", align 1
@nc_scntl1 = common dso_local global i32 0, align 4
@ISCON = common dso_local global i32 0, align 4
@HS_UNEXPECTED = common dso_local global i32 0, align 4
@HF_PRT = common dso_local global i32 0, align 4
@HF_EXT_ERR = common dso_local global i32 0, align 4
@XE_PARITY_ERR = common dso_local global i32 0, align 4
@M_PARITY = common dso_local global i32 0, align 4
@M_ID_ERROR = common dso_local global i32 0, align 4
@pm_handle = common dso_local global i32 0, align 4
@MA = common dso_local global i32 0, align 4
@nc_temp = common dso_local global i32 0, align 4
@dispatch = common dso_local global i32 0, align 4
@clrack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i32)* @sym_int_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_int_par(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* @HS_PRT, align 4
  %14 = call i32 @INB(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @nc_dsp, align 4
  %16 = call i32 @INL(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* @nc_dbc, align 4
  %18 = call i32 @INL(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @nc_dsa, align 4
  %20 = call i32 @INL(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @nc_sbcl, align 4
  %22 = call i32 @INB(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 24
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 7
  store i32 %26, i32* %11, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call %struct.TYPE_13__* @sym_ccb_from_dsa(%struct.TYPE_12__* %27, i32 %28)
  store %struct.TYPE_13__* %29, %struct.TYPE_13__** %12, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %31 = call i8* @sym_name(%struct.TYPE_12__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @nc_scntl1, align 4
  %37 = call i32 @INB(i32 %36)
  %38 = load i32, i32* @ISCON, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %2
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = load i32, i32* @HS_UNEXPECTED, align 4
  %44 = call i32 @sym_recover_scsi_int(%struct.TYPE_12__* %42, i32 %43)
  br label %124

45:                                               ; preds = %2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %47 = icmp ne %struct.TYPE_13__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %121

49:                                               ; preds = %45
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 192
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57, %53, %49
  br label %121

62:                                               ; preds = %57
  %63 = load i32, i32* @HF_PRT, align 4
  %64 = load i32, i32* @HF_EXT_ERR, align 4
  %65 = call i32 @OUTONB(i32 %63, i32 %64)
  %66 = load i32, i32* @XE_PARITY_ERR, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @M_PARITY, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @M_ID_ERROR, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 5
  br i1 %87, label %88, label %115

88:                                               ; preds = %85, %77
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %91 = load i32, i32* @pm_handle, align 4
  %92 = call i32 @SCRIPTB_BA(%struct.TYPE_12__* %90, i32 %91)
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @OUTL_DSP(i32 %95)
  br label %114

97:                                               ; preds = %88
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @MA, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %104 = call i32 @sym_int_ma(%struct.TYPE_12__* %103)
  br label %113

105:                                              ; preds = %97
  %106 = load i32, i32* @nc_temp, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @OUTL(i32 %106, i32 %107)
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %110 = load i32, i32* @dispatch, align 4
  %111 = call i32 @SCRIPTA_BA(%struct.TYPE_12__* %109, i32 %110)
  %112 = call i32 @OUTL_DSP(i32 %111)
  br label %113

113:                                              ; preds = %105, %102
  br label %114

114:                                              ; preds = %113, %94
  br label %120

115:                                              ; preds = %85
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %117 = load i32, i32* @clrack, align 4
  %118 = call i32 @SCRIPTA_BA(%struct.TYPE_12__* %116, i32 %117)
  %119 = call i32 @OUTL_DSP(i32 %118)
  br label %120

120:                                              ; preds = %115, %114
  br label %124

121:                                              ; preds = %61, %48
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %123 = call i32 @sym_start_reset(%struct.TYPE_12__* %122)
  br label %124

124:                                              ; preds = %121, %120, %41
  ret void
}

declare dso_local i32 @INB(i32) #1

declare dso_local i32 @INL(i32) #1

declare dso_local %struct.TYPE_13__* @sym_ccb_from_dsa(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

declare dso_local i8* @sym_name(%struct.TYPE_12__*) #1

declare dso_local i32 @sym_recover_scsi_int(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OUTONB(i32, i32) #1

declare dso_local i32 @SCRIPTB_BA(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @OUTL_DSP(i32) #1

declare dso_local i32 @sym_int_ma(%struct.TYPE_12__*) #1

declare dso_local i32 @OUTL(i32, i32) #1

declare dso_local i32 @SCRIPTA_BA(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @sym_start_reset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

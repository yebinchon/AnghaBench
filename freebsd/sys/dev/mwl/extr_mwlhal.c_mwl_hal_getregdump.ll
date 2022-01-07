; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getregdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_mwlhal.c_mwl_hal_getregdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_hal_priv = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@HostCmd_ACT_GEN_READ = common dso_local global i32 0, align 4
@MWL_DIAG_BASE_BB = common dso_local global i64 0, align 8
@MWL_DIAG_BASE_RF = common dso_local global i64 0, align 8
@MACREG_REG_FW_PRESENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwl_hal_priv*, %struct.TYPE_3__*, i8*, i32)* @mwl_hal_getregdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwl_hal_getregdump(%struct.mwl_hal_priv* %0, %struct.TYPE_3__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.mwl_hal_priv*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwl_hal_priv* %0, %struct.mwl_hal_priv** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %116, %4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 8
  br i1 %18, label %19, label %119

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = sub i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %113, %19
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @MWL_DIAG_ISMAC(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @RD4(%struct.mwl_hal_priv* %47, i32 %48)
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  br label %94

51:                                               ; preds = %42
  %52 = load i32, i32* %11, align 4
  %53 = call i64 @MWL_DIAG_ISBB(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %57 = load i32, i32* @HostCmd_ACT_GEN_READ, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @MWL_DIAG_BASE_BB, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load i32*, i32** %9, align 8
  %63 = call i32 @getBBReg(%struct.mwl_hal_priv* %56, i32 %57, i64 %61, i32* %62)
  br label %93

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @MWL_DIAG_ISRF(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %70 = load i32, i32* @HostCmd_ACT_GEN_READ, align 4
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* @MWL_DIAG_BASE_RF, align 8
  %74 = sub nsw i64 %72, %73
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @getRFReg(%struct.mwl_hal_priv* %69, i32 %70, i64 %74, i32* %75)
  br label %92

77:                                               ; preds = %64
  %78 = load i32, i32* %11, align 4
  %79 = icmp slt i32 %78, 4096
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @MACREG_REG_FW_PRESENT, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %80, %77
  %85 = load %struct.mwl_hal_priv*, %struct.mwl_hal_priv** %5, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @RD4(%struct.mwl_hal_priv* %85, i32 %86)
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32*, i32** %9, align 8
  store i32 -1, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %84
  br label %92

92:                                               ; preds = %91, %68
  br label %93

93:                                               ; preds = %92, %55
  br label %94

94:                                               ; preds = %93, %46
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %9, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 4
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %102, 4
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %94
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = icmp uge i64 %111, 4
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i1 [ false, %105 ], [ %112, %109 ]
  br i1 %114, label %42, label %115

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %15

119:                                              ; preds = %15
  %120 = load i32*, i32** %9, align 8
  %121 = bitcast i32* %120 to i8*
  %122 = load i8*, i8** %7, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  ret i32 %126
}

declare dso_local i64 @MWL_DIAG_ISMAC(i32) #1

declare dso_local i32 @RD4(%struct.mwl_hal_priv*, i32) #1

declare dso_local i64 @MWL_DIAG_ISBB(i32) #1

declare dso_local i32 @getBBReg(%struct.mwl_hal_priv*, i32, i64, i32*) #1

declare dso_local i64 @MWL_DIAG_ISRF(i32) #1

declare dso_local i32 @getRFReg(%struct.mwl_hal_priv*, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

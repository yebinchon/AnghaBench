; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_do_diag_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_do_diag_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }

@MPR_DIAG_SUCCESS = common dso_local global i32 0, align 4
@MPR_FW_DIAG_ERROR_SUCCESS = common dso_local global i32 0, align 4
@MPR_FW_DIAG_ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@MPR_DIAG_FAILURE = common dso_local global i32 0, align 4
@MPR_FW_DIAG_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, i32, i32*, i32, i32*)* @mpr_do_diag_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_do_diag_action(%struct.mpr_softc* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mpr_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca %struct.TYPE_13__, align 4
  %14 = alloca %struct.TYPE_13__, align 4
  %15 = alloca %struct.TYPE_13__, align 4
  %16 = alloca %struct.TYPE_13__, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.mpr_softc* %0, %struct.mpr_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %19 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* @MPR_FW_DIAG_ERROR_SUCCESS, align 4
  %23 = load i32*, i32** %11, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %140 [
    i32 130, label %25
    i32 128, label %42
    i32 132, label %60
    i32 131, label %89
    i32 129, label %122
  ]

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %30 = load i32*, i32** %11, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %31, i32* %17, align 4
  br label %144

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @copyin(i32* %33, %struct.TYPE_13__* %12, i32 8)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %37, i32* %6, align 4
  br label %161

38:                                               ; preds = %32
  %39 = load %struct.mpr_softc*, %struct.mpr_softc** %7, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @mpr_diag_register(%struct.mpr_softc* %39, %struct.TYPE_13__* %12, i32* %40)
  store i32 %41, i32* %17, align 4
  br label %144

42:                                               ; preds = %5
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %49, i32* %17, align 4
  br label %144

50:                                               ; preds = %42
  %51 = load i32*, i32** %9, align 8
  %52 = call i32 @copyin(i32* %51, %struct.TYPE_13__* %13, i32 8)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %55, i32* %6, align 4
  br label %161

56:                                               ; preds = %50
  %57 = load %struct.mpr_softc*, %struct.mpr_softc** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @mpr_diag_unregister(%struct.mpr_softc* %57, %struct.TYPE_13__* %13, i32* %58)
  store i32 %59, i32* %17, align 4
  br label %144

60:                                               ; preds = %5
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 8
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %66 = load i32*, i32** %11, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %67, i32* %17, align 4
  br label %144

68:                                               ; preds = %60
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @copyin(i32* %69, %struct.TYPE_13__* %14, i32 8)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %73, i32* %6, align 4
  br label %161

74:                                               ; preds = %68
  %75 = load %struct.mpr_softc*, %struct.mpr_softc** %7, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @mpr_diag_query(%struct.mpr_softc* %75, %struct.TYPE_13__* %14, i32* %76)
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @copyout(%struct.TYPE_13__* %14, i32* %82, i32 8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %86, i32* %6, align 4
  br label %161

87:                                               ; preds = %81
  br label %88

88:                                               ; preds = %87, %74
  br label %144

89:                                               ; preds = %5
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @copyin(i32* %90, %struct.TYPE_13__* %15, i32 8)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %94, i32* %6, align 4
  br label %161

95:                                               ; preds = %89
  %96 = load i32, i32* %10, align 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %103, i32* %17, align 4
  br label %144

104:                                              ; preds = %95
  %105 = load %struct.mpr_softc*, %struct.mpr_softc** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @PTRIN(i32 %107)
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @mpr_diag_read_buffer(%struct.mpr_softc* %105, %struct.TYPE_13__* %15, i32 %108, i32* %109)
  store i32 %110, i32* %17, align 4
  %111 = load i32, i32* %17, align 4
  %112 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %104
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @copyout(%struct.TYPE_13__* %15, i32* %115, i32 4)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %119, i32* %6, align 4
  br label %161

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %104
  br label %144

122:                                              ; preds = %5
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %124, 8
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %128 = load i32*, i32** %11, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %129, i32* %17, align 4
  br label %144

130:                                              ; preds = %122
  %131 = load i32*, i32** %9, align 8
  %132 = call i32 @copyin(i32* %131, %struct.TYPE_13__* %16, i32 8)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %135, i32* %6, align 4
  br label %161

136:                                              ; preds = %130
  %137 = load %struct.mpr_softc*, %struct.mpr_softc** %7, align 8
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @mpr_diag_release(%struct.mpr_softc* %137, %struct.TYPE_13__* %16, i32* %138)
  store i32 %139, i32* %17, align 4
  br label %144

140:                                              ; preds = %5
  %141 = load i32, i32* @MPR_FW_DIAG_ERROR_INVALID_PARAMETER, align 4
  %142 = load i32*, i32** %11, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %143, i32* %17, align 4
  br label %144

144:                                              ; preds = %140, %136, %126, %121, %100, %88, %64, %56, %46, %38, %28
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %159

148:                                              ; preds = %144
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @MPR_FW_DIAG_NEW, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = load i32*, i32** %11, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MPR_FW_DIAG_ERROR_SUCCESS, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  store i32 %158, i32* %17, align 4
  br label %159

159:                                              ; preds = %157, %152, %148, %144
  %160 = load i32, i32* %17, align 4
  store i32 %160, i32* %6, align 4
  br label %161

161:                                              ; preds = %159, %134, %118, %93, %85, %72, %54, %36
  %162 = load i32, i32* %6, align 4
  ret i32 %162
}

declare dso_local i32 @copyin(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @mpr_diag_register(%struct.mpr_softc*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @mpr_diag_unregister(%struct.mpr_softc*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @mpr_diag_query(%struct.mpr_softc*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32 @copyout(%struct.TYPE_13__*, i32*, i32) #1

declare dso_local i32 @mpr_diag_read_buffer(%struct.mpr_softc*, %struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @PTRIN(i32) #1

declare dso_local i32 @mpr_diag_release(%struct.mpr_softc*, %struct.TYPE_13__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

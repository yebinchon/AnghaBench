; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_ioctl_phyerr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_dfs/null/extr_dfs_null.c_ath_ioctl_phyerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_diag = type { i32, i32, i32, i32, i32 }

@ATH_DIAG_ID = common dso_local global i32 0, align 4
@ATH_DIAG_IN = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ATH_DIAG_DYN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_ioctl_phyerr(%struct.ath_softc* %0, %struct.ath_diag* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_diag*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_diag* %1, %struct.ath_diag** %4, align 8
  %13 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %14 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATH_DIAG_ID, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %5, align 4
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %18 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %19 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %22 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %25 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ATH_DIAG_IN, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @M_TEMP, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call i8* @malloc(i32 %31, i32 %32, i32 %33)
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %10, align 4
  br label %121

39:                                               ; preds = %30
  %40 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %41 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @copyin(i32 %42, i8* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %121

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %2
  %51 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %52 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ATH_DIAG_DYN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @M_TEMP, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call i8* @malloc(i32 %58, i32 %59, i32 %60)
  store i8* %61, i8** %7, align 8
  %62 = load i8*, i8** %7, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @ENOMEM, align 4
  store i32 %65, i32* %10, align 4
  br label %121

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %50
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %93 [
    i32 128, label %69
    i32 129, label %83
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %10, align 4
  br label %95

75:                                               ; preds = %69
  %76 = load i8*, i8** %6, align 8
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %12, align 8
  %78 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %79 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32*, i32** %12, align 8
  %82 = call i32 @ath_hal_enabledfs(i32 %80, i32* %81)
  br label %95

83:                                               ; preds = %67
  %84 = call i32 @memset(i32* %11, i32 0, i32 4)
  store i32 4, i32* %9, align 4
  %85 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ath_hal_getdfsthresh(i32 %87, i32* %11)
  %89 = load i8*, i8** %7, align 8
  %90 = bitcast i8* %89 to i32*
  store i32* %90, i32** %12, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @memcpy(i32* %91, i32* %11, i32 4)
  br label %95

93:                                               ; preds = %67
  %94 = load i32, i32* @EINVAL, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %83, %75, %73
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %98 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %104 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %95
  %106 = load i8*, i8** %7, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %7, align 8
  %110 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %111 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %114 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @copyout(i8* %109, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* @EFAULT, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %108, %105
  br label %121

121:                                              ; preds = %120, %64, %48, %37
  %122 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %123 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ATH_DIAG_IN, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %121
  %129 = load i8*, i8** %6, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = load i32, i32* @M_TEMP, align 4
  %134 = call i32 @free(i8* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %128, %121
  %136 = load %struct.ath_diag*, %struct.ath_diag** %4, align 8
  %137 = getelementptr inbounds %struct.ath_diag, %struct.ath_diag* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ATH_DIAG_DYN, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load i8*, i8** %7, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i8*, i8** %7, align 8
  %147 = load i32, i32* @M_TEMP, align 4
  %148 = call i32 @free(i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %142, %135
  %150 = load i32, i32* %10, align 4
  ret i32 %150
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @ath_hal_enabledfs(i32, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath_hal_getdfsthresh(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @copyout(i8*, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_diag_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpr/extr_mpr_user.c_mpr_diag_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpr_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i64, i64, i32, i32*, i32 }

@MPR_FW_DIAG_INVALID_UID = common dso_local global i64 0, align 8
@MPI2_DIAG_BUF_TYPE_COUNT = common dso_local global i64 0, align 8
@MPR_FW_DIAG_ERROR_INVALID_UID = common dso_local global i64 0, align 8
@MPR_DIAG_FAILURE = common dso_local global i32 0, align 4
@MPR_FW_DIAGNOSTIC_UID_NOT_FOUND = common dso_local global i64 0, align 8
@MPI2_DIAG_BUF_TYPE_TRACE = common dso_local global i64 0, align 8
@MPR_FW_DIAG_FLAG_APP_OWNED = common dso_local global i32 0, align 4
@MPR_FW_DIAG_FLAG_BUFFER_VALID = common dso_local global i32 0, align 4
@MPR_FW_DIAG_FLAG_FW_BUFFER_ACCESS = common dso_local global i32 0, align 4
@MPR_DIAG_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpr_softc*, %struct.TYPE_5__*, i64*)* @mpr_diag_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpr_diag_query(%struct.mpr_softc* %0, %struct.TYPE_5__* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpr_softc*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mpr_softc* %0, %struct.mpr_softc** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %10, align 8
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @MPR_FW_DIAG_INVALID_UID, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @MPI2_DIAG_BUF_TYPE_COUNT, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i64, i64* @MPR_FW_DIAG_ERROR_INVALID_UID, align 8
  %26 = load i64*, i64** %7, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %27, i32* %4, align 4
  br label %159

28:                                               ; preds = %17
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @mpr_get_fw_diag_buffer_number(%struct.mpr_softc* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @MPR_FW_DIAGNOSTIC_UID_NOT_FOUND, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i64, i64* @MPR_FW_DIAG_ERROR_INVALID_UID, align 8
  %38 = load i64*, i64** %7, align 8
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @MPR_DIAG_FAILURE, align 4
  store i32 %39, i32* %4, align 4
  br label %159

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load %struct.mpr_softc*, %struct.mpr_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mpr_softc, %struct.mpr_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %8, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MPI2_DIAG_BUF_TYPE_TRACE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %41
  store i64 0, i64* %9, align 8
  br label %63

63:                                               ; preds = %78, %62
  %64 = load i64, i64* %9, align 8
  %65 = icmp ult i64 %64, 2
  br i1 %65, label %66, label %81

66:                                               ; preds = %63
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 6
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %72, i32* %77, align 4
  br label %78

78:                                               ; preds = %66
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %63

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %41
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 4
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i32 0, i32* %96, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  store i64 0, i64* %98, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %82
  %104 = load i32, i32* @MPR_FW_DIAG_FLAG_APP_OWNED, align 4
  %105 = xor i32 %104, -1
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %116

110:                                              ; preds = %82
  %111 = load i32, i32* @MPR_FW_DIAG_FLAG_APP_OWNED, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121, %116
  %127 = load i32, i32* @MPR_FW_DIAG_FLAG_BUFFER_VALID, align 4
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %139

132:                                              ; preds = %121
  %133 = load i32, i32* @MPR_FW_DIAG_FLAG_BUFFER_VALID, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %132, %126
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* @MPR_FW_DIAG_FLAG_FW_BUFFER_ACCESS, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %157

150:                                              ; preds = %139
  %151 = load i32, i32* @MPR_FW_DIAG_FLAG_FW_BUFFER_ACCESS, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = and i32 %155, %152
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %150, %144
  %158 = load i32, i32* @MPR_DIAG_SUCCESS, align 4
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %157, %36, %24
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i64 @mpr_get_fw_diag_buffer_number(%struct.mpr_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

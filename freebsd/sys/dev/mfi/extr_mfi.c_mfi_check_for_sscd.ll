; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_check_for_sscd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_check_for_sscd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }
%struct.mfi_command = type { i64, %struct.TYPE_10__*, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64, i32* }
%struct.mfi_config_data = type { i32, i32, i64 }
%struct.mfi_ld_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mfi_ld_config = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MFI_DCMD_CFG_ADD = common dso_local global i64 0, align 8
@MFI_DCMD_LD_DELETE = common dso_local global i64 0, align 8
@MFI_DCMD_LD_GET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocateMFI_DCMD_LD_GET_INFO %d\00", align 1
@M_MFIBUF = common dso_local global i32 0, align 4
@MFI_CMD_DATAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get log drv\0A\00", align 1
@MFI_STAT_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*, %struct.mfi_command*)* @mfi_check_for_sscd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_check_for_sscd(%struct.mfi_softc* %0, %struct.mfi_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mfi_softc*, align 8
  %5 = alloca %struct.mfi_command*, align 8
  %6 = alloca %struct.mfi_config_data*, align 8
  %7 = alloca %struct.mfi_command*, align 8
  %8 = alloca %struct.mfi_ld_info*, align 8
  %9 = alloca %struct.mfi_ld_config*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %4, align 8
  store %struct.mfi_command* %1, %struct.mfi_command** %5, align 8
  store %struct.mfi_command* null, %struct.mfi_command** %7, align 8
  store %struct.mfi_ld_info* null, %struct.mfi_ld_info** %8, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %13 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.mfi_config_data*
  store %struct.mfi_config_data* %15, %struct.mfi_config_data** %6, align 8
  %16 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %17 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MFI_DCMD_CFG_ADD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %2
  %25 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %26 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  store i8* %28, i8** %10, align 8
  %29 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %30 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mfi_config_data*, %struct.mfi_config_data** %6, align 8
  %33 = getelementptr inbounds %struct.mfi_config_data, %struct.mfi_config_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = load i8*, i8** %10, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to %struct.mfi_ld_config*
  store %struct.mfi_ld_config* %40, %struct.mfi_ld_config** %9, align 8
  %41 = load %struct.mfi_ld_config*, %struct.mfi_ld_config** %9, align 8
  %42 = getelementptr inbounds %struct.mfi_ld_config, %struct.mfi_ld_config* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %24
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %24
  br label %158

48:                                               ; preds = %2
  %49 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %50 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MFI_DCMD_LD_DELETE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %157

57:                                               ; preds = %48
  %58 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %59 = load i32, i32* @MFI_DCMD_LD_GET_INFO, align 4
  %60 = bitcast %struct.mfi_ld_info** %8 to i8**
  %61 = call i32 @mfi_dcmd_command(%struct.mfi_softc* %58, %struct.mfi_command** %7, i32 %59, i8** %60, i32 4)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %77

64:                                               ; preds = %57
  %65 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %71 = icmp ne %struct.mfi_ld_info* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %64
  %73 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %74 = load i32, i32* @M_MFIBUF, align 4
  %75 = call i32 @free(%struct.mfi_ld_info* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %64
  store i32 0, i32* %3, align 4
  br label %160

77:                                               ; preds = %57
  %78 = load i32, i32* @MFI_CMD_DATAIN, align 4
  %79 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %80 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %82 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %81, i32 0, i32 1
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %90 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %88, i32* %95, align 4
  %96 = load %struct.mfi_command*, %struct.mfi_command** %5, align 8
  %97 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %105 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %104, i32 0, i32 1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i32 %103, i32* %108, align 8
  %109 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %110 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %111 = call i64 @mfi_wait_command(%struct.mfi_softc* %109, %struct.mfi_command* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %77
  %114 = load %struct.mfi_softc*, %struct.mfi_softc** %4, align 8
  %115 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32, i8*, ...) @device_printf(i32 %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %118 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %119 = call i32 @mfi_release_command(%struct.mfi_command* %118)
  %120 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %121 = load i32, i32* @M_MFIBUF, align 4
  %122 = call i32 @free(%struct.mfi_ld_info* %120, i32 %121)
  store i32 0, i32* %3, align 4
  br label %160

123:                                              ; preds = %77
  %124 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %125 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @MFI_STAT_OK, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %134 = load i32, i32* @M_MFIBUF, align 4
  %135 = call i32 @free(%struct.mfi_ld_info* %133, i32 %134)
  %136 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %137 = call i32 @mfi_release_command(%struct.mfi_command* %136)
  store i32 0, i32* %3, align 4
  br label %160

138:                                              ; preds = %123
  %139 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %140 = getelementptr inbounds %struct.mfi_command, %struct.mfi_command* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to %struct.mfi_ld_info*
  store %struct.mfi_ld_info* %142, %struct.mfi_ld_info** %8, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %145 = getelementptr inbounds %struct.mfi_ld_info, %struct.mfi_ld_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 1, i32* %11, align 4
  br label %151

151:                                              ; preds = %150, %143
  %152 = load %struct.mfi_command*, %struct.mfi_command** %7, align 8
  %153 = call i32 @mfi_release_command(%struct.mfi_command* %152)
  %154 = load %struct.mfi_ld_info*, %struct.mfi_ld_info** %8, align 8
  %155 = load i32, i32* @M_MFIBUF, align 4
  %156 = call i32 @free(%struct.mfi_ld_info* %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %48
  br label %158

158:                                              ; preds = %157, %47
  %159 = load i32, i32* %11, align 4
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %158, %132, %113, %76
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @mfi_dcmd_command(%struct.mfi_softc*, %struct.mfi_command**, i32, i8**, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.mfi_ld_info*, i32) #1

declare dso_local i64 @mfi_wait_command(%struct.mfi_softc*, %struct.mfi_command*) #1

declare dso_local i32 @mfi_release_command(%struct.mfi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

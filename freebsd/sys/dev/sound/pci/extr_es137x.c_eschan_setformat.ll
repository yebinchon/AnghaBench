; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_setformat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_eschan_setformat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_chinfo = type { i64, i64, i32, %struct.es_info* }
%struct.es_info = type { i32 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@ES_DAC1 = common dso_local global i64 0, align 8
@SCTRL_P1FMT = common dso_local global i32 0, align 4
@AFMT_S16_LE = common dso_local global i32 0, align 4
@SCTRL_P1SEB = common dso_local global i32 0, align 4
@SCTRL_P1SMB = common dso_local global i32 0, align 4
@SCTRL_P2FMT = common dso_local global i32 0, align 4
@SCTRL_P2SEB = common dso_local global i32 0, align 4
@SCTRL_P2SMB = common dso_local global i32 0, align 4
@SCTRL_R1FMT = common dso_local global i32 0, align 4
@SCTRL_R1SEB = common dso_local global i32 0, align 4
@SCTRL_R1SMB = common dso_local global i32 0, align 4
@ES1370_REG_SERIAL_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @eschan_setformat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eschan_setformat(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.es_chinfo*, align 8
  %8 = alloca %struct.es_info*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.es_chinfo*
  store %struct.es_chinfo* %10, %struct.es_chinfo** %7, align 8
  %11 = load %struct.es_chinfo*, %struct.es_chinfo** %7, align 8
  %12 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %11, i32 0, i32 3
  %13 = load %struct.es_info*, %struct.es_info** %12, align 8
  store %struct.es_info* %13, %struct.es_info** %8, align 8
  %14 = load %struct.es_info*, %struct.es_info** %8, align 8
  %15 = call i32 @ES_LOCK(%struct.es_info* %14)
  %16 = load %struct.es_chinfo*, %struct.es_chinfo** %7, align 8
  %17 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PCMDIR_PLAY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %84

21:                                               ; preds = %3
  %22 = load %struct.es_chinfo*, %struct.es_chinfo** %7, align 8
  %23 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ES_DAC1, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load i32, i32* @SCTRL_P1FMT, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.es_info*, %struct.es_info** %8, align 8
  %31 = getelementptr inbounds %struct.es_info, %struct.es_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @AFMT_S16_LE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %27
  %39 = load i32, i32* @SCTRL_P1SEB, align 4
  %40 = load %struct.es_info*, %struct.es_info** %8, align 8
  %41 = getelementptr inbounds %struct.es_info, %struct.es_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %27
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @AFMT_CHANNEL(i32 %45)
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* @SCTRL_P1SMB, align 4
  %50 = load %struct.es_info*, %struct.es_info** %8, align 8
  %51 = getelementptr inbounds %struct.es_info, %struct.es_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %44
  br label %83

55:                                               ; preds = %21
  %56 = load i32, i32* @SCTRL_P2FMT, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.es_info*, %struct.es_info** %8, align 8
  %59 = getelementptr inbounds %struct.es_info, %struct.es_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @AFMT_S16_LE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %55
  %67 = load i32, i32* @SCTRL_P2SEB, align 4
  %68 = load %struct.es_info*, %struct.es_info** %8, align 8
  %69 = getelementptr inbounds %struct.es_info, %struct.es_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %55
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @AFMT_CHANNEL(i32 %73)
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i32, i32* @SCTRL_P2SMB, align 4
  %78 = load %struct.es_info*, %struct.es_info** %8, align 8
  %79 = getelementptr inbounds %struct.es_info, %struct.es_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %72
  br label %83

83:                                               ; preds = %82, %54
  br label %112

84:                                               ; preds = %3
  %85 = load i32, i32* @SCTRL_R1FMT, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.es_info*, %struct.es_info** %8, align 8
  %88 = getelementptr inbounds %struct.es_info, %struct.es_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @AFMT_S16_LE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %84
  %96 = load i32, i32* @SCTRL_R1SEB, align 4
  %97 = load %struct.es_info*, %struct.es_info** %8, align 8
  %98 = getelementptr inbounds %struct.es_info, %struct.es_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %95, %84
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @AFMT_CHANNEL(i32 %102)
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i32, i32* @SCTRL_R1SMB, align 4
  %107 = load %struct.es_info*, %struct.es_info** %8, align 8
  %108 = getelementptr inbounds %struct.es_info, %struct.es_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %105, %101
  br label %112

112:                                              ; preds = %111, %83
  %113 = load %struct.es_info*, %struct.es_info** %8, align 8
  %114 = load i32, i32* @ES1370_REG_SERIAL_CONTROL, align 4
  %115 = load %struct.es_info*, %struct.es_info** %8, align 8
  %116 = getelementptr inbounds %struct.es_info, %struct.es_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @es_wr(%struct.es_info* %113, i32 %114, i32 %117, i32 4)
  %119 = load %struct.es_info*, %struct.es_info** %8, align 8
  %120 = call i32 @ES_UNLOCK(%struct.es_info* %119)
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.es_chinfo*, %struct.es_chinfo** %7, align 8
  %123 = getelementptr inbounds %struct.es_chinfo, %struct.es_chinfo* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 8
  ret i32 0
}

declare dso_local i32 @ES_LOCK(%struct.es_info*) #1

declare dso_local i32 @AFMT_CHANNEL(i32) #1

declare dso_local i32 @es_wr(%struct.es_info*, i32, i32, i32) #1

declare dso_local i32 @ES_UNLOCK(%struct.es_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

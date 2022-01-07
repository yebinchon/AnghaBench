; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_cmi.c_cmichan_setspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i64, i32, %struct.sc_info* }
%struct.sc_info = type { i32, i64 }

@PCMDIR_PLAY = common dso_local global i64 0, align 8
@CMPCI_REG_FUNC_1 = common dso_local global i32 0, align 4
@CMPCI_REG_DAC_FS_SHIFT = common dso_local global i32 0, align 4
@CMPCI_REG_DAC_FS_MASK = common dso_local global i32 0, align 4
@CMPCI_REG_ADC_FS_SHIFT = common dso_local global i32 0, align 4
@CMPCI_REG_ADC_FS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cmichan_setspeed (%s) %d -> %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"rec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @cmichan_setspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmichan_setspeed(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sc_chinfo*, align 8
  %8 = alloca %struct.sc_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sc_chinfo*
  store %struct.sc_chinfo* %12, %struct.sc_chinfo** %7, align 8
  %13 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %14 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %13, i32 0, i32 2
  %15 = load %struct.sc_info*, %struct.sc_info** %14, align 8
  store %struct.sc_info* %15, %struct.sc_info** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cmpci_rate_to_regvalue(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %19 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snd_mtxlock(i32 %20)
  %22 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %23 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCMDIR_PLAY, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 44100
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %32 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %31, i32 0, i32 2
  %33 = load %struct.sc_info*, %struct.sc_info** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cmi_spdif_speed(%struct.sc_info* %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %27
  %37 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %38 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %37, i32 0, i32 2
  %39 = load %struct.sc_info*, %struct.sc_info** %38, align 8
  %40 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %41 = load i32, i32* @CMPCI_REG_DAC_FS_SHIFT, align 4
  %42 = load i32, i32* @CMPCI_REG_DAC_FS_MASK, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cmi_partial_wr4(%struct.sc_info* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = icmp sge i32 %45, 44100
  br i1 %46, label %47, label %60

47:                                               ; preds = %36
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 2
  %50 = load %struct.sc_info*, %struct.sc_info** %49, align 8
  %51 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %56 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %55, i32 0, i32 2
  %57 = load %struct.sc_info*, %struct.sc_info** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @cmi_spdif_speed(%struct.sc_info* %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %47, %36
  %61 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %62 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %61, i32 0, i32 2
  %63 = load %struct.sc_info*, %struct.sc_info** %62, align 8
  %64 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %65 = call i32 @cmi_rd(%struct.sc_info* %63, i32 %64, i32 4)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* @CMPCI_REG_DAC_FS_SHIFT, align 4
  %67 = load i32, i32* %10, align 4
  %68 = ashr i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @CMPCI_REG_DAC_FS_MASK, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %92

72:                                               ; preds = %3
  %73 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %74 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %73, i32 0, i32 2
  %75 = load %struct.sc_info*, %struct.sc_info** %74, align 8
  %76 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %77 = load i32, i32* @CMPCI_REG_ADC_FS_SHIFT, align 4
  %78 = load i32, i32* @CMPCI_REG_ADC_FS_MASK, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @cmi_partial_wr4(%struct.sc_info* %75, i32 %76, i32 %77, i32 %78, i32 %79)
  %81 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %82 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %81, i32 0, i32 2
  %83 = load %struct.sc_info*, %struct.sc_info** %82, align 8
  %84 = load i32, i32* @CMPCI_REG_FUNC_1, align 4
  %85 = call i32 @cmi_rd(%struct.sc_info* %83, i32 %84, i32 4)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* @CMPCI_REG_ADC_FS_SHIFT, align 4
  %87 = load i32, i32* %10, align 4
  %88 = ashr i32 %87, %86
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* @CMPCI_REG_ADC_FS_MASK, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %72, %60
  %93 = load %struct.sc_info*, %struct.sc_info** %8, align 8
  %94 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @snd_mtxunlock(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @cmpci_regvalue_to_rate(i32 %97)
  %99 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %100 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %102 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCMDIR_PLAY, align 8
  %105 = icmp eq i64 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %110 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @cmpci_regvalue_to_rate(i32 %112)
  %114 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %107, i32 %108, i32 %111, i32 %113)
  %115 = call i32 @DEB(i32 %114)
  %116 = load %struct.sc_chinfo*, %struct.sc_chinfo** %7, align 8
  %117 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  ret i32 %118
}

declare dso_local i32 @cmpci_rate_to_regvalue(i32) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @cmi_spdif_speed(%struct.sc_info*, i32) #1

declare dso_local i32 @cmi_partial_wr4(%struct.sc_info*, i32, i32, i32, i32) #1

declare dso_local i32 @cmi_rd(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

declare dso_local i32 @cmpci_regvalue_to_rate(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

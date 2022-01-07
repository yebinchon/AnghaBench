; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_init_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_es137x.c_es_init_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ES1371_PCI_ID = common dso_local global i32 0, align 4
@ES1371REV_ES1373_8 = common dso_local global i32 0, align 4
@ES1371REV_CT5880_A = common dso_local global i32 0, align 4
@CT5880_PCI_ID = common dso_local global i32 0, align 4
@CT5880REV_CT5880_C = common dso_local global i32 0, align 4
@CT5880REV_CT5880_D = common dso_local global i32 0, align 4
@CT5880REV_CT5880_E = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"spdif_enabled\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_es137x_spdif_enable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Enable S/PDIF output on primary playback channel\00", align 1
@ES1370_PCI_ID = common dso_local global i32 0, align 4
@ES_DAC2 = common dso_local global i64 0, align 8
@ES_ADC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"fixed_rate\00", align 1
@sysctl_es137x_fixed_rate = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Enable fixed rate playback/recording\00", align 1
@ES_DAC1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"single_pcm_mixer\00", align 1
@sysctl_es137x_single_pcm_mixer = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Single PCM mixer controller for both DAC1/DAC2\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"latency_timer\00", align 1
@PCIR_LATTIMER = common dso_local global i32 0, align 4
@sysctl_es137x_latency_timer = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"PCI Latency Timer configuration\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@sysctl_es_polling = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"Enable polling mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @es_init_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @es_init_sysctls(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.es_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @pci_get_devid(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pci_get_revid(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call %struct.es_info* @pcm_getdevinfo(i32 %11)
  store %struct.es_info* %12, %struct.es_info** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ES1371_PCI_ID, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @ES1371REV_ES1373_8, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %52, label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ES1371_PCI_ID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ES1371REV_CT5880_A, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %52, label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @CT5880_PCI_ID, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @CT5880REV_CT5880_C, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %52, label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @CT5880_PCI_ID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @CT5880REV_CT5880_D, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @CT5880_PCI_ID, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @CT5880REV_CT5880_E, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48, %40, %32, %24, %16
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @device_get_sysctl_ctx(i32 %53)
  %55 = load i32, i32* %2, align 4
  %56 = call i32 @device_get_sysctl_tree(i32 %55)
  %57 = call i32 @SYSCTL_CHILDREN(i32 %56)
  %58 = load i32, i32* @OID_AUTO, align 4
  %59 = load i32, i32* @CTLTYPE_INT, align 4
  %60 = load i32, i32* @CTLFLAG_RW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @sysctl_es137x_spdif_enable, align 4
  %64 = call i32 @SYSCTL_ADD_PROC(i32 %54, i32 %57, i32 %58, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %62, i32 4, i32 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %133

65:                                               ; preds = %48, %44
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @ES1370_PCI_ID, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %65
  %70 = load %struct.es_info*, %struct.es_info** %3, align 8
  %71 = getelementptr inbounds %struct.es_info, %struct.es_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* @ES_DAC2, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %100

78:                                               ; preds = %69
  %79 = load %struct.es_info*, %struct.es_info** %3, align 8
  %80 = getelementptr inbounds %struct.es_info, %struct.es_info* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @ES_ADC, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %100

87:                                               ; preds = %78
  %88 = load i32, i32* %2, align 4
  %89 = call i32 @device_get_sysctl_ctx(i32 %88)
  %90 = load i32, i32* %2, align 4
  %91 = call i32 @device_get_sysctl_tree(i32 %90)
  %92 = call i32 @SYSCTL_CHILDREN(i32 %91)
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLTYPE_INT, align 4
  %95 = load i32, i32* @CTLFLAG_RW, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %2, align 4
  %98 = load i32, i32* @sysctl_es137x_fixed_rate, align 4
  %99 = call i32 @SYSCTL_ADD_PROC(i32 %89, i32 %92, i32 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %96, i32 %97, i32 4, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %100

100:                                              ; preds = %87, %78, %69
  %101 = load %struct.es_info*, %struct.es_info** %3, align 8
  %102 = getelementptr inbounds %struct.es_info, %struct.es_info* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = load i64, i64* @ES_DAC1, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %100
  %110 = load %struct.es_info*, %struct.es_info** %3, align 8
  %111 = getelementptr inbounds %struct.es_info, %struct.es_info* %110, i32 0, i32 0
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i64, i64* @ES_DAC2, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %131

118:                                              ; preds = %109
  %119 = load i32, i32* %2, align 4
  %120 = call i32 @device_get_sysctl_ctx(i32 %119)
  %121 = load i32, i32* %2, align 4
  %122 = call i32 @device_get_sysctl_tree(i32 %121)
  %123 = call i32 @SYSCTL_CHILDREN(i32 %122)
  %124 = load i32, i32* @OID_AUTO, align 4
  %125 = load i32, i32* @CTLTYPE_INT, align 4
  %126 = load i32, i32* @CTLFLAG_RW, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* @sysctl_es137x_single_pcm_mixer, align 4
  %130 = call i32 @SYSCTL_ADD_PROC(i32 %120, i32 %123, i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %127, i32 %128, i32 4, i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %118, %109, %100
  br label %132

132:                                              ; preds = %131, %65
  br label %133

133:                                              ; preds = %132, %52
  %134 = load i32, i32* %2, align 4
  %135 = call i32 @device_get_name(i32 %134)
  %136 = load i32, i32* %2, align 4
  %137 = call i32 @device_get_unit(i32 %136)
  %138 = call i64 @resource_int_value(i32 %135, i32 %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32* %4)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %133
  %141 = load i32, i32* %4, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %4, align 4
  %145 = icmp sgt i32 %144, 255
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %2, align 4
  %148 = load i32, i32* @PCIR_LATTIMER, align 4
  %149 = load i32, i32* %4, align 4
  %150 = call i32 @pci_write_config(i32 %147, i32 %148, i32 %149, i32 1)
  br label %151

151:                                              ; preds = %146, %143, %140, %133
  %152 = load i32, i32* %2, align 4
  %153 = call i32 @device_get_sysctl_ctx(i32 %152)
  %154 = load i32, i32* %2, align 4
  %155 = call i32 @device_get_sysctl_tree(i32 %154)
  %156 = call i32 @SYSCTL_CHILDREN(i32 %155)
  %157 = load i32, i32* @OID_AUTO, align 4
  %158 = load i32, i32* @CTLTYPE_INT, align 4
  %159 = load i32, i32* @CTLFLAG_RW, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %2, align 4
  %162 = load i32, i32* @sysctl_es137x_latency_timer, align 4
  %163 = call i32 @SYSCTL_ADD_PROC(i32 %153, i32 %156, i32 %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %160, i32 %161, i32 4, i32 %162, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @device_get_sysctl_ctx(i32 %164)
  %166 = load i32, i32* %2, align 4
  %167 = call i32 @device_get_sysctl_tree(i32 %166)
  %168 = call i32 @SYSCTL_CHILDREN(i32 %167)
  %169 = load i32, i32* @OID_AUTO, align 4
  %170 = load i32, i32* @CTLTYPE_INT, align 4
  %171 = load i32, i32* @CTLFLAG_RW, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* %2, align 4
  %174 = load i32, i32* @sysctl_es_polling, align 4
  %175 = call i32 @SYSCTL_ADD_PROC(i32 %165, i32 %168, i32 %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %172, i32 %173, i32 4, i32 %174, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local %struct.es_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i64 @resource_int_value(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_set_initial_config_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MPI_CONFIG_PAGETYPE_FC_PORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to read FC page 1 header\0A\00", align 1
@MPI_CONFIG_ACTION_PAGE_READ_NVRAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to read FC page 1\0A\00", align 1
@MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT = common dso_local global i32 0, align 4
@MPT_ROLE_INITIATOR = common dso_local global i32 0, align 4
@MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG = common dso_local global i32 0, align 4
@MPT_ROLE_TARGET = common dso_local global i32 0, align 4
@MPI_FCPORTPAGE1_FLAGS_PROT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"adding initiator role\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"keeping initiator role\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"removing initiator role\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"adding target role\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"keeping target role\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"removing target role\0A\00", align 1
@MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"adding OXID option\0A\00", align 1
@MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"failed to update NVRAM with changes\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"NOTE: NVRAM changes will not take effect until next reboot or IOC reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_set_initial_config_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_set_initial_config_fc(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %10 = load i32, i32* @MPI_CONFIG_PAGETYPE_FC_PORT, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %12 = load i32, i32* @FALSE, align 4
  %13 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %9, i32 %10, i32 1, i32 0, i32* %11, i32 %12, i32 5000)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %18 = call i32 @mpt_prt(%struct.mpt_softc* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = call i32 @mpt_fc_reset_link(%struct.mpt_softc* %19, i32 1)
  store i32 %20, i32* %2, align 4
  br label %193

21:                                               ; preds = %1
  %22 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %23 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_READ_NVRAM, align 4
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @mpt_read_cfg_page(%struct.mpt_softc* %22, i32 %23, i32 0, i32* %24, i32 8, i32 %25, i32 5000)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %31 = call i32 @mpt_prt(%struct.mpt_softc* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %33 = call i32 @mpt_fc_reset_link(%struct.mpt_softc* %32, i32 1)
  store i32 %33, i32* %2, align 4
  br label %193

34:                                               ; preds = %21
  %35 = call i32 @mpt2host_config_page_fc_port_1(%struct.TYPE_4__* %4)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %34
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %55
  %69 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %74 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %72, %75
  br i1 %76, label %77, label %153

77:                                               ; preds = %71
  %78 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %79 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %77
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %84
  %90 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %91 = call i32 @mpt_prt(%struct.mpt_softc* %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_FCP_INIT, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %100

97:                                               ; preds = %84
  %98 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %99 = call i32 @mpt_prt(%struct.mpt_softc* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %100

100:                                              ; preds = %97, %89
  br label %112

101:                                              ; preds = %77
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %108 = call i32 @mpt_prt(%struct.mpt_softc* %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %111

111:                                              ; preds = %106, %101
  br label %112

112:                                              ; preds = %111, %100
  %113 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %114 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %136

119:                                              ; preds = %112
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %122 = and i32 %120, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %119
  %125 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %126 = call i32 @mpt_prt(%struct.mpt_softc* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %127 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %135

132:                                              ; preds = %119
  %133 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %134 = call i32 @mpt_prt(%struct.mpt_softc* %133, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %135

135:                                              ; preds = %132, %124
  br label %147

136:                                              ; preds = %112
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %143 = call i32 @mpt_prt(%struct.mpt_softc* %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %135
  %148 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %149 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %152 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %147, %71
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_PROT_FCP_TARG, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %172

158:                                              ; preds = %153
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %165 = call i32 @mpt_prt(%struct.mpt_softc* %164, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %166 = load i32, i32* @MPI_FCPORTPAGE1_FLAGS_TARGET_MODE_OXID, align 4
  %167 = load i32, i32* %5, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %7, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %163, %158
  br label %172

172:                                              ; preds = %171, %153
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %192

175:                                              ; preds = %172
  %176 = load i32, i32* %5, align 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  store i32 %176, i32* %177, align 4
  %178 = call i32 @host2mpt_config_page_fc_port_1(%struct.TYPE_4__* %4)
  %179 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %180 = load i32, i32* @MPI_CONFIG_ACTION_PAGE_WRITE_NVRAM, align 4
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %182 = load i32, i32* @FALSE, align 4
  %183 = call i32 @mpt_write_cfg_page(%struct.mpt_softc* %179, i32 %180, i32 0, i32* %181, i32 8, i32 %182, i32 5000)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %175
  %187 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %188 = call i32 @mpt_prt(%struct.mpt_softc* %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %193

189:                                              ; preds = %175
  %190 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %191 = call i32 @mpt_prt(%struct.mpt_softc* %190, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.10, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %172
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %186, %29, %16
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt_fc_reset_link(%struct.mpt_softc*, i32) #1

declare dso_local i32 @mpt_read_cfg_page(%struct.mpt_softc*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mpt2host_config_page_fc_port_1(%struct.TYPE_4__*) #1

declare dso_local i32 @host2mpt_config_page_fc_port_1(%struct.TYPE_4__*) #1

declare dso_local i32 @mpt_write_cfg_page(%struct.mpt_softc*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

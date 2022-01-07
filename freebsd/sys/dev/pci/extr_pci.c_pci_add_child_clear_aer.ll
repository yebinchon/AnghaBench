; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_child_clear_aer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_add_child_clear_aer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@PCIEM_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCIER_ROOT_CTL = common dso_local global i64 0, align 8
@PCIEM_ROOT_CTL_SERR_CORR = common dso_local global i32 0, align 4
@PCIEM_ROOT_CTL_SERR_NONFATAL = common dso_local global i32 0, align 4
@PCIEM_ROOT_CTL_SERR_FATAL = common dso_local global i32 0, align 4
@PCIZ_AER = common dso_local global i32 0, align 4
@PCIR_AER_UC_STATUS = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"clearing AER UC 0x%08x -> 0x%08x\0A\00", align 1
@PCIR_AER_UC_MASK = common dso_local global i64 0, align 8
@PCIM_AER_UC_TRAINING_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_UC_DL_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_UC_SURPRISE_LINK_DOWN = common dso_local global i32 0, align 4
@PCIM_AER_UC_POISONED_TLP = common dso_local global i32 0, align 4
@PCIM_AER_UC_FC_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_UC_COMPLETION_TIMEOUT = common dso_local global i32 0, align 4
@PCIM_AER_UC_COMPLETER_ABORT = common dso_local global i32 0, align 4
@PCIM_AER_UC_UNEXPECTED_COMPLETION = common dso_local global i32 0, align 4
@PCIM_AER_UC_RECEIVER_OVERFLOW = common dso_local global i32 0, align 4
@PCIM_AER_UC_MALFORMED_TLP = common dso_local global i32 0, align 4
@PCIM_AER_UC_ECRC_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_UC_UNSUPPORTED_REQUEST = common dso_local global i32 0, align 4
@PCIM_AER_UC_ACS_VIOLATION = common dso_local global i32 0, align 4
@PCIM_AER_UC_INTERNAL_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_UC_MC_BLOCKED_TLP = common dso_local global i32 0, align 4
@PCIM_AER_UC_ATOMIC_EGRESS_BLK = common dso_local global i32 0, align 4
@PCIM_AER_UC_TLP_PREFIX_BLOCKED = common dso_local global i32 0, align 4
@PCIR_AER_COR_STATUS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"clearing AER COR 0x%08x -> 0x%08x\0A\00", align 1
@PCIR_AER_COR_MASK = common dso_local global i64 0, align 8
@PCIM_AER_COR_RECEIVER_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_COR_BAD_TLP = common dso_local global i32 0, align 4
@PCIM_AER_COR_BAD_DLLP = common dso_local global i32 0, align 4
@PCIM_AER_COR_REPLAY_ROLLOVER = common dso_local global i32 0, align 4
@PCIM_AER_COR_REPLAY_TIMEOUT = common dso_local global i32 0, align 4
@PCIM_AER_COR_ADVISORY_NF_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_COR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@PCIM_AER_COR_HEADER_LOG_OVFLOW = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL = common dso_local global i64 0, align 8
@PCIEM_CTL_COR_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_NFER_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_FER_ENABLE = common dso_local global i32 0, align 4
@PCIEM_CTL_URR_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_devinfo*)* @pci_add_child_clear_aer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_add_child_clear_aer(i32 %0, %struct.pci_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %4, align 8
  %8 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %50

14:                                               ; preds = %2
  %15 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %16 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %25 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PCIER_ROOT_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @pci_read_config(i32 %23, i64 %30, i32 2)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @PCIEM_ROOT_CTL_SERR_CORR, align 4
  %33 = load i32, i32* @PCIEM_ROOT_CTL_SERR_NONFATAL, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PCIEM_ROOT_CTL_SERR_FATAL, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %42 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PCIER_ROOT_CTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pci_write_config(i32 %40, i64 %47, i32 %48, i32 2)
  br label %50

50:                                               ; preds = %22, %14, %2
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @PCIZ_AER, align 4
  %53 = call i64 @pci_find_extcap(i32 %51, i32 %52, i32* %5)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %224

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* @PCIR_AER_UC_STATUS, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @pci_read_config(i32 %56, i64 %60, i32 4)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @PCIR_AER_UC_STATUS, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @pci_write_config(i32 %62, i64 %66, i32 %67, i32 4)
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %55
  %72 = load i64, i64* @bootverbose, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %76 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %75, i32 0, i32 0
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @PCIR_AER_UC_STATUS, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @pci_read_config(i32 %78, i64 %82, i32 4)
  %84 = call i32 @pci_printf(%struct.TYPE_4__* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %83)
  br label %85

85:                                               ; preds = %74, %71, %55
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* @PCIR_AER_UC_MASK, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @pci_read_config(i32 %86, i64 %90, i32 4)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* @PCIM_AER_UC_TRAINING_ERROR, align 4
  %93 = load i32, i32* @PCIM_AER_UC_DL_PROTOCOL_ERROR, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @PCIM_AER_UC_SURPRISE_LINK_DOWN, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @PCIM_AER_UC_POISONED_TLP, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @PCIM_AER_UC_FC_PROTOCOL_ERROR, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @PCIM_AER_UC_COMPLETION_TIMEOUT, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @PCIM_AER_UC_COMPLETER_ABORT, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @PCIM_AER_UC_UNEXPECTED_COMPLETION, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @PCIM_AER_UC_RECEIVER_OVERFLOW, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @PCIM_AER_UC_MALFORMED_TLP, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @PCIM_AER_UC_ECRC_ERROR, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @PCIM_AER_UC_UNSUPPORTED_REQUEST, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @PCIM_AER_UC_ACS_VIOLATION, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @PCIM_AER_UC_INTERNAL_ERROR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @PCIM_AER_UC_MC_BLOCKED_TLP, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @PCIM_AER_UC_ATOMIC_EGRESS_BLK, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PCIM_AER_UC_TLP_PREFIX_BLOCKED, align 4
  %124 = or i32 %122, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* %5, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* @PCIR_AER_UC_MASK, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @pci_write_config(i32 %128, i64 %132, i32 %133, i32 4)
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* @PCIR_AER_COR_STATUS, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @pci_read_config(i32 %135, i64 %139, i32 4)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @PCIR_AER_COR_STATUS, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @pci_write_config(i32 %141, i64 %145, i32 %146, i32 4)
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %85
  %151 = load i64, i64* @bootverbose, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %150
  %154 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %155 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %154, i32 0, i32 0
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %3, align 4
  %158 = load i32, i32* %5, align 4
  %159 = sext i32 %158 to i64
  %160 = load i64, i64* @PCIR_AER_COR_STATUS, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @pci_read_config(i32 %157, i64 %161, i32 4)
  %163 = call i32 @pci_printf(%struct.TYPE_4__* %155, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %156, i32 %162)
  br label %164

164:                                              ; preds = %153, %150, %85
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %5, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* @PCIR_AER_COR_MASK, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @pci_read_config(i32 %165, i64 %169, i32 4)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* @PCIM_AER_COR_RECEIVER_ERROR, align 4
  %172 = load i32, i32* @PCIM_AER_COR_BAD_TLP, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @PCIM_AER_COR_BAD_DLLP, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @PCIM_AER_COR_REPLAY_ROLLOVER, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @PCIM_AER_COR_REPLAY_TIMEOUT, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @PCIM_AER_COR_ADVISORY_NF_ERROR, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @PCIM_AER_COR_INTERNAL_ERROR, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @PCIM_AER_COR_HEADER_LOG_OVFLOW, align 4
  %185 = or i32 %183, %184
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %6, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @PCIR_AER_COR_MASK, align 8
  %193 = add nsw i64 %191, %192
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @pci_write_config(i32 %189, i64 %193, i32 %194, i32 4)
  %196 = load i32, i32* %3, align 4
  %197 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %198 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @pci_read_config(i32 %196, i64 %203, i32 2)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* @PCIEM_CTL_COR_ENABLE, align 4
  %206 = load i32, i32* @PCIEM_CTL_NFER_ENABLE, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @PCIEM_CTL_FER_ENABLE, align 4
  %209 = or i32 %207, %208
  %210 = load i32, i32* @PCIEM_CTL_URR_ENABLE, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* %6, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %6, align 4
  %214 = load i32, i32* %3, align 4
  %215 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %216 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @PCIER_DEVICE_CTL, align 8
  %221 = add nsw i64 %219, %220
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @pci_write_config(i32 %214, i64 %221, i32 %222, i32 2)
  br label %224

224:                                              ; preds = %164, %50
  ret void
}

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i64 @pci_find_extcap(i32, i32, i32*) #1

declare dso_local i32 @pci_printf(%struct.TYPE_4__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

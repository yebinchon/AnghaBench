; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ata_channel = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@ATA_SATA = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@INTEL_6CH = common dso_local global i32 0, align 4
@INTEL_6CH2 = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"SATA reset: ports status=0x%02x\0A\00", align 1
@ATA_ATA_MASTER = common dso_local global i32 0, align 4
@ATA_ATA_SLAVE = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_intel_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_intel_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %16, %struct.ata_pci_controller** %4, align 8
  %17 = load i32, i32* %2, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_channel*
  store %struct.ata_channel* %19, %struct.ata_channel** %5, align 8
  %20 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ATA_SATA, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %2, align 4
  call void @ata_generic_reset(i32 %27)
  br label %193

28:                                               ; preds = %1
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %31 = call i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller* %29, %struct.ata_channel* %30)
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 1, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ATA_NO_SLAVE, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %28
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %6, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %42, %28
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @pci_read_config(i32 %51, i32 146, i32 2)
  %53 = load i32, i32* %6, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @pci_write_config(i32 %50, i32 146, i32 %55, i32 2)
  %57 = call i32 @DELAY(i32 100)
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @pci_read_config(i32 %59, i32 146, i32 2)
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @pci_write_config(i32 %58, i32 146, i32 %62, i32 2)
  %64 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %65 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @INTEL_6CH, align 4
  %70 = load i32, i32* @INTEL_6CH2, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  store i32 8, i32* %7, align 4
  br label %76

75:                                               ; preds = %49
  store i32 4, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %74
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 100
  br i1 %79, label %80, label %101

80:                                               ; preds = %77
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @pci_read_config(i32 %81, i32 146, i32 2)
  %83 = load i32, i32* %7, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* %6, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %80
  %91 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %92 = load i32, i32* @ATA_STATUS, align 4
  %93 = call i32 @ATA_IDX_INB(%struct.ata_channel* %91, i32 %92)
  %94 = icmp ne i32 %93, 255
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %101

96:                                               ; preds = %90, %80
  %97 = call i32 @ata_udelay(i32 10000)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %77

101:                                              ; preds = %95, %77
  %102 = load i64, i64* @bootverbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, i32* %2, align 4
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @device_printf(i32 %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %104, %101
  %109 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %110 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %141

114:                                              ; preds = %108
  %115 = load i32, i32* %2, align 4
  %116 = call i64 @ata_sata_phy_reset(i32 %115, i32 0, i32 2)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* @ATA_ATA_MASTER, align 4
  br label %121

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %118
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ]
  store i32 %122, i32* %9, align 4
  %123 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %124 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @ATA_NO_SLAVE, align 4
  %127 = and i32 %125, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %121
  %130 = load i32, i32* %2, align 4
  %131 = call i64 @ata_sata_phy_reset(i32 %130, i32 1, i32 2)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @ATA_ATA_SLAVE, align 4
  br label %136

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135, %133
  %137 = phi i32 [ %134, %133 ], [ 0, %135 ]
  %138 = load i32, i32* %9, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %121
  br label %176

141:                                              ; preds = %108
  %142 = load i32, i32* %11, align 4
  %143 = load i32*, i32** %10, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = shl i32 1, %145
  %147 = and i32 %142, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = load i32, i32* @ATA_ATA_MASTER, align 4
  br label %152

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151, %149
  %153 = phi i32 [ %150, %149 ], [ 0, %151 ]
  store i32 %153, i32* %9, align 4
  %154 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %155 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @ATA_NO_SLAVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %152
  %161 = load i32, i32* %11, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 1, %164
  %166 = and i32 %161, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %160
  %169 = load i32, i32* @ATA_ATA_SLAVE, align 4
  br label %171

170:                                              ; preds = %160
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i32 [ %169, %168 ], [ 0, %170 ]
  %173 = load i32, i32* %9, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %9, align 4
  br label %175

175:                                              ; preds = %171, %152
  br label %176

176:                                              ; preds = %175, %140
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load i32, i32* %2, align 4
  call void @ata_generic_reset(i32 %180)
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %184 = mul nsw i32 %182, %183
  %185 = or i32 %181, %184
  %186 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %187 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %193

190:                                              ; preds = %176
  %191 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %192 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %191, i32 0, i32 1
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %26, %190, %179
  ret void
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local void @ata_generic_reset(i32) #1

declare dso_local i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller*, %struct.ata_channel*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ata_udelay(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i64 @ata_sata_phy_reset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

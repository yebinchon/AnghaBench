; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_setup_autoneg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_phy.c_e1000_phy_setup_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_3__, %struct.e1000_phy_info }
%struct.TYPE_3__ = type { i32 }
%struct.e1000_phy_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [24 x i8] c"e1000_phy_setup_autoneg\00", align 1
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@ADVERTISE_1000_FULL = common dso_local global i32 0, align 4
@PHY_1000T_CTRL = common dso_local global i32 0, align 4
@NWAY_AR_100TX_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_100TX_HD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_FD_CAPS = common dso_local global i32 0, align 4
@NWAY_AR_10T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_HD_CAPS = common dso_local global i32 0, align 4
@CR_1000T_FD_CAPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"autoneg_advertised %x\0A\00", align 1
@ADVERTISE_10_HALF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Half duplex\0A\00", align 1
@ADVERTISE_10_FULL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Advertise 10mb Full duplex\0A\00", align 1
@ADVERTISE_100_HALF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Half duplex\0A\00", align 1
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Advertise 100mb Full duplex\0A\00", align 1
@ADVERTISE_1000_HALF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [46 x i8] c"Advertise 1000mb Half duplex request denied!\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Advertise 1000mb Full duplex\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@E1000_ERR_CONFIG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [25 x i8] c"Auto-Neg Advertising %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.1*
  %24 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %25 = call i64 %21(%struct.e1000_hw.1* %23, i32 %24, i32* %6)
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  store i64 %29, i64* %2, align 8
  br label %211

30:                                               ; preds = %1
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %40, align 8
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = bitcast %struct.e1000_hw* %42 to %struct.e1000_hw.1*
  %44 = load i32, i32* @PHY_1000T_CTRL, align 4
  %45 = call i64 %41(%struct.e1000_hw.1* %43, i32 %44, i32* %7)
  store i64 %45, i64* %5, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %2, align 8
  br label %211

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %30
  %52 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %53 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %58 = or i32 %56, %57
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* @CR_1000T_HD_CAPS, align 4
  %63 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  %72 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %73 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ADVERTISE_10_HALF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %51
  %79 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @NWAY_AR_10T_HD_CAPS, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %78, %51
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @ADVERTISE_10_FULL, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @NWAY_AR_10T_FD_CAPS, align 4
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %97 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ADVERTISE_100_HALF, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %104 = load i32, i32* @NWAY_AR_100TX_HD_CAPS, align 4
  %105 = load i32, i32* %6, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %109 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %116 = load i32, i32* @NWAY_AR_100TX_FD_CAPS, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %114, %107
  %120 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %121 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ADVERTISE_1000_HALF, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %119
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %137 = load i32, i32* @CR_1000T_FD_CAPS, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  switch i32 %144, label %172 [
    i32 130, label %145
    i32 129, label %152
    i32 128, label %158
    i32 131, label %166
  ]

145:                                              ; preds = %140
  %146 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %147 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %176

152:                                              ; preds = %140
  %153 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %154 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  br label %176

158:                                              ; preds = %140
  %159 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %160 = load i32, i32* %6, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %6, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %176

166:                                              ; preds = %140
  %167 = load i32, i32* @NWAY_AR_ASM_DIR, align 4
  %168 = load i32, i32* @NWAY_AR_PAUSE, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %176

172:                                              ; preds = %140
  %173 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  %174 = load i64, i64* @E1000_ERR_CONFIG, align 8
  %175 = sub nsw i64 0, %174
  store i64 %175, i64* %2, align 8
  br label %211

176:                                              ; preds = %166, %158, %152, %145
  %177 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %178 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %179, align 8
  %181 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %182 = bitcast %struct.e1000_hw* %181 to %struct.e1000_hw.0*
  %183 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i64 %180(%struct.e1000_hw.0* %182, i32 %183, i32 %184)
  store i64 %185, i64* %5, align 8
  %186 = load i64, i64* %5, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %176
  %189 = load i64, i64* %5, align 8
  store i64 %189, i64* %2, align 8
  br label %211

190:                                              ; preds = %176
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %191)
  %193 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %194 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @ADVERTISE_1000_FULL, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %190
  %200 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %201 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %202, align 8
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = bitcast %struct.e1000_hw* %204 to %struct.e1000_hw.0*
  %206 = load i32, i32* @PHY_1000T_CTRL, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i64 %203(%struct.e1000_hw.0* %205, i32 %206, i32 %207)
  store i64 %208, i64* %5, align 8
  br label %209

209:                                              ; preds = %199, %190
  %210 = load i64, i64* %5, align 8
  store i64 %210, i64* %2, align 8
  br label %211

211:                                              ; preds = %209, %188, %172, %48, %28
  %212 = load i64, i64* %2, align 8
  ret i64 %212
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

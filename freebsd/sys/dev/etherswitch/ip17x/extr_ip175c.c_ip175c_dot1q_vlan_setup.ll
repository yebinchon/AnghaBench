; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_dot1q_vlan_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175c.c_ip175c_dot1q_vlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i32, i32, i32, i32, i32*, i32, %struct.ip17x_vlan* }
%struct.ip17x_vlan = type { i32, i32 }

@IP17X_MAX_VLANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"cpuport != 5 not supported for IP175C\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"numports != 6 not supported for IP175C\00", align 1
@IP175X_CPU_PORT = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*)* @ip175c_dot1q_vlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175c_dot1q_vlan_setup(%struct.ip17x_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip17x_softc*, align 8
  %4 = alloca %struct.ip17x_vlan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %3, align 8
  %11 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 5
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 6
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IP175X_CPU_PORT, align 4
  %31 = shl i32 1, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %29, %32
  %34 = shl i32 %33, 11
  store i32 %34, i32* %5, align 4
  %35 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IP175X_CPU_PORT, align 4
  %39 = shl i32 1, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %37, %40
  %42 = shl i32 %41, 6
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IP175X_CPU_PORT, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %1
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, 2
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %1
  %56 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IP175X_CPU_PORT, align 4
  %60 = shl i32 1, %59
  %61 = and i32 %58, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %55
  %67 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %68 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i64 @ip17x_writephy(i32 %69, i32 29, i32 23, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

74:                                               ; preds = %66
  %75 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ip17x_updatephy(i32 %77, i32 30, i32 9, i32 112, i32 0)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

81:                                               ; preds = %74
  %82 = mul nuw i64 4, %12
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memset(i32* %14, i32 0, i32 %83)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %114, %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %85
  %90 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %90, i32 0, i32 6
  %92 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %92, i64 %94
  store %struct.ip17x_vlan* %95, %struct.ip17x_vlan** %4, align 8
  %96 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %4, align 8
  %97 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %89
  br label %114

103:                                              ; preds = %89
  %104 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %4, align 8
  %105 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %4, align 8
  %108 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* @ETHERSWITCH_VID_MASK, align 8
  %112 = and i64 %110, %111
  %113 = getelementptr inbounds i32, i32* %14, i64 %112
  store i32 %106, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %102
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %85

117:                                              ; preds = %85
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %118

118:                                              ; preds = %148, %117
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %121 = sdiv i32 %120, 2
  %122 = icmp sle i32 %119, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %118
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %14, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 63
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %9, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %14, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 63
  %136 = shl i32 %135, 8
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %140 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %5, align 4
  %144 = call i64 @ip17x_writephy(i32 %141, i32 30, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %123
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

147:                                              ; preds = %123
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %118

151:                                              ; preds = %118
  store i32 0, i32* %8, align 4
  br label %152

152:                                              ; preds = %195, %151
  %153 = load i32, i32* %8, align 4
  %154 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %155 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %198

158:                                              ; preds = %152
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @IP175X_CPU_PORT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %158
  %163 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %164 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %167 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @ip17x_writephy(i32 %165, i32 29, i32 30, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %162
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

176:                                              ; preds = %162
  br label %194

177:                                              ; preds = %158
  %178 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %179 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = add nsw i32 24, %181
  %183 = load %struct.ip17x_softc*, %struct.ip17x_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @ip17x_writephy(i32 %180, i32 29, i32 %182, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

193:                                              ; preds = %177
  br label %194

194:                                              ; preds = %193, %176
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %8, align 4
  br label %152

198:                                              ; preds = %152
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %199

199:                                              ; preds = %198, %192, %175, %146, %80, %73
  %200 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %200)
  %201 = load i32, i32* %2, align 4
  ret i32 %201
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i64 @ip17x_writephy(i32, i32, i32, i32) #2

declare dso_local i64 @ip17x_updatephy(i32, i32, i32, i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

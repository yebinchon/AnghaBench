; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x_vlans.c_ip17x_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip17x_vlans.c_ip17x_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.ip17x_softc = type { i64, i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 (%struct.ip17x_softc.0*)* }
%struct.ip17x_softc.0 = type opaque
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IP175C = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@IP175C_LAST_VLAN = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip17x_setvgroup(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.ip17x_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ip17x_softc* @device_get_softc(i32 %9)
  store %struct.ip17x_softc* %10, %struct.ip17x_softc** %6, align 8
  %11 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %12 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %200

17:                                               ; preds = %2
  %18 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %19 = load i32, i32* @IP175C, align 4
  %20 = call i64 @IP17X_IS_SWITCH(%struct.ip17x_softc* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @IP175C_LAST_VLAN, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %200

32:                                               ; preds = %22, %17
  %33 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %34 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %143

38:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %84, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %42 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %87

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %83

52:                                               ; preds = %46
  %53 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %54 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %53, i32 0, i32 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %52
  %65 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %66 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %65, i32 0, i32 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = load i32, i32* @EINVAL, align 4
  store i32 %82, i32* %3, align 4
  br label %200

83:                                               ; preds = %64, %52, %46
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %39

87:                                               ; preds = %39
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %94 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %93, i32 0, i32 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %92, i32* %101, align 4
  %102 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %103 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %102, i32 0, i32 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %130

113:                                              ; preds = %87
  %114 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %115 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %114, i32 0, i32 4
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %124 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32 (%struct.ip17x_softc.0*)*, i32 (%struct.ip17x_softc.0*)** %125, align 8
  %127 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %128 = bitcast %struct.ip17x_softc* %127 to %struct.ip17x_softc.0*
  %129 = call i32 %126(%struct.ip17x_softc.0* %128)
  store i32 %129, i32* %3, align 4
  br label %200

130:                                              ; preds = %87
  %131 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %132 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %133 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %132, i32 0, i32 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %131
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %130, %32
  %144 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %145 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %144, i32 0, i32 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %145, align 8
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  store i32 0, i32* %152, align 4
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %189, %143
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %156 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp slt i32 %154, %157
  br i1 %158, label %159, label %192

159:                                              ; preds = %153
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = shl i32 1, %163
  %165 = and i32 %162, %164
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  br label %189

168:                                              ; preds = %159
  %169 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %170 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = shl i32 1, %176
  %178 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %179 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %178, i32 0, i32 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %177
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %168, %167
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %153

192:                                              ; preds = %153
  %193 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %194 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32 (%struct.ip17x_softc.0*)*, i32 (%struct.ip17x_softc.0*)** %195, align 8
  %197 = load %struct.ip17x_softc*, %struct.ip17x_softc** %6, align 8
  %198 = bitcast %struct.ip17x_softc* %197 to %struct.ip17x_softc.0*
  %199 = call i32 %196(%struct.ip17x_softc.0* %198)
  store i32 %199, i32* %3, align 4
  br label %200

200:                                              ; preds = %192, %113, %81, %30, %15
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local %struct.ip17x_softc* @device_get_softc(i32) #1

declare dso_local i64 @IP17X_IS_SWITCH(%struct.ip17x_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

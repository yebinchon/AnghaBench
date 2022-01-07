; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_setvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.e6060sw_softc = type { i64, i64 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@CORE_REGISTER = common dso_local global i64 0, align 8
@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @e6060sw_setvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_setvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.e6060sw_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.e6060sw_softc* @device_get_softc(i32 %10)
  store %struct.e6060sw_softc* %11, %struct.e6060sw_softc** %6, align 8
  %12 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %13 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  %20 = load i64, i64* @CORE_REGISTER, align 8
  %21 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %22 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @PORT_VLAN_MAP, align 4
  %30 = call i32 @MDIO_READREG(i32 %19, i64 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, -64
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @device_get_parent(i32 %38)
  %40 = load i64, i64* @CORE_REGISTER, align 8
  %41 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %42 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load i32, i32* @PORT_VLAN_MAP, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @MDIO_WRITEREG(i32 %39, i64 %48, i32 %49, i32 %50)
  br label %153

52:                                               ; preds = %2
  %53 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %54 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %152

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %154

64:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %141, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 6
  br i1 %67, label %68, label %144

68:                                               ; preds = %65
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %71, %74
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %68
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = mul nsw i32 %84, 4
  %86 = shl i32 13, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %96

89:                                               ; preds = %80
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 4
  %92 = mul nsw i32 %91, 4
  %93 = shl i32 13, %92
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %89, %83
  br label %140

97:                                               ; preds = %68
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = shl i32 1, %101
  %103 = and i32 %100, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %122

105:                                              ; preds = %97
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %109, 4
  %111 = shl i32 14, %110
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %121

114:                                              ; preds = %105
  %115 = load i32, i32* %9, align 4
  %116 = sub nsw i32 %115, 4
  %117 = mul nsw i32 %116, 4
  %118 = shl i32 14, %117
  %119 = load i32, i32* %8, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %114, %108
  br label %139

122:                                              ; preds = %97
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 4
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = mul nsw i32 %126, 4
  %128 = shl i32 3, %127
  %129 = load i32, i32* %7, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %7, align 4
  br label %138

131:                                              ; preds = %122
  %132 = load i32, i32* %9, align 4
  %133 = sub nsw i32 %132, 4
  %134 = mul nsw i32 %133, 4
  %135 = shl i32 3, %134
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %131, %125
  br label %139

139:                                              ; preds = %138, %121
  br label %140

140:                                              ; preds = %139, %96
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %65

144:                                              ; preds = %65
  %145 = load i32, i32* %4, align 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @e6060sw_set_vtu(i32 %145, i64 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %144, %52
  br label %153

153:                                              ; preds = %152, %17
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %153, %63
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_READREG(i32, i64, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @MDIO_WRITEREG(i32, i64, i32, i32) #1

declare dso_local i32 @e6060sw_set_vtu(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

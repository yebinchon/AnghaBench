; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_getvgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/e6000sw/extr_e6060sw.c_e6060sw_getvgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.e6060sw_softc = type { i64, i32 }

@ETHERSWITCH_VLAN_PORT = common dso_local global i64 0, align 8
@ETHERSWITCH_VID_VALID = common dso_local global i8* null, align 8
@CORE_REGISTER = common dso_local global i32 0, align 4
@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@ETHERSWITCH_VLAN_DOT1Q = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*)* @e6060sw_getvgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e6060sw_getvgroup(i32 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.e6060sw_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.e6060sw_softc* @device_get_softc(i32 %12)
  store %struct.e6060sw_softc* %13, %struct.e6060sw_softc** %6, align 8
  %14 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %15 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ETHERSWITCH_VLAN_PORT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = load i32, i32* @CORE_REGISTER, align 4
  %34 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %35 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %33, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %37, %40
  %42 = load i32, i32* @PORT_VLAN_MAP, align 4
  %43 = call i32 @MDIO_READREG(i32 %32, i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 63
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  br label %184

55:                                               ; preds = %2
  %56 = load %struct.e6060sw_softc*, %struct.e6060sw_softc** %6, align 8
  %57 = getelementptr inbounds %struct.e6060sw_softc, %struct.e6060sw_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @ETHERSWITCH_VLAN_DOT1Q, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %180

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %185

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = call i32 @e6060sw_read_vtu(i32 %68, i64 %72, i32* %7, i32* %8)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %179

76:                                               ; preds = %67
  %77 = load i8*, i8** @ETHERSWITCH_VID_VALID, align 8
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  store i32 0, i32* %89, align 4
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %129, %76
  %91 = load i32, i32* %10, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = mul nsw i32 %95, 4
  %97 = ashr i32 %94, %96
  %98 = and i32 %97, 3
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %117

104:                                              ; preds = %101, %93
  %105 = load i32, i32* %10, align 4
  %106 = shl i32 1, %105
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* %10, align 4
  %112 = shl i32 1, %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %128

117:                                              ; preds = %101
  %118 = load i32, i32* %11, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = load i32, i32* %10, align 4
  %122 = shl i32 1, %121
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %120, %117
  br label %128

128:                                              ; preds = %127, %104
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %90

132:                                              ; preds = %90
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %175, %132
  %134 = load i32, i32* %10, align 4
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %136, label %178

136:                                              ; preds = %133
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 %138, 4
  %140 = ashr i32 %137, %139
  %141 = and i32 %140, 3
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %11, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %162

147:                                              ; preds = %144, %136
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 4
  %150 = shl i32 1, %149
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 4
  %157 = shl i32 1, %156
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %174

162:                                              ; preds = %144
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = add nsw i32 %166, 4
  %168 = shl i32 1, %167
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  br label %173

173:                                              ; preds = %165, %162
  br label %174

174:                                              ; preds = %173, %147
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %10, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %10, align 4
  br label %133

178:                                              ; preds = %133
  br label %179

179:                                              ; preds = %178, %67
  br label %183

180:                                              ; preds = %55
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %179
  br label %184

184:                                              ; preds = %183, %19
  store i32 0, i32* %3, align 4
  br label %185

185:                                              ; preds = %184, %66
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.e6060sw_softc* @device_get_softc(i32) #1

declare dso_local i32 @MDIO_READREG(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @e6060sw_read_vtu(i32, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

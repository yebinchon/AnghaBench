; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175d.c_ip175d_hw_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/ip17x/extr_ip175d.c_ip175d_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip17x_softc = type { i64, i32, i32, i32, i32*, i32, %struct.ip17x_vlan* }
%struct.ip17x_vlan = type { i32, i32 }

@IP17X_MAX_VLANS = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_VALID = common dso_local global i32 0, align 4
@ETHERSWITCH_VID_MASK = common dso_local global i32 0, align 4
@MII_NPHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip17x_softc*)* @ip175d_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip175d_hw_setup(%struct.ip17x_softc* %0) #0 {
  %2 = alloca %struct.ip17x_softc*, align 8
  %3 = alloca %struct.ip17x_vlan*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ip17x_softc* %0, %struct.ip17x_softc** %2, align 8
  %11 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %137, %1
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %140

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %14, i64 %27
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %17, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %20, i64 %33
  store i32 0, i32* %34, align 4
  %35 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %35, i32 0, i32 6
  %37 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %37, i64 %39
  store %struct.ip17x_vlan* %40, %struct.ip17x_vlan** %3, align 8
  %41 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %3, align 8
  %42 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ETHERSWITCH_VID_VALID, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %25
  %48 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %49 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %47, %25
  %53 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 14, %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  %60 = call i32 @ip17x_writephy(i32 %55, i32 22, i32 %57, i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %14, i64 %62
  store i32 63, i32* %63, align 4
  br label %137

64:                                               ; preds = %47
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %3, align 8
  %70 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %14, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 14, %78
  %80 = load %struct.ip17x_vlan*, %struct.ip17x_vlan** %3, align 8
  %81 = getelementptr inbounds %struct.ip17x_vlan, %struct.ip17x_vlan* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ETHERSWITCH_VID_MASK, align 4
  %84 = and i32 %82, %83
  %85 = call i32 @ip17x_writephy(i32 %77, i32 22, i32 %79, i32 %84)
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %133, %64
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @MII_NPHY, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %136

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %14, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %133

100:                                              ; preds = %90
  %101 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %102 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = shl i32 1, %104
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load i32, i32* %10, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %17, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %108, %100
  %117 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = shl i32 1, %120
  %122 = and i32 %119, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %116
  %125 = load i32, i32* %10, align 4
  %126 = shl i32 1, %125
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %20, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %116
  br label %133

133:                                              ; preds = %132, %99
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %86

136:                                              ; preds = %86
  br label %137

137:                                              ; preds = %136, %52
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %21

140:                                              ; preds = %21
  store i32 0, i32* %9, align 4
  br label %141

141:                                              ; preds = %203, %140
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @IP17X_MAX_VLANS, align 4
  %144 = sdiv i32 %143, 2
  %145 = icmp slt i32 %142, %144
  br i1 %145, label %146, label %206

146:                                              ; preds = %141
  %147 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 2, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %14, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %9, align 4
  %157 = mul nsw i32 2, %156
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %14, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = shl i32 %161, 8
  %163 = or i32 %155, %162
  %164 = call i32 @ip17x_writephy(i32 %149, i32 23, i32 %150, i32 %163)
  %165 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %166 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, 8
  %170 = load i32, i32* %9, align 4
  %171 = mul nsw i32 2, %170
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %17, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 2, %175
  %177 = add nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %17, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = shl i32 %180, 8
  %182 = or i32 %174, %181
  %183 = call i32 @ip17x_writephy(i32 %167, i32 23, i32 %169, i32 %182)
  %184 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %185 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %187, 16
  %189 = load i32, i32* %9, align 4
  %190 = mul nsw i32 2, %189
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %20, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %9, align 4
  %195 = mul nsw i32 2, %194
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %20, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = shl i32 %199, 8
  %201 = or i32 %193, %200
  %202 = call i32 @ip17x_writephy(i32 %186, i32 23, i32 %188, i32 %201)
  br label %203

203:                                              ; preds = %146
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %141

206:                                              ; preds = %141
  %207 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %208 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @ip17x_writephy(i32 %209, i32 22, i32 10, i32 %210)
  store i32 0, i32* %9, align 4
  br label %212

212:                                              ; preds = %232, %206
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %215 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %235

218:                                              ; preds = %212
  %219 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %220 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 4, %222
  %224 = load %struct.ip17x_softc*, %struct.ip17x_softc** %2, align 8
  %225 = getelementptr inbounds %struct.ip17x_softc, %struct.ip17x_softc* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @ip17x_writephy(i32 %221, i32 22, i32 %223, i32 %230)
  br label %232

232:                                              ; preds = %218
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %212

235:                                              ; preds = %212
  %236 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %236)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ip17x_writephy(i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

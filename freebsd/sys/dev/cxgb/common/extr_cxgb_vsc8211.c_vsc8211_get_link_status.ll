; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_vsc8211_get_link_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_vsc8211_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@PHY_LINK_UP = common dso_local global i32 0, align 4
@PHY_LINK_DOWN = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@VSC8211_AUX_CTRL_STAT = common dso_local global i32 0, align 4
@F_ACSR_DUPLEX = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @vsc8211_get_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8211_get_link_status(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cphy*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.cphy*, %struct.cphy** %7, align 8
  %21 = load i32, i32* @MII_BMCR, align 4
  %22 = call i32 @mdio_read(%struct.cphy* %20, i32 0, i32 %21, i32* %12)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  %26 = load %struct.cphy*, %struct.cphy** %7, align 8
  %27 = load i32, i32* @MII_BMSR, align 4
  %28 = call i32 @mdio_read(%struct.cphy* %26, i32 0, i32 %27, i32* %13)
  store i32 %28, i32* %16, align 4
  br label %29

29:                                               ; preds = %25, %5
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %16, align 4
  store i32 %33, i32* %6, align 4
  br label %220

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @BMSR_LSTATUS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load %struct.cphy*, %struct.cphy** %7, align 8
  %44 = load i32, i32* @MII_BMSR, align 4
  %45 = call i32 @mdio_read(%struct.cphy* %43, i32 0, i32 %44, i32* %13)
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %42, %37
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %16, align 4
  store i32 %50, i32* %6, align 4
  br label %220

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @BMSR_LSTATUS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @PHY_LINK_UP, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @PHY_LINK_DOWN, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %34
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @BMCR_ANENABLE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %96, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @BMCR_FULLDPLX, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @DUPLEX_FULL, align 4
  br label %77

75:                                               ; preds = %68
  %76 = load i32, i32* @DUPLEX_HALF, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @BMCR_SPEED1000, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* @SPEED_1000, align 4
  store i32 %84, i32* %17, align 4
  br label %95

85:                                               ; preds = %77
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @BMCR_SPEED100, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @SPEED_100, align 4
  store i32 %91, i32* %17, align 4
  br label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @SPEED_10, align 4
  store i32 %93, i32* %17, align 4
  br label %94

94:                                               ; preds = %92, %90
  br label %95

95:                                               ; preds = %94, %83
  br label %201

96:                                               ; preds = %63
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %200

101:                                              ; preds = %96
  %102 = load %struct.cphy*, %struct.cphy** %7, align 8
  %103 = load i32, i32* @VSC8211_AUX_CTRL_STAT, align 4
  %104 = call i32 @mdio_read(%struct.cphy* %102, i32 0, i32 %103, i32* %13)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %220

109:                                              ; preds = %101
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @F_ACSR_DUPLEX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @DUPLEX_FULL, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @DUPLEX_HALF, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @G_ACSR_SPEED(i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %17, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @SPEED_10, align 4
  store i32 %125, i32* %17, align 4
  br label %134

126:                                              ; preds = %118
  %127 = load i32, i32* %17, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %126
  %130 = load i32, i32* @SPEED_100, align 4
  store i32 %130, i32* %17, align 4
  br label %133

131:                                              ; preds = %126
  %132 = load i32, i32* @SPEED_1000, align 4
  store i32 %132, i32* %17, align 4
  br label %133

133:                                              ; preds = %131, %129
  br label %134

134:                                              ; preds = %133, %124
  %135 = load i32*, i32** %11, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %199

137:                                              ; preds = %134
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* @DUPLEX_FULL, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %199

141:                                              ; preds = %137
  %142 = load %struct.cphy*, %struct.cphy** %7, align 8
  %143 = load i32, i32* @MII_LPA, align 4
  %144 = call i32 @mdio_read(%struct.cphy* %142, i32 0, i32 %143, i32* %14)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %141
  %148 = load %struct.cphy*, %struct.cphy** %7, align 8
  %149 = load i32, i32* @MII_ADVERTISE, align 4
  %150 = call i32 @mdio_read(%struct.cphy* %148, i32 0, i32 %149, i32* %15)
  store i32 %150, i32* %16, align 4
  br label %151

151:                                              ; preds = %147, %141
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32, i32* %16, align 4
  store i32 %155, i32* %6, align 4
  br label %220

156:                                              ; preds = %151
  %157 = load i32, i32* %14, align 4
  %158 = load i32, i32* %15, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* @PAUSE_RX, align 4
  %165 = load i32, i32* @PAUSE_TX, align 4
  %166 = or i32 %164, %165
  store i32 %166, i32* %19, align 4
  br label %198

167:                                              ; preds = %156
  %168 = load i32, i32* %14, align 4
  %169 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = load i32, i32* @PAUSE_TX, align 4
  store i32 %183, i32* %19, align 4
  br label %197

184:                                              ; preds = %177, %172, %167
  %185 = load i32, i32* %14, align 4
  %186 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %184
  %190 = load i32, i32* %15, align 4
  %191 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %189
  %195 = load i32, i32* @PAUSE_RX, align 4
  store i32 %195, i32* %19, align 4
  br label %196

196:                                              ; preds = %194, %189, %184
  br label %197

197:                                              ; preds = %196, %182
  br label %198

198:                                              ; preds = %197, %163
  br label %199

199:                                              ; preds = %198, %137, %134
  br label %200

200:                                              ; preds = %199, %96
  br label %201

201:                                              ; preds = %200, %95
  %202 = load i32*, i32** %9, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* %17, align 4
  %206 = load i32*, i32** %9, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32*, i32** %10, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %18, align 4
  %212 = load i32*, i32** %10, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %11, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %19, align 4
  %218 = load i32*, i32** %11, align 8
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  store i32 0, i32* %6, align 4
  br label %220

220:                                              ; preds = %219, %154, %107, %49, %32
  %221 = load i32, i32* %6, align 4
  ret i32 %221
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i32 @G_ACSR_SPEED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

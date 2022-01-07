; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_vsc8211_get_link_status_fiber.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/common/extr_cxgb_vsc8211.c_vsc8211_get_link_status_fiber.c"
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
@MII_LPA = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_1000XFULL = common dso_local global i32 0, align 4
@ADVERTISE_1000XHALF = common dso_local global i32 0, align 4
@ADVERTISE_1000XPAUSE = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@ADVERTISE_1000XPSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32*, i32*, i32*, i32*)* @vsc8211_get_link_status_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8211_get_link_status_fiber(%struct.cphy* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
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
  br label %205

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
  br label %205

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
  br label %186

96:                                               ; preds = %63
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %185

101:                                              ; preds = %96
  %102 = load %struct.cphy*, %struct.cphy** %7, align 8
  %103 = load i32, i32* @MII_LPA, align 4
  %104 = call i32 @mdio_read(%struct.cphy* %102, i32 0, i32 %103, i32* %14)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = load %struct.cphy*, %struct.cphy** %7, align 8
  %109 = load i32, i32* @MII_ADVERTISE, align 4
  %110 = call i32 @mdio_read(%struct.cphy* %108, i32 0, i32 %109, i32* %15)
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %107, %101
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  store i32 %115, i32* %6, align 4
  br label %205

116:                                              ; preds = %111
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @ADVERTISE_1000XFULL, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* @SPEED_1000, align 4
  store i32 %125, i32* %17, align 4
  br label %137

126:                                              ; preds = %116
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %14, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @ADVERTISE_1000XHALF, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* @DUPLEX_HALF, align 4
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* @SPEED_1000, align 4
  store i32 %135, i32* %17, align 4
  br label %136

136:                                              ; preds = %133, %126
  br label %137

137:                                              ; preds = %136, %123
  %138 = load i32*, i32** %11, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %184

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = load i32, i32* @DUPLEX_FULL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %184

144:                                              ; preds = %140
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* %15, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i32, i32* @PAUSE_RX, align 4
  %153 = load i32, i32* @PAUSE_TX, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %19, align 4
  br label %183

155:                                              ; preds = %144
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %14, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* @PAUSE_TX, align 4
  store i32 %168, i32* %19, align 4
  br label %182

169:                                              ; preds = %160, %155
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* @ADVERTISE_1000XPSE_ASYM, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %169
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* @ADVERTISE_1000XPAUSE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* @PAUSE_RX, align 4
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %179, %174, %169
  br label %182

182:                                              ; preds = %181, %167
  br label %183

183:                                              ; preds = %182, %151
  br label %184

184:                                              ; preds = %183, %140, %137
  br label %185

185:                                              ; preds = %184, %96
  br label %186

186:                                              ; preds = %185, %95
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %17, align 4
  %191 = load i32*, i32** %9, align 8
  store i32 %190, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %10, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %18, align 4
  %197 = load i32*, i32** %10, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %11, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %19, align 4
  %203 = load i32*, i32** %11, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  store i32 0, i32* %6, align 4
  br label %205

205:                                              ; preds = %204, %114, %49, %32
  %206 = load i32, i32* %6, align 4
  ret i32 %206
}

declare dso_local i32 @mdio_read(%struct.cphy*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

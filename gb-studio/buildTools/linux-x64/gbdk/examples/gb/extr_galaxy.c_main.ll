; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_galaxy.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_galaxy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i8* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }

@DISPLAY_OFF = common dso_local global i32 0, align 4
@LCDC_REG = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i64 0, align 8
@doorstate = common dso_local global i64 0, align 8
@OBP1_REG = common dso_local global i32 0, align 4
@OBP0_REG = common dso_local global i32 0, align 4
@BGP_REG = common dso_local global i32 0, align 4
@std_data = common dso_local global i32 0, align 4
@bkg_data = common dso_local global i32 0, align 4
@bkg_tiles = common dso_local global i32 0, align 4
@bposx = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@SCX_REG = common dso_local global i64 0, align 8
@bposy = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@SCY_REG = common dso_local global i64 0, align 8
@bspx = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@bspy = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@frame_data = common dso_local global i32 0, align 4
@frame_tiles = common dso_local global i32 0, align 4
@door1_tiles = common dso_local global i32 0, align 4
@MAXWNDPOSX = common dso_local global i8* null, align 8
@wposx = common dso_local global %struct.TYPE_25__ zeroinitializer, align 8
@WX_REG = common dso_local global i8* null, align 8
@MAXWNDPOSY = common dso_local global i8* null, align 8
@wposy = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@WY_REG = common dso_local global i8* null, align 8
@wspx = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@wspy = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@earth_data = common dso_local global i32 0, align 4
@sframe = common dso_local global i64 0, align 8
@sposx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@sposy = common dso_local global %struct.TYPE_28__ zeroinitializer, align 4
@sspx = common dso_local global %struct.TYPE_27__ zeroinitializer, align 4
@sspy = common dso_local global %struct.TYPE_26__ zeroinitializer, align 4
@DISPLAY_ON = common dso_local global i32 0, align 4
@time = common dso_local global i32 0, align 4
@J_B = common dso_local global i32 0, align 4
@J_UP = common dso_local global i32 0, align 4
@J_DOWN = common dso_local global i32 0, align 4
@J_LEFT = common dso_local global i32 0, align 4
@J_RIGHT = common dso_local global i32 0, align 4
@J_A = common dso_local global i32 0, align 4
@J_SELECT = common dso_local global i32 0, align 4
@STARTFADE = common dso_local global i32 0, align 4
@color = common dso_local global i32 0, align 4
@J_START = common dso_local global i32 0, align 4
@OPENING = common dso_local global i64 0, align 8
@doorpos = common dso_local global i64 0, align 8
@OPENED = common dso_local global i64 0, align 8
@CLOSING = common dso_local global i64 0, align 8
@NBDFRAMES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @disable_interrupts()
  %4 = load i32, i32* @DISPLAY_OFF, align 4
  store i32 103, i32* @LCDC_REG, align 4
  %5 = load i64, i64* @CLOSED, align 8
  store i64 %5, i64* @doorstate, align 8
  store i32 228, i32* @OBP1_REG, align 4
  store i32 228, i32* @OBP0_REG, align 4
  store i32 228, i32* @BGP_REG, align 4
  %6 = load i32, i32* @std_data, align 4
  %7 = call i32 @set_bkg_data(i32 252, i32 4, i32 %6)
  %8 = load i32, i32* @bkg_data, align 4
  %9 = call i32 @set_bkg_data(i32 0, i32 45, i32 %8)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %26, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @bkg_tiles, align 4
  %21 = call i32 @set_bkg_tiles(i32 %18, i32 %19, i32 8, i32 8, i32 %20)
  br label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 8
  store i32 %24, i32* %2, align 4
  br label %14

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %1, align 4
  %28 = add nsw i32 %27, 8
  store i32 %28, i32* %1, align 4
  br label %10

29:                                               ; preds = %10
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @bposx, i32 0, i32 0), align 8
  store i64 0, i64* @SCX_REG, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @bposy, i32 0, i32 0), align 8
  store i64 0, i64* @SCY_REG, align 8
  store i32 65280, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @bspx, i32 0, i32 0), align 4
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bspy, i32 0, i32 0), align 4
  %30 = load i32, i32* @frame_data, align 4
  %31 = call i32 @set_win_data(i32 128, i32 33, i32 %30)
  %32 = load i32, i32* @frame_tiles, align 4
  %33 = call i32 @set_win_tiles(i32 0, i32 0, i32 16, i32 10, i32 %32)
  %34 = load i32, i32* @door1_tiles, align 4
  %35 = call i32 @set_win_tiles(i32 2, i32 2, i32 12, i32 6, i32 %34)
  %36 = load i8*, i8** @MAXWNDPOSX, align 8
  store i8* %36, i8** getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @wposx, i32 0, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_25__, %struct.TYPE_25__* @wposx, i32 0, i32 0, i32 0), align 8
  %37 = load i8*, i8** @MAXWNDPOSX, align 8
  store i8* %37, i8** @WX_REG, align 8
  %38 = load i8*, i8** @MAXWNDPOSY, align 8
  store i8* %38, i8** getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @wposy, i32 0, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_24__, %struct.TYPE_24__* @wposy, i32 0, i32 0, i32 0), align 8
  %39 = load i8*, i8** @MAXWNDPOSY, align 8
  store i8* %39, i8** @WY_REG, align 8
  store i32 65408, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @wspx, i32 0, i32 0), align 4
  store i32 65472, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @wspy, i32 0, i32 0), align 4
  %40 = load i32, i32* @earth_data, align 4
  %41 = call i32 @set_sprite_data(i32 0, i32 28, i32 %40)
  %42 = call i32 @set_sprite_prop(i32 0, i32 0)
  %43 = call i32 @set_sprite_prop(i32 1, i32 0)
  store i64 0, i64* @sframe, align 8
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @sposx, i32 0, i32 0), align 4
  store i32 4096, i32* getelementptr inbounds (%struct.TYPE_28__, %struct.TYPE_28__* @sposy, i32 0, i32 0), align 4
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sspx, i32 0, i32 0), align 4
  store i32 64, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sspy, i32 0, i32 0), align 4
  %44 = call i32 (...) @tile_sprite()
  %45 = call i32 (...) @place_sprite()
  %46 = load i32, i32* @DISPLAY_ON, align 4
  %47 = call i32 (...) @enable_interrupts()
  br label %48

48:                                               ; preds = %29, %201
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %54, %48
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = call i32 (...) @wait_vbl_done()
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %1, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %1, align 4
  br label %49

57:                                               ; preds = %49
  %58 = load i32, i32* @time, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @time, align 4
  %60 = call i32 (...) @fade()
  %61 = call i32 (...) @door()
  %62 = call i32 (...) @scroll()
  %63 = call i32 (...) @animate_sprite()
  %64 = call i32 (...) @joypad()
  store i32 %64, i32* %1, align 4
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @J_B, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %102

69:                                               ; preds = %57
  %70 = load i32, i32* %1, align 4
  %71 = load i32, i32* @J_UP, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bspy, i32 0, i32 0), align 4
  %76 = sub nsw i32 %75, 16
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bspy, i32 0, i32 0), align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* @J_DOWN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bspy, i32 0, i32 0), align 4
  %84 = add nsw i32 %83, 16
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @bspy, i32 0, i32 0), align 4
  br label %85

85:                                               ; preds = %82, %77
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* @J_LEFT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @bspx, i32 0, i32 0), align 4
  %92 = sub nsw i32 %91, 16
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @bspx, i32 0, i32 0), align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* @J_RIGHT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @bspx, i32 0, i32 0), align 4
  %100 = add nsw i32 %99, 16
  store i32 %100, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @bspx, i32 0, i32 0), align 4
  br label %101

101:                                              ; preds = %98, %93
  br label %201

102:                                              ; preds = %57
  %103 = load i32, i32* %1, align 4
  %104 = load i32, i32* @J_A, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %140

107:                                              ; preds = %102
  %108 = load i32, i32* %1, align 4
  %109 = load i32, i32* @J_UP, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @wspy, i32 0, i32 0), align 4
  %114 = sub nsw i32 %113, 16
  store i32 %114, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @wspy, i32 0, i32 0), align 4
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* @J_DOWN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @wspy, i32 0, i32 0), align 4
  %122 = add nsw i32 %121, 16
  store i32 %122, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @wspy, i32 0, i32 0), align 4
  br label %123

123:                                              ; preds = %120, %115
  %124 = load i32, i32* %1, align 4
  %125 = load i32, i32* @J_LEFT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @wspx, i32 0, i32 0), align 4
  %130 = sub nsw i32 %129, 16
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @wspx, i32 0, i32 0), align 4
  br label %131

131:                                              ; preds = %128, %123
  %132 = load i32, i32* %1, align 4
  %133 = load i32, i32* @J_RIGHT, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @wspx, i32 0, i32 0), align 4
  %138 = add nsw i32 %137, 16
  store i32 %138, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @wspx, i32 0, i32 0), align 4
  br label %139

139:                                              ; preds = %136, %131
  br label %200

140:                                              ; preds = %102
  %141 = load i32, i32* %1, align 4
  %142 = load i32, i32* @J_SELECT, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @STARTFADE, align 4
  store i32 %146, i32* @color, align 4
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i32, i32* %1, align 4
  %149 = load i32, i32* @J_START, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %147
  %153 = load i64, i64* @doorstate, align 8
  %154 = load i64, i64* @CLOSED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i64, i64* @OPENING, align 8
  store i64 %157, i64* @doorstate, align 8
  store i64 0, i64* @doorpos, align 8
  br label %166

158:                                              ; preds = %152
  %159 = load i64, i64* @doorstate, align 8
  %160 = load i64, i64* @OPENED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i64, i64* @CLOSING, align 8
  store i64 %163, i64* @doorstate, align 8
  %164 = load i64, i64* @NBDFRAMES, align 8
  store i64 %164, i64* @doorpos, align 8
  br label %165

165:                                              ; preds = %162, %158
  br label %166

166:                                              ; preds = %165, %156
  br label %167

167:                                              ; preds = %166, %147
  %168 = load i32, i32* %1, align 4
  %169 = load i32, i32* @J_UP, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sspy, i32 0, i32 0), align 4
  %174 = sub nsw i32 %173, 16
  store i32 %174, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sspy, i32 0, i32 0), align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %1, align 4
  %177 = load i32, i32* @J_DOWN, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sspy, i32 0, i32 0), align 4
  %182 = add nsw i32 %181, 16
  store i32 %182, i32* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @sspy, i32 0, i32 0), align 4
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i32, i32* %1, align 4
  %185 = load i32, i32* @J_LEFT, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sspx, i32 0, i32 0), align 4
  %190 = sub nsw i32 %189, 16
  store i32 %190, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sspx, i32 0, i32 0), align 4
  br label %191

191:                                              ; preds = %188, %183
  %192 = load i32, i32* %1, align 4
  %193 = load i32, i32* @J_RIGHT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %191
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sspx, i32 0, i32 0), align 4
  %198 = add nsw i32 %197, 16
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @sspx, i32 0, i32 0), align 4
  br label %199

199:                                              ; preds = %196, %191
  br label %200

200:                                              ; preds = %199, %139
  br label %201

201:                                              ; preds = %200, %101
  br label %48
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @set_bkg_data(i32, i32, i32) #1

declare dso_local i32 @set_bkg_tiles(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_win_data(i32, i32, i32) #1

declare dso_local i32 @set_win_tiles(i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_sprite_data(i32, i32, i32) #1

declare dso_local i32 @set_sprite_prop(i32, i32) #1

declare dso_local i32 @tile_sprite(...) #1

declare dso_local i32 @place_sprite(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @wait_vbl_done(...) #1

declare dso_local i32 @fade(...) #1

declare dso_local i32 @door(...) #1

declare dso_local i32 @scroll(...) #1

declare dso_local i32 @animate_sprite(...) #1

declare dso_local i32 @joypad(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

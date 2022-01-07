; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_menu.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/extr_paint.c_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64 }

@NB_TOOLS = common dso_local global i64 0, align 8
@FIRST_TOOL = common dso_local global i64 0, align 8
@current_tool = common dso_local global i64 0, align 8
@FIRST_COLOR = common dso_local global i64 0, align 8
@current_color = common dso_local global i64 0, align 8
@FIRST_MODE = common dso_local global i64 0, align 8
@current_mode = common dso_local global i64 0, align 8
@current_cursor = common dso_local global i64 0, align 8
@ARROW = common dso_local global i64 0, align 8
@SHOW_SPRITES = common dso_local global i32 0, align 4
@J_UP = common dso_local global i64 0, align 8
@J_DOWN = common dso_local global i64 0, align 8
@J_LEFT = common dso_local global i64 0, align 8
@J_RIGHT = common dso_local global i64 0, align 8
@icons = common dso_local global %struct.TYPE_2__* null, align 8
@menu_cursor_pos = common dso_local global i64 0, align 8
@J_A = common dso_local global i64 0, align 8
@LAST_TOOL = common dso_local global i64 0, align 8
@UNSELECTED = common dso_local global i32 0, align 4
@SELECTED = common dso_local global i32 0, align 4
@LAST_COLOR = common dso_local global i64 0, align 8
@LAST_MODE = common dso_local global i64 0, align 8
@J_SELECT = common dso_local global i64 0, align 8
@HIDE_SPRITES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @menu() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 50, i64* %3, align 8
  store i64 0, i64* %1, align 8
  br label %5

5:                                                ; preds = %32, %0
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @NB_TOOLS, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %35

9:                                                ; preds = %5
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i64, i64* @FIRST_TOOL, align 8
  %13 = load i64, i64* @current_tool, align 8
  %14 = add i64 %12, %13
  %15 = icmp eq i64 %11, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @FIRST_COLOR, align 8
  %19 = load i64, i64* @current_color, align 8
  %20 = add nsw i64 %18, %19
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* @FIRST_MODE, align 8
  %25 = load i64, i64* @current_mode, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp eq i64 %23, %26
  br label %28

28:                                               ; preds = %22, %16, %9
  %29 = phi i1 [ true, %16 ], [ true, %9 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @set_icon(i64 %10, i32 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %1, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %1, align 8
  br label %5

35:                                               ; preds = %5
  %36 = load i64, i64* @current_cursor, align 8
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* @ARROW, align 8
  store i64 %37, i64* @current_cursor, align 8
  %38 = call i32 (...) @set_cursor()
  %39 = call i32 (...) @move_menu_cursor()
  %40 = load i32, i32* @SHOW_SPRITES, align 4
  %41 = call i32 (...) @waitpadup()
  br label %42

42:                                               ; preds = %205, %35
  %43 = call i32 (...) @wait_vbl_done()
  %44 = call i64 (...) @joypad()
  store i64 %44, i64* %2, align 8
  %45 = load i64, i64* %2, align 8
  %46 = load i64, i64* @J_UP, align 8
  %47 = load i64, i64* @J_DOWN, align 8
  %48 = or i64 %46, %47
  %49 = load i64, i64* @J_LEFT, align 8
  %50 = or i64 %48, %49
  %51 = load i64, i64* @J_RIGHT, align 8
  %52 = or i64 %50, %51
  %53 = and i64 %45, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %115

55:                                               ; preds = %42
  %56 = load i64, i64* %2, align 8
  %57 = load i64, i64* @J_UP, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %62 = load i64, i64* @menu_cursor_pos, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* @menu_cursor_pos, align 8
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i64, i64* %2, align 8
  %68 = load i64, i64* @J_DOWN, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %73 = load i64, i64* @menu_cursor_pos, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* @menu_cursor_pos, align 8
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i64, i64* %2, align 8
  %79 = load i64, i64* @J_LEFT, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %84 = load i64, i64* @menu_cursor_pos, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* @menu_cursor_pos, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i64, i64* %2, align 8
  %90 = load i64, i64* @J_RIGHT, align 8
  %91 = and i64 %89, %90
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %95 = load i64, i64* @menu_cursor_pos, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* @menu_cursor_pos, align 8
  br label %99

99:                                               ; preds = %93, %88
  %100 = call i32 (...) @move_menu_cursor()
  br label %101

101:                                              ; preds = %110, %99
  %102 = load i64, i64* %3, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i64, i64* %2, align 8
  %106 = call i64 (...) @joypad()
  %107 = icmp eq i64 %105, %106
  br label %108

108:                                              ; preds = %104, %101
  %109 = phi i1 [ false, %101 ], [ %107, %104 ]
  br i1 %109, label %110, label %114

110:                                              ; preds = %108
  %111 = call i32 (...) @wait_vbl_done()
  %112 = load i64, i64* %3, align 8
  %113 = add nsw i64 %112, -1
  store i64 %113, i64* %3, align 8
  br label %101

114:                                              ; preds = %108
  store i64 10, i64* %3, align 8
  br label %116

115:                                              ; preds = %42
  store i64 50, i64* %3, align 8
  br label %116

116:                                              ; preds = %115, %114
  %117 = load i64, i64* %2, align 8
  %118 = load i64, i64* @J_A, align 8
  %119 = and i64 %117, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %204

121:                                              ; preds = %116
  %122 = load i64, i64* @menu_cursor_pos, align 8
  %123 = load i64, i64* @LAST_TOOL, align 8
  %124 = icmp ule i64 %122, %123
  br i1 %124, label %125, label %143

125:                                              ; preds = %121
  %126 = load i64, i64* @menu_cursor_pos, align 8
  %127 = load i64, i64* @current_tool, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i64, i64* @current_tool, align 8
  %131 = load i32, i32* @UNSELECTED, align 4
  %132 = call i32 @change_icon(i64 %130, i32 %131)
  %133 = load i64, i64* @menu_cursor_pos, align 8
  store i64 %133, i64* @current_tool, align 8
  %134 = load i64, i64* @current_tool, align 8
  %135 = load i32, i32* @SELECTED, align 4
  %136 = call i32 @change_icon(i64 %134, i32 %135)
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @icons, align 8
  %138 = load i64, i64* @current_tool, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %4, align 8
  br label %142

142:                                              ; preds = %129, %125
  br label %203

143:                                              ; preds = %121
  %144 = load i64, i64* @menu_cursor_pos, align 8
  %145 = load i64, i64* @FIRST_COLOR, align 8
  %146 = icmp uge i64 %144, %145
  br i1 %146, label %147, label %172

147:                                              ; preds = %143
  %148 = load i64, i64* @menu_cursor_pos, align 8
  %149 = load i64, i64* @LAST_COLOR, align 8
  %150 = icmp ule i64 %148, %149
  br i1 %150, label %151, label %172

151:                                              ; preds = %147
  %152 = load i64, i64* @menu_cursor_pos, align 8
  %153 = load i64, i64* @FIRST_COLOR, align 8
  %154 = load i64, i64* @current_color, align 8
  %155 = add nsw i64 %153, %154
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %171

157:                                              ; preds = %151
  %158 = load i64, i64* @FIRST_COLOR, align 8
  %159 = load i64, i64* @current_color, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i32, i32* @UNSELECTED, align 4
  %162 = call i32 @change_icon(i64 %160, i32 %161)
  %163 = load i64, i64* @menu_cursor_pos, align 8
  %164 = load i64, i64* @FIRST_COLOR, align 8
  %165 = sub i64 %163, %164
  store i64 %165, i64* @current_color, align 8
  %166 = load i64, i64* @FIRST_COLOR, align 8
  %167 = load i64, i64* @current_color, align 8
  %168 = add nsw i64 %166, %167
  %169 = load i32, i32* @SELECTED, align 4
  %170 = call i32 @change_icon(i64 %168, i32 %169)
  br label %171

171:                                              ; preds = %157, %151
  br label %202

172:                                              ; preds = %147, %143
  %173 = load i64, i64* @menu_cursor_pos, align 8
  %174 = load i64, i64* @FIRST_MODE, align 8
  %175 = icmp uge i64 %173, %174
  br i1 %175, label %176, label %201

176:                                              ; preds = %172
  %177 = load i64, i64* @menu_cursor_pos, align 8
  %178 = load i64, i64* @LAST_MODE, align 8
  %179 = icmp ule i64 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load i64, i64* @menu_cursor_pos, align 8
  %182 = load i64, i64* @FIRST_MODE, align 8
  %183 = load i64, i64* @current_mode, align 8
  %184 = add nsw i64 %182, %183
  %185 = icmp ne i64 %181, %184
  br i1 %185, label %186, label %200

186:                                              ; preds = %180
  %187 = load i64, i64* @FIRST_MODE, align 8
  %188 = load i64, i64* @current_mode, align 8
  %189 = add nsw i64 %187, %188
  %190 = load i32, i32* @UNSELECTED, align 4
  %191 = call i32 @change_icon(i64 %189, i32 %190)
  %192 = load i64, i64* @menu_cursor_pos, align 8
  %193 = load i64, i64* @FIRST_MODE, align 8
  %194 = sub i64 %192, %193
  store i64 %194, i64* @current_mode, align 8
  %195 = load i64, i64* @FIRST_MODE, align 8
  %196 = load i64, i64* @current_mode, align 8
  %197 = add nsw i64 %195, %196
  %198 = load i32, i32* @SELECTED, align 4
  %199 = call i32 @change_icon(i64 %197, i32 %198)
  br label %200

200:                                              ; preds = %186, %180
  br label %201

201:                                              ; preds = %200, %176, %172
  br label %202

202:                                              ; preds = %201, %171
  br label %203

203:                                              ; preds = %202, %142
  br label %204

204:                                              ; preds = %203, %116
  br label %205

205:                                              ; preds = %204
  %206 = load i64, i64* %2, align 8
  %207 = load i64, i64* @J_SELECT, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %42, label %209

209:                                              ; preds = %205
  %210 = call i32 (...) @waitpadup()
  store i64 0, i64* %1, align 8
  br label %211

211:                                              ; preds = %218, %209
  %212 = load i64, i64* %1, align 8
  %213 = load i64, i64* @NB_TOOLS, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %211
  %216 = load i64, i64* %1, align 8
  %217 = call i32 @reset_icon(i64 %216)
  br label %218

218:                                              ; preds = %215
  %219 = load i64, i64* %1, align 8
  %220 = add nsw i64 %219, 1
  store i64 %220, i64* %1, align 8
  br label %211

221:                                              ; preds = %211
  %222 = load i32, i32* @HIDE_SPRITES, align 4
  %223 = load i64, i64* %4, align 8
  store i64 %223, i64* @current_cursor, align 8
  ret void
}

declare dso_local i32 @set_icon(i64, i32) #1

declare dso_local i32 @set_cursor(...) #1

declare dso_local i32 @move_menu_cursor(...) #1

declare dso_local i32 @waitpadup(...) #1

declare dso_local i32 @wait_vbl_done(...) #1

declare dso_local i64 @joypad(...) #1

declare dso_local i32 @change_icon(i64, i32) #1

declare dso_local i32 @reset_icon(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

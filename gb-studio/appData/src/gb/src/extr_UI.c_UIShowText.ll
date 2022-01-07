; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIShowText.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIShowText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@tmp_text_lines = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DATA_PTRS_BANK = common dso_local global i32 0, align 4
@string_bank_ptrs = common dso_local global i32* null, align 8
@bank_data_ptrs = common dso_local global i64* null, align 8
@POP_BANK = common dso_local global i32 0, align 4
@text_lines = common dso_local global i8* null, align 8
@script_variables = common dso_local global i32* null, align 8
@menu_layout = common dso_local global i64 0, align 8
@text_num_lines = common dso_local global i32 0, align 4
@MENU_LAYOUT_INITIAL_X = common dso_local global i32 0, align 4
@MENU_CLOSED_Y = common dso_local global i64 0, align 8
@text_in_speed = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@text_drawn = common dso_local global i32 0, align 4
@text_x = common dso_local global i64 0, align 8
@text_y = common dso_local global i64 0, align 8
@text_count = common dso_local global i64 0, align 8
@text_tile_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIShowText(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_3__, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [6 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %11 = load i8*, i8** @tmp_text_lines, align 8
  %12 = call i32 @strcpy(i8* %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @DATA_PTRS_BANK, align 4
  %14 = load i32*, i32** @string_bank_ptrs, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = call i32 @ReadBankedBankPtr(i32 %13, %struct.TYPE_3__* %3, i32* %16)
  %18 = load i64*, i64** @bank_data_ptrs, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %22, %24
  store i64 %25, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @PUSH_BANK(i64 %27)
  %29 = load i8*, i8** @tmp_text_lines, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @strcat(i8* %29, i64 %30)
  %32 = load i32, i32* @POP_BANK, align 4
  store i32 1, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %197, %1
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 81
  br i1 %35, label %36, label %200

36:                                               ; preds = %33
  %37 = load i8*, i8** @tmp_text_lines, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 36
  br i1 %43, label %44, label %184

44:                                               ; preds = %36
  %45 = load i8*, i8** @tmp_text_lines, align 8
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 3
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 36
  br i1 %52, label %53, label %73

53:                                               ; preds = %44
  %54 = load i8*, i8** @tmp_text_lines, align 8
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = sub nsw i32 %60, 48
  %62 = mul nsw i32 10, %61
  %63 = load i8*, i8** @tmp_text_lines, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 2
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = sub nsw i32 %69, 48
  %71 = add nsw i32 %62, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %5, align 8
  br label %125

73:                                               ; preds = %44
  %74 = load i8*, i8** @tmp_text_lines, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 36
  br i1 %81, label %82, label %112

82:                                               ; preds = %73
  %83 = load i8*, i8** @tmp_text_lines, align 8
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %83, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = sub nsw i32 %89, 48
  %91 = mul nsw i32 100, %90
  %92 = load i8*, i8** @tmp_text_lines, align 8
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 2
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %92, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = sub nsw i32 %98, 48
  %100 = mul nsw i32 10, %99
  %101 = add nsw i32 %91, %100
  %102 = load i8*, i8** @tmp_text_lines, align 8
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = sub nsw i32 %108, 48
  %110 = add nsw i32 %101, %109
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %5, align 8
  br label %124

112:                                              ; preds = %73
  %113 = load i8*, i8** @tmp_text_lines, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = load i8*, i8** @text_lines, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  store i8 %117, i8* %121, align 1
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %197

124:                                              ; preds = %82
  br label %125

125:                                              ; preds = %124, %53
  %126 = load i32*, i32** @script_variables, align 8
  %127 = load i64, i64* %5, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %10, align 4
  store i32 0, i32* %8, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load i8*, i8** @text_lines, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  store i8 48, i8* %136, align 1
  br label %174

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %141, %137
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  %143 = srem i32 %142, 10
  %144 = add nsw i32 48, %143
  %145 = trunc i32 %144 to i8
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %148
  store i8 %145, i8* %149, align 1
  %150 = load i32, i32* %10, align 4
  %151 = sdiv i32 %150, 10
  store i32 %151, i32* %10, align 4
  br label %138

152:                                              ; preds = %138
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %8, align 4
  br label %155

155:                                              ; preds = %158, %152
  %156 = load i32, i32* %8, align 4
  %157 = icmp ne i32 %156, 255
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = load i8*, i8** @text_lines, align 8
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  store i8 %162, i8* %166, align 1
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %8, align 4
  br label %155

171:                                              ; preds = %155
  %172 = load i32, i32* %9, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %9, align 4
  br label %174

174:                                              ; preds = %171, %132
  %175 = load i64, i64* %5, align 8
  %176 = icmp uge i64 %175, 100
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 4
  store i32 %179, i32* %7, align 4
  br label %183

180:                                              ; preds = %174
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 3
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %180, %177
  br label %194

184:                                              ; preds = %36
  %185 = load i8*, i8** @tmp_text_lines, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = load i8*, i8** @text_lines, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i8, i8* %190, i64 %192
  store i8 %189, i8* %193, align 1
  br label %194

194:                                              ; preds = %184, %183
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %194, %112
  %198 = load i32, i32* %7, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %7, align 4
  br label %33

200:                                              ; preds = %33
  %201 = load i64, i64* @menu_layout, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %222

203:                                              ; preds = %200
  %204 = load i8*, i8** @tmp_text_lines, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 0
  %206 = load i8, i8* %205, align 1
  %207 = sext i8 %206 to i32
  store i32 %207, i32* @text_num_lines, align 4
  %208 = load i32, i32* @text_num_lines, align 4
  %209 = call i32 @UIDrawFrame(i32 0, i32 0, i32 8, i32 %208)
  %210 = load i32, i32* @MENU_LAYOUT_INITIAL_X, align 4
  %211 = load i64, i64* @MENU_CLOSED_Y, align 8
  %212 = call i32 @UISetPos(i32 %210, i64 %211)
  %213 = load i32, i32* @MENU_LAYOUT_INITIAL_X, align 4
  %214 = load i64, i64* @MENU_CLOSED_Y, align 8
  %215 = load i32, i32* @text_num_lines, align 4
  %216 = add nsw i32 %215, 2
  %217 = shl i32 %216, 3
  %218 = sext i32 %217 to i64
  %219 = sub nsw i64 %214, %218
  %220 = load i32, i32* @text_in_speed, align 4
  %221 = call i32 @UIMoveTo(i32 %213, i64 %219, i32 %220)
  br label %239

222:                                              ; preds = %200
  %223 = load i8*, i8** @tmp_text_lines, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 0
  %225 = load i8, i8* %224, align 1
  %226 = call i32 @MIN(i8 signext %225, i32 4)
  store i32 %226, i32* @text_num_lines, align 4
  %227 = load i32, i32* @text_num_lines, align 4
  %228 = call i32 @UIDrawDialogueFrame(i32 %227)
  %229 = load i64, i64* @MENU_CLOSED_Y, align 8
  %230 = call i32 @UISetPos(i32 0, i64 %229)
  %231 = load i64, i64* @MENU_CLOSED_Y, align 8
  %232 = load i32, i32* @text_num_lines, align 4
  %233 = add nsw i32 %232, 2
  %234 = shl i32 %233, 3
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %231, %235
  %237 = load i32, i32* @text_in_speed, align 4
  %238 = call i32 @UIMoveTo(i32 0, i64 %236, i32 %237)
  br label %239

239:                                              ; preds = %222, %203
  %240 = load i32, i32* @FALSE, align 4
  store i32 %240, i32* @text_drawn, align 4
  store i64 0, i64* @text_x, align 8
  store i64 0, i64* @text_y, align 8
  store i64 0, i64* @text_count, align 8
  store i64 0, i64* @text_tile_count, align 8
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @ReadBankedBankPtr(i32, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @PUSH_BANK(i64) #1

declare dso_local i32 @strcat(i8*, i64) #1

declare dso_local i32 @UIDrawFrame(i32, i32, i32, i32) #1

declare dso_local i32 @UISetPos(i32, i64) #1

declare dso_local i32 @UIMoveTo(i32, i64, i32) #1

declare dso_local i32 @MIN(i8 signext, i32) #1

declare dso_local i32 @UIDrawDialogueFrame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

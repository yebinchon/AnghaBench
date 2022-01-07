; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIDrawTextBufferChar.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_UI.c_UIDrawTextBufferChar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_lines = common dso_local global i32* null, align 8
@text_wait = common dso_local global i32 0, align 4
@text_count = common dso_local global i64 0, align 8
@text_draw_speed = common dso_local global i64 0, align 8
@win_speed = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@text_drawn = common dso_local global i32 0, align 4
@text_x = common dso_local global i32 0, align 4
@text_y = common dso_local global i32 0, align 4
@bank_data_ptrs = common dso_local global i64* null, align 8
@FONT_BANK = common dso_local global i64 0, align 8
@FONT_BANK_OFFSET = common dso_local global i32 0, align 4
@text_tile_count = common dso_local global i32 0, align 4
@avatar_enabled = common dso_local global i32 0, align 4
@TEXT_BUFFER_START = common dso_local global i64 0, align 8
@menu_enabled = common dso_local global i32 0, align 4
@text_num_lines = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UIDrawTextBufferChar() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = load i32*, i32** @text_lines, align 8
  %9 = call i64 @strlen(i32* %8)
  store i64 %9, i64* %5, align 8
  %10 = load i32, i32* @text_wait, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = load i32, i32* @text_wait, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @text_wait, align 4
  br label %171

15:                                               ; preds = %0
  %16 = load i64, i64* @text_count, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %169

19:                                               ; preds = %15
  %20 = load i64, i64* @text_draw_speed, align 8
  store i64 %20, i64* @win_speed, align 8
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* @text_drawn, align 4
  %22 = load i64, i64* @text_count, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* @text_x, align 4
  store i32 0, i32* @text_y, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32*, i32** @text_lines, align 8
  %27 = load i64, i64* @text_count, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %29, 32
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %1, align 8
  %32 = load i64*, i64** @bank_data_ptrs, align 8
  %33 = load i64, i64* @FONT_BANK, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* @FONT_BANK_OFFSET, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @text_x, align 4
  %40 = sub nsw i32 18, %39
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %42 = load i64, i64* @text_count, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %69, %25
  %44 = load i64, i64* %2, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %43
  %48 = load i32*, i32** @text_lines, align 8
  %49 = load i64, i64* %2, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load i32*, i32** @text_lines, align 8
  %55 = load i64, i64* %2, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 10
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32*, i32** @text_lines, align 8
  %61 = load i64, i64* %2, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %59, %53, %47
  br label %72

66:                                               ; preds = %59
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %69

69:                                               ; preds = %66
  %70 = load i64, i64* %2, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %2, align 8
  br label %43

72:                                               ; preds = %65, %43
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* %3, align 8
  %75 = icmp ugt i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load i64, i64* %4, align 8
  %78 = icmp ult i64 %77, 18
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  store i32 0, i32* @text_x, align 4
  %80 = load i32, i32* @text_y, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @text_y, align 4
  br label %82

82:                                               ; preds = %79, %76, %72
  %83 = load i32*, i32** @text_lines, align 8
  %84 = load i64, i64* @text_count, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 8
  br i1 %87, label %88, label %133

88:                                               ; preds = %82
  %89 = load i32*, i32** @text_lines, align 8
  %90 = load i64, i64* @text_count, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 10
  br i1 %93, label %94, label %133

94:                                               ; preds = %88
  %95 = load i32, i32* @text_tile_count, align 4
  %96 = load i32, i32* @avatar_enabled, align 4
  %97 = mul nsw i32 %96, 4
  %98 = add nsw i32 %95, %97
  %99 = sext i32 %98 to i64
  store i64 %99, i64* %2, align 8
  %100 = load i64, i64* @FONT_BANK, align 8
  %101 = load i64, i64* @TEXT_BUFFER_START, align 8
  %102 = load i64, i64* %2, align 8
  %103 = add i64 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = load i64, i64* %1, align 8
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %106, 16
  %108 = add nsw i32 %104, %107
  %109 = call i32 @SetBankedBkgData(i64 %100, i64 %103, i32 1, i32 %108)
  %110 = load i64, i64* @TEXT_BUFFER_START, align 8
  %111 = load i64, i64* %2, align 8
  %112 = add i64 %110, %111
  store i64 %112, i64* %6, align 8
  %113 = load i32, i32* @text_x, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* @avatar_enabled, align 4
  %116 = mul nsw i32 %115, 2
  %117 = add nsw i32 %114, %116
  %118 = load i32, i32* @menu_enabled, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* @text_y, align 4
  %121 = load i32, i32* @text_num_lines, align 4
  %122 = icmp sge i32 %120, %121
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 9, i32 0
  %125 = add nsw i32 %119, %124
  %126 = load i32, i32* @text_y, align 4
  %127 = load i32, i32* @text_num_lines, align 4
  %128 = srem i32 %126, %127
  %129 = add nsw i32 %128, 1
  %130 = call i32 @set_win_tiles(i32 %125, i32 %129, i32 1, i32 1, i64* %6)
  %131 = load i32, i32* @text_tile_count, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @text_tile_count, align 4
  br label %133

133:                                              ; preds = %94, %88, %82
  %134 = load i32*, i32** @text_lines, align 8
  %135 = load i64, i64* @text_count, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 8
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load i32, i32* @text_x, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* @text_x, align 4
  store i32 10, i32* @text_wait, align 4
  br label %142

142:                                              ; preds = %139, %133
  %143 = load i64, i64* @text_count, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* @text_count, align 8
  %145 = load i32, i32* @text_x, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* @text_x, align 4
  %147 = load i32*, i32** @text_lines, align 8
  %148 = load i64, i64* @text_count, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  store i32 0, i32* @text_x, align 4
  %153 = load i32, i32* @text_y, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* @text_y, align 4
  %155 = load i64, i64* @text_count, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* @text_count, align 8
  br label %164

157:                                              ; preds = %142
  %158 = load i32, i32* @text_x, align 4
  %159 = icmp sgt i32 %158, 17
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  store i32 0, i32* @text_x, align 4
  %161 = load i32, i32* @text_y, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* @text_y, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %164

164:                                              ; preds = %163, %152
  %165 = load i64, i64* @text_draw_speed, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  call void @UIDrawTextBufferChar()
  br label %168

168:                                              ; preds = %167, %164
  br label %171

169:                                              ; preds = %15
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* @text_drawn, align 4
  br label %171

171:                                              ; preds = %12, %169, %168
  ret void
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i32 @SetBankedBkgData(i64, i64, i32, i32) #1

declare dso_local i32 @set_win_tiles(i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

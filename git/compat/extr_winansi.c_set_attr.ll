; ModuleID = '/home/carl/AnghaBench/git/compat/extr_winansi.c_set_attr.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_winansi.c_set_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plain_attr = common dso_local global i32 0, align 4
@attr = common dso_local global i32 0, align 4
@negative = common dso_local global i32 0, align 4
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@BACKGROUND_INTENSITY = common dso_local global i32 0, align 4
@FOREGROUND_ALL = common dso_local global i32 0, align 4
@FOREGROUND_RED = common dso_local global i32 0, align 4
@FOREGROUND_GREEN = common dso_local global i32 0, align 4
@FOREGROUND_BLUE = common dso_local global i32 0, align 4
@BACKGROUND_ALL = common dso_local global i32 0, align 4
@BACKGROUND_RED = common dso_local global i32 0, align 4
@BACKGROUND_GREEN = common dso_local global i32 0, align 4
@BACKGROUND_BLUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i32*, i32)* @set_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_attr(i8 signext %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %212 [
    i32 109, label %10
    i32 75, label %210
  ]

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %205, %10
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %208

15:                                               ; preds = %11
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %203 [
    i32 0, label %21
    i32 1, label %23
    i32 2, label %27
    i32 22, label %27
    i32 3, label %32
    i32 4, label %33
    i32 21, label %33
    i32 24, label %34
    i32 5, label %35
    i32 6, label %35
    i32 25, label %39
    i32 7, label %44
    i32 27, label %45
    i32 8, label %46
    i32 28, label %46
    i32 30, label %47
    i32 31, label %52
    i32 32, label %60
    i32 33, label %68
    i32 34, label %78
    i32 35, label %86
    i32 36, label %96
    i32 37, label %106
    i32 38, label %114
    i32 39, label %115
    i32 40, label %125
    i32 41, label %130
    i32 42, label %138
    i32 43, label %146
    i32 44, label %156
    i32 45, label %164
    i32 46, label %174
    i32 47, label %184
    i32 48, label %192
    i32 49, label %193
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @plain_attr, align 4
  store i32 %22, i32* @attr, align 4
  store i32 0, i32* @negative, align 4
  br label %204

23:                                               ; preds = %15
  %24 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %25 = load i32, i32* @attr, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* @attr, align 4
  br label %204

27:                                               ; preds = %15, %15
  %28 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @attr, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* @attr, align 4
  br label %204

32:                                               ; preds = %15
  br label %204

33:                                               ; preds = %15, %15
  br label %204

34:                                               ; preds = %15
  br label %204

35:                                               ; preds = %15, %15
  %36 = load i32, i32* @BACKGROUND_INTENSITY, align 4
  %37 = load i32, i32* @attr, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @attr, align 4
  br label %204

39:                                               ; preds = %15
  %40 = load i32, i32* @BACKGROUND_INTENSITY, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @attr, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* @attr, align 4
  br label %204

44:                                               ; preds = %15
  store i32 1, i32* @negative, align 4
  br label %204

45:                                               ; preds = %15
  store i32 0, i32* @negative, align 4
  br label %204

46:                                               ; preds = %15, %15
  br label %204

47:                                               ; preds = %15
  %48 = load i32, i32* @FOREGROUND_ALL, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* @attr, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* @attr, align 4
  br label %204

52:                                               ; preds = %15
  %53 = load i32, i32* @FOREGROUND_ALL, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* @attr, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* @attr, align 4
  %57 = load i32, i32* @FOREGROUND_RED, align 4
  %58 = load i32, i32* @attr, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* @attr, align 4
  br label %204

60:                                               ; preds = %15
  %61 = load i32, i32* @FOREGROUND_ALL, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* @attr, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* @attr, align 4
  %65 = load i32, i32* @FOREGROUND_GREEN, align 4
  %66 = load i32, i32* @attr, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* @attr, align 4
  br label %204

68:                                               ; preds = %15
  %69 = load i32, i32* @FOREGROUND_ALL, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* @attr, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* @attr, align 4
  %73 = load i32, i32* @FOREGROUND_RED, align 4
  %74 = load i32, i32* @FOREGROUND_GREEN, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @attr, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* @attr, align 4
  br label %204

78:                                               ; preds = %15
  %79 = load i32, i32* @FOREGROUND_ALL, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* @attr, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* @attr, align 4
  %83 = load i32, i32* @FOREGROUND_BLUE, align 4
  %84 = load i32, i32* @attr, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* @attr, align 4
  br label %204

86:                                               ; preds = %15
  %87 = load i32, i32* @FOREGROUND_ALL, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* @attr, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* @attr, align 4
  %91 = load i32, i32* @FOREGROUND_RED, align 4
  %92 = load i32, i32* @FOREGROUND_BLUE, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @attr, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* @attr, align 4
  br label %204

96:                                               ; preds = %15
  %97 = load i32, i32* @FOREGROUND_ALL, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* @attr, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* @attr, align 4
  %101 = load i32, i32* @FOREGROUND_GREEN, align 4
  %102 = load i32, i32* @FOREGROUND_BLUE, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @attr, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* @attr, align 4
  br label %204

106:                                              ; preds = %15
  %107 = load i32, i32* @FOREGROUND_RED, align 4
  %108 = load i32, i32* @FOREGROUND_GREEN, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @FOREGROUND_BLUE, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @attr, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* @attr, align 4
  br label %204

114:                                              ; preds = %15
  br label %204

115:                                              ; preds = %15
  %116 = load i32, i32* @FOREGROUND_ALL, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* @attr, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* @attr, align 4
  %120 = load i32, i32* @plain_attr, align 4
  %121 = load i32, i32* @FOREGROUND_ALL, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @attr, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* @attr, align 4
  br label %204

125:                                              ; preds = %15
  %126 = load i32, i32* @BACKGROUND_ALL, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* @attr, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* @attr, align 4
  br label %204

130:                                              ; preds = %15
  %131 = load i32, i32* @BACKGROUND_ALL, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* @attr, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* @attr, align 4
  %135 = load i32, i32* @BACKGROUND_RED, align 4
  %136 = load i32, i32* @attr, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* @attr, align 4
  br label %204

138:                                              ; preds = %15
  %139 = load i32, i32* @BACKGROUND_ALL, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* @attr, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* @attr, align 4
  %143 = load i32, i32* @BACKGROUND_GREEN, align 4
  %144 = load i32, i32* @attr, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* @attr, align 4
  br label %204

146:                                              ; preds = %15
  %147 = load i32, i32* @BACKGROUND_ALL, align 4
  %148 = xor i32 %147, -1
  %149 = load i32, i32* @attr, align 4
  %150 = and i32 %149, %148
  store i32 %150, i32* @attr, align 4
  %151 = load i32, i32* @BACKGROUND_RED, align 4
  %152 = load i32, i32* @BACKGROUND_GREEN, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @attr, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* @attr, align 4
  br label %204

156:                                              ; preds = %15
  %157 = load i32, i32* @BACKGROUND_ALL, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* @attr, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* @attr, align 4
  %161 = load i32, i32* @BACKGROUND_BLUE, align 4
  %162 = load i32, i32* @attr, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* @attr, align 4
  br label %204

164:                                              ; preds = %15
  %165 = load i32, i32* @BACKGROUND_ALL, align 4
  %166 = xor i32 %165, -1
  %167 = load i32, i32* @attr, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* @attr, align 4
  %169 = load i32, i32* @BACKGROUND_RED, align 4
  %170 = load i32, i32* @BACKGROUND_BLUE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @attr, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* @attr, align 4
  br label %204

174:                                              ; preds = %15
  %175 = load i32, i32* @BACKGROUND_ALL, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* @attr, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* @attr, align 4
  %179 = load i32, i32* @BACKGROUND_GREEN, align 4
  %180 = load i32, i32* @BACKGROUND_BLUE, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @attr, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* @attr, align 4
  br label %204

184:                                              ; preds = %15
  %185 = load i32, i32* @BACKGROUND_RED, align 4
  %186 = load i32, i32* @BACKGROUND_GREEN, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @BACKGROUND_BLUE, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @attr, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* @attr, align 4
  br label %204

192:                                              ; preds = %15
  br label %204

193:                                              ; preds = %15
  %194 = load i32, i32* @BACKGROUND_ALL, align 4
  %195 = xor i32 %194, -1
  %196 = load i32, i32* @attr, align 4
  %197 = and i32 %196, %195
  store i32 %197, i32* @attr, align 4
  %198 = load i32, i32* @plain_attr, align 4
  %199 = load i32, i32* @BACKGROUND_ALL, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* @attr, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* @attr, align 4
  br label %204

203:                                              ; preds = %15
  br label %204

204:                                              ; preds = %203, %193, %192, %184, %174, %164, %156, %146, %138, %130, %125, %115, %114, %106, %96, %86, %78, %68, %60, %52, %47, %46, %45, %44, %39, %35, %34, %33, %32, %27, %23, %21
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %11

208:                                              ; preds = %11
  %209 = call i32 (...) @set_console_attr()
  br label %213

210:                                              ; preds = %3
  %211 = call i32 (...) @erase_in_line()
  br label %213

212:                                              ; preds = %3
  br label %213

213:                                              ; preds = %212, %210, %208
  ret void
}

declare dso_local i32 @set_console_attr(...) #1

declare dso_local i32 @erase_in_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

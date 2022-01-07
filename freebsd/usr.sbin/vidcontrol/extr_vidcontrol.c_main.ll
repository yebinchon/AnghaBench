; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vt4_mode = common dso_local global i64 0, align 8
@DUMP_FBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"b:Cc:fg:h:Hi:M:m:pPr:S:s:T:t:x\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"b:Cc:deE:fg:h:Hi:l:LM:m:pPr:S:s:T:t:x\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%dx%d\00", align 1
@vesa_cols = common dso_local global i32 0, align 4
@vesa_rows = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect geometry: %s\00", align 1
@DUMP_ALL = common dso_local global i32 0, align 4
@DUMP_FMT_RAW = common dso_local global i32 0, align 4
@DUMP_FMT_TXT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cons25\00", align 1
@hex = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"show\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i64 (...) @is_vt4()
  store i64 %13, i64* @vt4_mode, align 8
  %14 = call i32 (...) @init()
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @DUMP_FBF, align 4
  store i32 %15, i32* %11, align 4
  store i8* null, i8** %8, align 8
  %16 = load i64, i64* @vt4_mode, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %20

19:                                               ; preds = %2
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %153, %20
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @getopt(i32 %22, i8** %23, i8* %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %154

27:                                               ; preds = %21
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %151 [
    i32 98, label %29
    i32 67, label %32
    i32 99, label %34
    i32 100, label %37
    i32 69, label %43
    i32 101, label %50
    i32 102, label %56
    i32 103, label %84
    i32 104, label %94
    i32 72, label %97
    i32 105, label %99
    i32 108, label %102
    i32 76, label %109
    i32 77, label %115
    i32 109, label %118
    i32 112, label %121
    i32 80, label %123
    i32 114, label %125
    i32 83, label %129
    i32 115, label %132
    i32 84, label %135
    i32 116, label %147
    i32 120, label %150
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i32 @set_border_color(i8* %30)
  br label %153

32:                                               ; preds = %27
  %33 = call i32 (...) @clear_history()
  br label %153

34:                                               ; preds = %27
  %35 = load i8*, i8** @optarg, align 8
  %36 = call i32 @set_cursor_type(i8* %35)
  br label %153

37:                                               ; preds = %27
  %38 = load i64, i64* @vt4_mode, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %153

41:                                               ; preds = %37
  %42 = call i32 (...) @print_scrnmap()
  br label %153

43:                                               ; preds = %27
  %44 = load i64, i64* @vt4_mode, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %153

47:                                               ; preds = %43
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @set_terminal_emulator(i8* %48)
  br label %153

50:                                               ; preds = %27
  %51 = load i64, i64* @vt4_mode, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %153

54:                                               ; preds = %50
  %55 = call i32 (...) @get_terminal_emulators()
  br label %153

56:                                               ; preds = %27
  %57 = load i32, i32* %4, align 4
  %58 = load i8**, i8*** %5, align 8
  %59 = call i8* @nextarg(i32 %57, i8** %58, i32* @optind, float 1.020000e+02, i32 0)
  store i8* %59, i8** @optarg, align 8
  %60 = load i8*, i8** @optarg, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = call i8* @nextarg(i32 %63, i8** %64, i32* @optind, float 1.020000e+02, i32 0)
  store i8* %65, i8** %6, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  store i8* null, i8** %7, align 8
  %69 = load i8*, i8** @optarg, align 8
  store i8* %69, i8** %6, align 8
  br label %72

70:                                               ; preds = %62
  %71 = load i8*, i8** @optarg, align 8
  store i8* %71, i8** %7, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = load i8*, i8** %7, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @load_font(i8* %73, i8* %74)
  br label %83

76:                                               ; preds = %56
  %77 = load i64, i64* @vt4_mode, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %76
  %82 = call i32 (...) @load_default_vt4font()
  br label %83

83:                                               ; preds = %81, %72
  br label %153

84:                                               ; preds = %27
  %85 = load i8*, i8** @optarg, align 8
  %86 = call i32 @sscanf(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* @vesa_cols, i32* @vesa_rows)
  %87 = icmp ne i32 %86, 2
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = call i32 (...) @revert()
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = call i32 (...) @usage()
  br label %93

93:                                               ; preds = %88, %84
  br label %153

94:                                               ; preds = %27
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 @set_history(i8* %95)
  br label %153

97:                                               ; preds = %27
  %98 = load i32, i32* @DUMP_ALL, align 4
  store i32 %98, i32* %11, align 4
  br label %153

99:                                               ; preds = %27
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i32 @show_info(i8* %100)
  br label %153

102:                                              ; preds = %27
  %103 = load i64, i64* @vt4_mode, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %153

106:                                              ; preds = %102
  %107 = load i8*, i8** @optarg, align 8
  %108 = call i32 @load_scrnmap(i8* %107)
  br label %153

109:                                              ; preds = %27
  %110 = load i64, i64* @vt4_mode, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %153

113:                                              ; preds = %109
  %114 = call i32 (...) @load_default_scrnmap()
  br label %153

115:                                              ; preds = %27
  %116 = load i8*, i8** @optarg, align 8
  %117 = call i32 @set_mouse_char(i8* %116)
  br label %153

118:                                              ; preds = %27
  %119 = load i8*, i8** @optarg, align 8
  %120 = call i32 @set_mouse(i8* %119)
  br label %153

121:                                              ; preds = %27
  %122 = load i32, i32* @DUMP_FMT_RAW, align 4
  store i32 %122, i32* %10, align 4
  br label %153

123:                                              ; preds = %27
  %124 = load i32, i32* @DUMP_FMT_TXT, align 4
  store i32 %124, i32* %10, align 4
  br label %153

125:                                              ; preds = %27
  %126 = load i32, i32* %4, align 4
  %127 = load i8**, i8*** %5, align 8
  %128 = call i32 @set_reverse_colors(i32 %126, i8** %127, i32* @optind)
  br label %153

129:                                              ; preds = %27
  %130 = load i8*, i8** @optarg, align 8
  %131 = call i32 @set_lockswitch(i8* %130)
  br label %153

132:                                              ; preds = %27
  %133 = load i8*, i8** @optarg, align 8
  %134 = call i32 @set_console(i8* %133)
  br label %153

135:                                              ; preds = %27
  %136 = load i8*, i8** @optarg, align 8
  %137 = call i64 @strcmp(i8* %136, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %135
  %140 = load i8*, i8** @optarg, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %139
  %144 = call i32 (...) @usage()
  br label %145

145:                                              ; preds = %143, %139, %135
  %146 = load i8*, i8** @optarg, align 8
  store i8* %146, i8** %8, align 8
  br label %153

147:                                              ; preds = %27
  %148 = load i8*, i8** @optarg, align 8
  %149 = call i32 @set_screensaver_timeout(i8* %148)
  br label %153

150:                                              ; preds = %27
  store i32 1, i32* @hex, align 4
  br label %153

151:                                              ; preds = %27
  %152 = call i32 (...) @usage()
  br label %153

153:                                              ; preds = %151, %150, %147, %145, %132, %129, %125, %123, %121, %118, %115, %113, %112, %106, %105, %99, %97, %94, %93, %83, %54, %53, %47, %46, %41, %40, %34, %32, %29
  br label %21

154:                                              ; preds = %21
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @dump_screen(i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %154
  %162 = load i32, i32* %4, align 4
  %163 = load i8**, i8*** %5, align 8
  %164 = call i32 @video_mode(i32 %162, i8** %163, i32* @optind)
  %165 = load i32, i32* %4, align 4
  %166 = load i8**, i8*** %5, align 8
  %167 = call i32 @set_normal_colors(i32 %165, i8** %166, i32* @optind)
  %168 = load i32, i32* @optind, align 4
  %169 = load i32, i32* %4, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %161
  %172 = load i8**, i8*** %5, align 8
  %173 = load i32, i32* @optind, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i64 @strcmp(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %171
  %180 = call i32 (...) @test_frame()
  %181 = load i32, i32* @optind, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @optind, align 4
  br label %183

183:                                              ; preds = %179, %171, %161
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i8*, i8** %8, align 8
  %188 = call i32 @set_terminal_mode(i8* %187)
  br label %189

189:                                              ; preds = %186, %183
  %190 = load i32, i32* @optind, align 4
  %191 = load i32, i32* %4, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %196, label %193

193:                                              ; preds = %189
  %194 = load i32, i32* %4, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %198

196:                                              ; preds = %193, %189
  %197 = call i32 (...) @usage()
  br label %198

198:                                              ; preds = %196, %193
  ret i32 0
}

declare dso_local i64 @is_vt4(...) #1

declare dso_local i32 @init(...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @set_border_color(i8*) #1

declare dso_local i32 @clear_history(...) #1

declare dso_local i32 @set_cursor_type(i8*) #1

declare dso_local i32 @print_scrnmap(...) #1

declare dso_local i32 @set_terminal_emulator(i8*) #1

declare dso_local i32 @get_terminal_emulators(...) #1

declare dso_local i8* @nextarg(i32, i8**, i32*, float, i32) #1

declare dso_local i32 @load_font(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @load_default_vt4font(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @set_history(i8*) #1

declare dso_local i32 @show_info(i8*) #1

declare dso_local i32 @load_scrnmap(i8*) #1

declare dso_local i32 @load_default_scrnmap(...) #1

declare dso_local i32 @set_mouse_char(i8*) #1

declare dso_local i32 @set_mouse(i8*) #1

declare dso_local i32 @set_reverse_colors(i32, i8**, i32*) #1

declare dso_local i32 @set_lockswitch(i8*) #1

declare dso_local i32 @set_console(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_screensaver_timeout(i8*) #1

declare dso_local i32 @dump_screen(i32, i32) #1

declare dso_local i32 @video_mode(i32, i8**, i32*) #1

declare dso_local i32 @set_normal_colors(i32, i8**, i32*) #1

declare dso_local i32 @test_frame(...) #1

declare dso_local i32 @set_terminal_mode(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

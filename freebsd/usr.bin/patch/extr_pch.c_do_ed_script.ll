; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_do_ed_script.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_pch.c_do_ed_script.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@skip_rest_of_patch = common dso_local global i32 0, align 4
@filearg = common dso_local global i32* null, align 8
@TMPOUTNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"can't create temp file %s\00", align 1
@buf = common dso_local global i8* null, align 8
@buf_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@_PATH_RED = common dso_local global i8* null, align 8
@verbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" -s \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@pfp = common dso_local global i32 0, align 4
@p_input_line = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"w\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"q\0A\00", align 1
@check_only = common dso_local global i32 0, align 4
@outname = common dso_local global i32 0, align 4
@toutkeep = common dso_local global i32 0, align 4
@filemode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_ed_script() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* null, i32** %3, align 8
  %5 = load i32, i32* @skip_rest_of_patch, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %31, label %7

7:                                                ; preds = %0
  %8 = load i32*, i32** @filearg, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @TMPOUTNAME, align 4
  %12 = call i64 @copy_file(i32 %10, i32 %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load i32, i32* @TMPOUTNAME, align 4
  %16 = call i32 @unlink(i32 %15)
  %17 = load i32, i32* @TMPOUTNAME, align 4
  %18 = call i32 @fatal(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %7
  %20 = load i8*, i8** @buf, align 8
  %21 = load i32, i32* @buf_size, align 4
  %22 = load i8*, i8** @_PATH_RED, align 8
  %23 = load i64, i64* @verbose, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %27 = load i32, i32* @TMPOUTNAME, align 4
  %28 = call i32 @snprintf(i8* %20, i32 %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %26, i32 %27)
  %29 = load i8*, i8** @buf, align 8
  %30 = call i32* @popen(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %19, %0
  br label %32

32:                                               ; preds = %172, %31
  %33 = load i32, i32* @pfp, align 4
  %34 = call i32 @ftello(i32 %33)
  store i32 %34, i32* %2, align 4
  %35 = call i64 @pgets(i32 1)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @p_input_line, align 4
  %40 = call i32 @next_intuit_at(i32 %38, i32 %39)
  br label %173

41:                                               ; preds = %32
  %42 = load i32, i32* @p_input_line, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @p_input_line, align 4
  %44 = load i8*, i8** @buf, align 8
  store i8* %44, i8** %1, align 8
  br label %45

45:                                               ; preds = %58, %41
  %46 = load i8*, i8** %1, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i64 @isdigit(i8 zeroext %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %1, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 44
  br label %55

55:                                               ; preds = %50, %45
  %56 = phi i1 [ true, %45 ], [ %54, %50 ]
  br i1 %56, label %57, label %61

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57
  %59 = load i8*, i8** %1, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %1, align 8
  br label %45

61:                                               ; preds = %55
  %62 = load i8*, i8** @buf, align 8
  %63 = load i8, i8* %62, align 1
  %64 = call i64 @isdigit(i8 zeroext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %168

66:                                               ; preds = %61
  %67 = load i8*, i8** %1, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 97
  br i1 %70, label %91, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %1, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 99
  br i1 %75, label %91, label %76

76:                                               ; preds = %71
  %77 = load i8*, i8** %1, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 100
  br i1 %80, label %91, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %1, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 105
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %1, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 115
  br i1 %90, label %91, label %168

91:                                               ; preds = %86, %81, %76, %71, %66
  %92 = load i32*, i32** %3, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i8*, i8** @buf, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = call i32 @fputs(i8* %95, i32* %96)
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i8*, i8** %1, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 115
  br i1 %102, label %103, label %141

103:                                              ; preds = %98
  br label %104

104:                                              ; preds = %139, %103
  store i32 0, i32* %4, align 4
  %105 = load i8*, i8** @buf, align 8
  %106 = call i8* @strchr(i8* %105, i8 signext 0)
  %107 = getelementptr inbounds i8, i8* %106, i64 -1
  store i8* %107, i8** %1, align 8
  br label %108

108:                                              ; preds = %120, %104
  %109 = load i8*, i8** %1, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 -1
  store i8* %110, i8** %1, align 8
  %111 = load i8*, i8** @buf, align 8
  %112 = icmp uge i8* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i8*, i8** %1, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 92
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ false, %108 ], [ %117, %113 ]
  br i1 %119, label %120, label %125

120:                                              ; preds = %118
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %4, align 4
  br label %108

125:                                              ; preds = %118
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = call i64 @pgets(i32 1)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128, %125
  br label %140

132:                                              ; preds = %128
  %133 = load i32*, i32** %3, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i8*, i8** @buf, align 8
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @fputs(i8* %136, i32* %137)
  br label %139

139:                                              ; preds = %135, %132
  br label %104

140:                                              ; preds = %131
  br label %167

141:                                              ; preds = %98
  %142 = load i8*, i8** %1, align 8
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp ne i32 %144, 100
  br i1 %145, label %146, label %166

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %164, %146
  %148 = call i64 @pgets(i32 1)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = load i32, i32* @p_input_line, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @p_input_line, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i8*, i8** @buf, align 8
  %157 = load i32*, i32** %3, align 8
  %158 = call i32 @fputs(i8* %156, i32* %157)
  br label %159

159:                                              ; preds = %155, %150
  %160 = load i8*, i8** @buf, align 8
  %161 = call i64 @strEQ(i8* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %165

164:                                              ; preds = %159
  br label %147

165:                                              ; preds = %163, %147
  br label %166

166:                                              ; preds = %165, %141
  br label %167

167:                                              ; preds = %166, %140
  br label %172

168:                                              ; preds = %86, %61
  %169 = load i32, i32* %2, align 4
  %170 = load i32, i32* @p_input_line, align 4
  %171 = call i32 @next_intuit_at(i32 %169, i32 %170)
  br label %173

172:                                              ; preds = %167
  br label %32

173:                                              ; preds = %168, %37
  %174 = load i32*, i32** %3, align 8
  %175 = icmp eq i32* %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %205

177:                                              ; preds = %173
  %178 = load i32*, i32** %3, align 8
  %179 = call i32 @fprintf(i32* %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %180 = load i32*, i32** %3, align 8
  %181 = call i32 @fprintf(i32* %180, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i32*, i32** %3, align 8
  %183 = call i32 @fflush(i32* %182)
  %184 = load i32*, i32** %3, align 8
  %185 = call i32 @pclose(i32* %184)
  %186 = call i32 (...) @ignore_signals()
  %187 = load i32, i32* @check_only, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %177
  %190 = load i32, i32* @TMPOUTNAME, align 4
  %191 = load i32, i32* @outname, align 4
  %192 = call i64 @move_file(i32 %190, i32 %191)
  %193 = icmp slt i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  store i32 1, i32* @toutkeep, align 4
  %195 = load i32, i32* @TMPOUTNAME, align 4
  %196 = load i32, i32* @filemode, align 4
  %197 = call i32 @chmod(i32 %195, i32 %196)
  br label %202

198:                                              ; preds = %189
  %199 = load i32, i32* @outname, align 4
  %200 = load i32, i32* @filemode, align 4
  %201 = call i32 @chmod(i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %198, %194
  br label %203

203:                                              ; preds = %202, %177
  %204 = call i32 @set_signals(i32 1)
  br label %205

205:                                              ; preds = %203, %176
  ret void
}

declare dso_local i64 @copy_file(i32, i32) #1

declare dso_local i32 @unlink(i32) #1

declare dso_local i32 @fatal(i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32* @popen(i8*, i8*) #1

declare dso_local i32 @ftello(i32) #1

declare dso_local i64 @pgets(i32) #1

declare dso_local i32 @next_intuit_at(i32, i32) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strEQ(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @pclose(i32*) #1

declare dso_local i32 @ignore_signals(...) #1

declare dso_local i64 @move_file(i32, i32) #1

declare dso_local i32 @chmod(i32, i32) #1

declare dso_local i32 @set_signals(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

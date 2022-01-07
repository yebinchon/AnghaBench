; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_list_and_choose.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_list_and_choose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.menu_opts = type { i32, i64, i64 }
%struct.menu_stuff = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@CLEAN_COLOR_HEADER = common dso_local global i32 0, align 4
@CLEAN_COLOR_RESET = common dso_local global i32 0, align 4
@MENU_OPTS_LIST_ONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s%s%s%s\00", align 1
@CLEAN_COLOR_PROMPT = common dso_local global i32 0, align 4
@MENU_OPTS_SINGLETON = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c">> \00", align 1
@stdin = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@MENU_OPTS_IMMEDIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.menu_opts*, %struct.menu_stuff*)* @list_and_choose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @list_and_choose(%struct.menu_opts* %0, %struct.menu_stuff* %1) #0 {
  %3 = alloca %struct.menu_opts*, align 8
  %4 = alloca %struct.menu_stuff*, align 8
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.menu_opts* %0, %struct.menu_opts** %3, align 8
  store %struct.menu_stuff* %1, %struct.menu_stuff** %4, align 8
  %12 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %15 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ALLOC_ARRAY(i32* %13, i32 %16)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %29, %2
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %21 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 -1, i32* %28, align 4
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %18

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %143, %94, %32
  %34 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %35 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load i32, i32* @CLEAN_COLOR_HEADER, align 4
  %40 = call i8* @clean_get_color(i32 %39)
  %41 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %42 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @_(i64 %43)
  %45 = load i32, i32* @CLEAN_COLOR_RESET, align 4
  %46 = call i8* @clean_get_color(i32 %45)
  %47 = call i32 @printf_ln(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %40, i8* %44, i8* %46)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %50 = call i32 @print_highlight_menu_stuff(%struct.menu_stuff* %49, i32** %6)
  %51 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %52 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MENU_OPTS_LIST_ONLY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %144

58:                                               ; preds = %48
  %59 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %60 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %58
  %64 = load i32, i32* @CLEAN_COLOR_PROMPT, align 4
  %65 = call i8* @clean_get_color(i32 %64)
  %66 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %67 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @_(i64 %68)
  %70 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %71 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MENU_OPTS_SINGLETON, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %78 = load i32, i32* @CLEAN_COLOR_RESET, align 4
  %79 = call i8* @clean_get_color(i32 %78)
  %80 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %65, i8* %69, i8* %77, i8* %79)
  br label %81

81:                                               ; preds = %63, %58
  %82 = load i32, i32* @stdin, align 4
  %83 = call i32 @strbuf_getline_lf(%struct.strbuf* %5, i32 %82)
  %84 = load i32, i32* @EOF, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @strbuf_trim(%struct.strbuf* %5)
  br label %89

88:                                               ; preds = %81
  store i32 1, i32* %9, align 4
  br label %144

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @strcmp(i32 %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %89
  %95 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %96 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @MENU_OPTS_SINGLETON, align 4
  %99 = and i32 %97, %98
  %100 = call i32 @prompt_help_cmd(i32 %99)
  br label %33

101:                                              ; preds = %89
  %102 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %103 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @MENU_OPTS_SINGLETON, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  br label %144

113:                                              ; preds = %108, %101
  %114 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %115 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %116 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @MENU_OPTS_SINGLETON, align 4
  %119 = and i32 %117, %118
  %120 = bitcast %struct.strbuf* %5 to i64*
  %121 = load i64, i64* %120, align 4
  %122 = call i32 @parse_choice(%struct.menu_stuff* %114, i32 %119, i64 %121, i32** %6)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %124 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @MENU_OPTS_SINGLETON, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %113
  %130 = load i32, i32* %8, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %144

133:                                              ; preds = %129
  br label %143

134:                                              ; preds = %113
  %135 = load %struct.menu_opts*, %struct.menu_opts** %3, align 8
  %136 = getelementptr inbounds %struct.menu_opts, %struct.menu_opts* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MENU_OPTS_IMMEDIATE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %144

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %133
  br label %33

144:                                              ; preds = %141, %132, %112, %88, %57
  %145 = load i32, i32* %9, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = call i32* @xmalloc(i32 4)
  store i32* %148, i32** %7, align 8
  %149 = load i32, i32* @EOF, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  br label %213

151:                                              ; preds = %144
  store i32 0, i32* %11, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %173, label %154

154:                                              ; preds = %151
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %169, %154
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %158 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %8, align 4
  br label %169

169:                                              ; preds = %161
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %155

172:                                              ; preds = %155
  br label %173

173:                                              ; preds = %172, %151
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @st_add(i32 %174, i32 1)
  %176 = call i32* @xcalloc(i32 %175, i32 4)
  store i32* %176, i32** %7, align 8
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %204, %173
  %178 = load i32, i32* %10, align 4
  %179 = load %struct.menu_stuff*, %struct.menu_stuff** %4, align 8
  %180 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %177
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %184, %185
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi i1 [ false, %177 ], [ %186, %183 ]
  br i1 %188, label %189, label %207

189:                                              ; preds = %187
  %190 = load i32*, i32** %6, align 8
  %191 = load i32, i32* %10, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %189
  %197 = load i32, i32* %10, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  %201 = sext i32 %199 to i64
  %202 = getelementptr inbounds i32, i32* %198, i64 %201
  store i32 %197, i32* %202, align 4
  br label %203

203:                                              ; preds = %196, %189
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %10, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %10, align 4
  br label %177

207:                                              ; preds = %187
  %208 = load i32, i32* @EOF, align 4
  %209 = load i32*, i32** %7, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  store i32 %208, i32* %212, align 4
  br label %213

213:                                              ; preds = %207, %147
  %214 = load i32*, i32** %6, align 8
  %215 = call i32 @free(i32* %214)
  %216 = call i32 @strbuf_release(%struct.strbuf* %5)
  %217 = load i32*, i32** %7, align 8
  ret i32* %217
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #2

declare dso_local i32 @printf_ln(i8*, i8*, i8*, i8*) #2

declare dso_local i8* @clean_get_color(i32) #2

declare dso_local i8* @_(i64) #2

declare dso_local i32 @print_highlight_menu_stuff(%struct.menu_stuff*, i32**) #2

declare dso_local i32 @printf(i8*, i8*, i8*, i8*, i8*) #2

declare dso_local i32 @strbuf_getline_lf(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @prompt_help_cmd(i32) #2

declare dso_local i32 @parse_choice(%struct.menu_stuff*, i32, i64, i32**) #2

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i32* @xcalloc(i32, i32) #2

declare dso_local i32 @st_add(i32, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

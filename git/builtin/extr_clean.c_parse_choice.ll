; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_clean.c_parse_choice.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_clean.c_parse_choice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.menu_stuff = type { i32 }
%struct.strbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@CLEAN_COLOR_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Huh (%s)?\0A\00", align 1
@CLEAN_COLOR_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.menu_stuff*, i32, i8*, i32, i32**)* @parse_choice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_choice(%struct.menu_stuff* %0, i32 %1, i8* %2, i32 %3, i32** %4) #0 {
  %6 = alloca %struct.strbuf, align 8
  %7 = alloca %struct.menu_stuff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.strbuf**, align 8
  %11 = alloca %struct.strbuf**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = bitcast %struct.strbuf* %6 to { i8*, i32 }*
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %21, i32 0, i32 0
  store i8* %2, i8** %22, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %21, i32 0, i32 1
  store i32 %3, i32* %23, align 8
  store %struct.menu_stuff* %0, %struct.menu_stuff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %4, i32*** %9, align 8
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call %struct.strbuf** @strbuf_split_max(%struct.strbuf* %6, i8 signext 10, i32 0)
  store %struct.strbuf** %27, %struct.strbuf*** %10, align 8
  br label %46

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %6, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %14, align 8
  br label %31

31:                                               ; preds = %39, %28
  %32 = load i8*, i8** %14, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 44
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i8*, i8** %14, align 8
  store i8 32, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i8*, i8** %14, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %14, align 8
  %42 = load i8, i8* %40, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %31, label %44

44:                                               ; preds = %39
  %45 = call %struct.strbuf** @strbuf_split_max(%struct.strbuf* %6, i8 signext 32, i32 0)
  store %struct.strbuf** %45, %struct.strbuf*** %10, align 8
  br label %46

46:                                               ; preds = %44, %26
  %47 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  store %struct.strbuf** %47, %struct.strbuf*** %11, align 8
  br label %48

48:                                               ; preds = %218, %46
  %49 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %50 = load %struct.strbuf*, %struct.strbuf** %49, align 8
  %51 = icmp ne %struct.strbuf* %50, null
  br i1 %51, label %52, label %221

52:                                               ; preds = %48
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %53 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %54 = load %struct.strbuf*, %struct.strbuf** %53, align 8
  %55 = call i32 @strbuf_trim(%struct.strbuf* %54)
  %56 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %57 = load %struct.strbuf*, %struct.strbuf** %56, align 8
  %58 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %218

62:                                               ; preds = %52
  %63 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %64 = load %struct.strbuf*, %struct.strbuf** %63, align 8
  %65 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 45
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  store i32 0, i32* %16, align 4
  %71 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %72 = load %struct.strbuf*, %struct.strbuf** %71, align 8
  %73 = call i32 @strbuf_remove(%struct.strbuf* %72, i32 0, i32 1)
  br label %74

74:                                               ; preds = %70, %62
  store i32 0, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %75 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %76 = load %struct.strbuf*, %struct.strbuf** %75, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %15, align 8
  br label %79

79:                                               ; preds = %102, %74
  %80 = load i8*, i8** %15, align 8
  %81 = load i8, i8* %80, align 1
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %83, label %105

83:                                               ; preds = %79
  %84 = load i8*, i8** %15, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 45, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %93

92:                                               ; preds = %88
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %105

93:                                               ; preds = %91
  br label %101

94:                                               ; preds = %83
  %95 = load i8*, i8** %15, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @isdigit(i8 signext %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %94
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  br label %105

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %93
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %15, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %15, align 8
  br label %79

105:                                              ; preds = %99, %92, %79
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %110 = load %struct.strbuf*, %struct.strbuf** %109, align 8
  %111 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @atoi(i8* %112)
  store i32 %113, i32* %17, align 4
  %114 = load i32, i32* %17, align 4
  store i32 %114, i32* %18, align 4
  br label %166

115:                                              ; preds = %105
  %116 = load i32, i32* %19, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %145

118:                                              ; preds = %115
  %119 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %120 = load %struct.strbuf*, %struct.strbuf** %119, align 8
  %121 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @atoi(i8* %122)
  store i32 %123, i32* %17, align 4
  %124 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %125 = load %struct.strbuf*, %struct.strbuf** %124, align 8
  %126 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @strchr(i8* %127, i8 signext 45)
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8, i8* %129, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %118
  %133 = load %struct.menu_stuff*, %struct.menu_stuff** %7, align 8
  %134 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %18, align 4
  br label %144

136:                                              ; preds = %118
  %137 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %138 = load %struct.strbuf*, %struct.strbuf** %137, align 8
  %139 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i8* @strchr(i8* %140, i8 signext 45)
  %142 = getelementptr inbounds i8, i8* %141, i64 1
  %143 = call i32 @atoi(i8* %142)
  store i32 %143, i32* %18, align 4
  br label %144

144:                                              ; preds = %136, %132
  br label %165

145:                                              ; preds = %115
  %146 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %147 = load %struct.strbuf*, %struct.strbuf** %146, align 8
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %145
  store i32 1, i32* %17, align 4
  %153 = load %struct.menu_stuff*, %struct.menu_stuff** %7, align 8
  %154 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %18, align 4
  br label %164

156:                                              ; preds = %145
  %157 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %158 = load %struct.strbuf*, %struct.strbuf** %157, align 8
  %159 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.menu_stuff*, %struct.menu_stuff** %7, align 8
  %162 = call i32 @find_unique(i8* %160, %struct.menu_stuff* %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %18, align 4
  br label %164

164:                                              ; preds = %156, %152
  br label %165

165:                                              ; preds = %164, %144
  br label %166

166:                                              ; preds = %165, %108
  %167 = load i32, i32* %18, align 4
  %168 = icmp sle i32 %167, 0
  br i1 %168, label %189, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %17, align 4
  %171 = icmp sle i32 %170, 0
  br i1 %171, label %189, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %18, align 4
  %174 = load %struct.menu_stuff*, %struct.menu_stuff** %7, align 8
  %175 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %189, label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %18, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %189, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %8, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %200

185:                                              ; preds = %182
  %186 = load i32, i32* %17, align 4
  %187 = load i32, i32* %18, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %185, %178, %172, %169, %166
  %190 = load i32, i32* @CLEAN_COLOR_ERROR, align 4
  %191 = call i32 @clean_print_color(i32 %190)
  %192 = call i8* @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %193 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %194 = load %struct.strbuf*, %struct.strbuf** %193, align 8
  %195 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @printf(i8* %192, i8* %196)
  %198 = load i32, i32* @CLEAN_COLOR_RESET, align 4
  %199 = call i32 @clean_print_color(i32 %198)
  br label %218

200:                                              ; preds = %185, %182
  %201 = load i32, i32* %17, align 4
  store i32 %201, i32* %13, align 4
  br label %202

202:                                              ; preds = %214, %200
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* %18, align 4
  %205 = icmp sle i32 %203, %204
  br i1 %205, label %206, label %217

206:                                              ; preds = %202
  %207 = load i32, i32* %16, align 4
  %208 = load i32**, i32*** %9, align 8
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %13, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %209, i64 %212
  store i32 %207, i32* %213, align 4
  br label %214

214:                                              ; preds = %206
  %215 = load i32, i32* %13, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %13, align 4
  br label %202

217:                                              ; preds = %202
  br label %218

218:                                              ; preds = %217, %189, %61
  %219 = load %struct.strbuf**, %struct.strbuf*** %11, align 8
  %220 = getelementptr inbounds %struct.strbuf*, %struct.strbuf** %219, i32 1
  store %struct.strbuf** %220, %struct.strbuf*** %11, align 8
  br label %48

221:                                              ; preds = %48
  %222 = load %struct.strbuf**, %struct.strbuf*** %10, align 8
  %223 = call i32 @strbuf_list_free(%struct.strbuf** %222)
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %239, %221
  %225 = load i32, i32* %13, align 4
  %226 = load %struct.menu_stuff*, %struct.menu_stuff** %7, align 8
  %227 = getelementptr inbounds %struct.menu_stuff, %struct.menu_stuff* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp slt i32 %225, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %224
  %231 = load i32**, i32*** %9, align 8
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %12, align 4
  %238 = add nsw i32 %237, %236
  store i32 %238, i32* %12, align 4
  br label %239

239:                                              ; preds = %230
  %240 = load i32, i32* %13, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %13, align 4
  br label %224

242:                                              ; preds = %224
  %243 = load i32, i32* %12, align 4
  ret i32 %243
}

declare dso_local %struct.strbuf** @strbuf_split_max(%struct.strbuf*, i8 signext, i32) #1

declare dso_local i32 @strbuf_trim(%struct.strbuf*) #1

declare dso_local i32 @strbuf_remove(%struct.strbuf*, i32, i32) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @find_unique(i8*, %struct.menu_stuff*) #1

declare dso_local i32 @clean_print_color(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @strbuf_list_free(%struct.strbuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

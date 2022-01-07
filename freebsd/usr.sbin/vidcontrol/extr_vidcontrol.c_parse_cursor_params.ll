; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_parse_cursor_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_parse_cursor_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cshape = type { i32* }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"destructive\00", align 1
@CONS_BLINK_CURSOR = common dso_local global i32 0, align 4
@CONS_CHAR_CURSOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"blink\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"noblink\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"noblock\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@CONS_HIDDEN_CURSOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"nohidden\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"base=\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"height=\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"charcolors\00", align 1
@CONS_CHARCURSOR_COLORS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"mousecolors\00", align 1
@CONS_MOUSECURSOR_COLORS = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@CONS_DEFAULT_CURSOR = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"shapeonly\00", align 1
@CONS_SHAPEONLY_CURSOR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c"local\00", align 1
@CONS_LOCAL_CURSOR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@CONS_RESET_CURSOR = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"flags %#x, base %d, height %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [47 x i8] c"invalid parameters for -c starting at '%s%s%s'\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.cshape*)* @parse_cursor_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_cursor_params(i8* %0, %struct.cshape* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cshape*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cshape* %1, %struct.cshape** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %5, align 8
  store i8* %9, i8** %3, align 8
  %10 = load %struct.cshape*, %struct.cshape** %4, align 8
  %11 = getelementptr inbounds %struct.cshape, %struct.cshape* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %204, %2
  %16 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %16, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %205

18:                                               ; preds = %15
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strcmp(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %204

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @strcmp(i8* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @CONS_BLINK_CURSOR, align 4
  %29 = load i32, i32* @CONS_CHAR_CURSOR, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  br label %203

31:                                               ; preds = %23
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @CONS_BLINK_CURSOR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %202

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @strcmp(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* @CONS_BLINK_CURSOR, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %201

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcmp(i8* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @CONS_CHAR_CURSOR, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %200

57:                                               ; preds = %48
  %58 = load i8*, i8** %6, align 8
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @CONS_CHAR_CURSOR, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %199

65:                                               ; preds = %57
  %66 = load i8*, i8** %6, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* @CONS_HIDDEN_CURSOR, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %198

73:                                               ; preds = %65
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32, i32* @CONS_HIDDEN_CURSOR, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %197

82:                                               ; preds = %73
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 5)
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %82
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 5
  %89 = call i8* @strtol(i8* %88, i32* null, i32 0)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.cshape*, %struct.cshape** %4, align 8
  %92 = getelementptr inbounds %struct.cshape, %struct.cshape* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %90, i32* %94, align 4
  br label %196

95:                                               ; preds = %82
  %96 = load i8*, i8** %6, align 8
  %97 = call i64 @strncmp(i8* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 7)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i8*, i8** %6, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 7
  %102 = call i8* @strtol(i8* %101, i32* null, i32 0)
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.cshape*, %struct.cshape** %4, align 8
  %105 = getelementptr inbounds %struct.cshape, %struct.cshape* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  store i32 %103, i32* %107, align 4
  br label %195

108:                                              ; preds = %95
  %109 = load i8*, i8** %6, align 8
  %110 = call i64 @strcmp(i8* %109, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i32, i32* @CONS_CHARCURSOR_COLORS, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %194

116:                                              ; preds = %108
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = load i32, i32* @CONS_MOUSECURSOR_COLORS, align 4
  %122 = load i32, i32* %7, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %7, align 4
  br label %193

124:                                              ; preds = %116
  %125 = load i8*, i8** %6, align 8
  %126 = call i64 @strcmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load i32, i32* @CONS_DEFAULT_CURSOR, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %192

132:                                              ; preds = %124
  %133 = load i8*, i8** %6, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = load i32, i32* @CONS_SHAPEONLY_CURSOR, align 4
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  br label %191

140:                                              ; preds = %132
  %141 = load i8*, i8** %6, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* @CONS_LOCAL_CURSOR, align 4
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  br label %190

148:                                              ; preds = %140
  %149 = load i8*, i8** %6, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* @CONS_RESET_CURSOR, align 4
  %154 = load i32, i32* %7, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %7, align 4
  br label %189

156:                                              ; preds = %148
  %157 = load i8*, i8** %6, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %173

160:                                              ; preds = %156
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.cshape*, %struct.cshape** %4, align 8
  %163 = getelementptr inbounds %struct.cshape, %struct.cshape* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.cshape*, %struct.cshape** %4, align 8
  %168 = getelementptr inbounds %struct.cshape, %struct.cshape* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.18, i64 0, i64 0), i32 %161, i32 %166, i32 %171)
  br label %188

173:                                              ; preds = %156
  %174 = call i32 (...) @revert()
  %175 = load i8*, i8** %6, align 8
  %176 = load i8*, i8** %3, align 8
  %177 = icmp ne i8* %176, null
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
  %180 = load i8*, i8** %3, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %173
  %183 = load i8*, i8** %3, align 8
  br label %185

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %182
  %186 = phi i8* [ %183, %182 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0), %184 ]
  %187 = call i32 @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.19, i64 0, i64 0), i8* %175, i8* %179, i8* %186)
  br label %188

188:                                              ; preds = %185, %160
  br label %189

189:                                              ; preds = %188, %152
  br label %190

190:                                              ; preds = %189, %144
  br label %191

191:                                              ; preds = %190, %136
  br label %192

192:                                              ; preds = %191, %128
  br label %193

193:                                              ; preds = %192, %120
  br label %194

194:                                              ; preds = %193, %112
  br label %195

195:                                              ; preds = %194, %99
  br label %196

196:                                              ; preds = %195, %86
  br label %197

197:                                              ; preds = %196, %77
  br label %198

198:                                              ; preds = %197, %69
  br label %199

199:                                              ; preds = %198, %61
  br label %200

200:                                              ; preds = %199, %52
  br label %201

201:                                              ; preds = %200, %43
  br label %202

202:                                              ; preds = %201, %35
  br label %203

203:                                              ; preds = %202, %27
  br label %204

204:                                              ; preds = %203, %22
  br label %15

205:                                              ; preds = %15
  %206 = load i8*, i8** %5, align 8
  %207 = call i32 @free(i8* %206)
  %208 = load i32, i32* %7, align 4
  %209 = load %struct.cshape*, %struct.cshape** %4, align 8
  %210 = getelementptr inbounds %struct.cshape, %struct.cshape* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %208, i32* %212, align 4
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strtol(i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @errx(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

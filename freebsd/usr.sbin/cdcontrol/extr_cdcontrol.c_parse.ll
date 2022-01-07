; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdtab = type { i32, i32, i64 }

@CMD_PLAY = common dso_local global i32 0, align 4
@CMD_NEXT = common dso_local global i32 0, align 4
@CMD_PREVIOUS = common dso_local global i32 0, align 4
@cmdtab = common dso_local global %struct.cmdtab* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"ambiguous command\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"invalid command, enter ``help'' for commands\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cmdtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  br label %11

11:                                               ; preds = %17, %2
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isspace(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load i8*, i8** %7, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %7, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = call i64 @isdigit(i8 signext %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 35
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @isdigit(i8 signext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %20
  %38 = load i32, i32* @CMD_PLAY, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %7, align 8
  store i8* %40, i8** %3, align 8
  br label %196

41:                                               ; preds = %31, %25
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 43
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load i32, i32* @CMD_NEXT, align 4
  %48 = load i32*, i32** %5, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %3, align 8
  br label %196

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 45
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @CMD_PREVIOUS, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  store i8* %60, i8** %3, align 8
  br label %196

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load i8*, i8** %7, align 8
  store i8* %64, i8** %4, align 8
  br label %65

65:                                               ; preds = %79, %63
  %66 = load i8*, i8** %7, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @isspace(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  %75 = xor i1 %74, true
  br label %76

76:                                               ; preds = %70, %65
  %77 = phi i1 [ false, %65 ], [ %75, %70 ]
  br i1 %77, label %78, label %82

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %7, align 8
  br label %65

82:                                               ; preds = %76
  %83 = load i8*, i8** %7, align 8
  %84 = load i8*, i8** %4, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  store i8* null, i8** %3, align 8
  br label %196

92:                                               ; preds = %82
  %93 = load i8*, i8** %7, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load i8*, i8** %7, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %7, align 8
  store i8 0, i8* %97, align 1
  %99 = load i8*, i8** %7, align 8
  store i8* %99, i8** %9, align 8
  br label %100

100:                                              ; preds = %118, %96
  %101 = load i8*, i8** %9, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i8*, i8** %9, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 10
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load i8*, i8** %9, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp ne i32 %113, 13
  br label %115

115:                                              ; preds = %110, %105, %100
  %116 = phi i1 [ false, %105 ], [ false, %100 ], [ %114, %110 ]
  br i1 %116, label %117, label %121

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117
  %119 = load i8*, i8** %9, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %9, align 8
  br label %100

121:                                              ; preds = %115
  %122 = load i8*, i8** %9, align 8
  store i8 0, i8* %122, align 1
  br label %123

123:                                              ; preds = %121, %92
  %124 = load i32*, i32** %5, align 8
  store i32 -1, i32* %124, align 4
  %125 = load %struct.cmdtab*, %struct.cmdtab** @cmdtab, align 8
  store %struct.cmdtab* %125, %struct.cmdtab** %6, align 8
  br label %126

126:                                              ; preds = %176, %123
  %127 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %128 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %179

131:                                              ; preds = %126
  %132 = load i8*, i8** %4, align 8
  %133 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %134 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @strcasecmp(i8* %132, i64 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %140 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32*, i32** %5, align 8
  store i32 %141, i32* %142, align 4
  br label %179

143:                                              ; preds = %131
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %146 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp uge i32 %144, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %143
  %150 = load i8*, i8** %4, align 8
  %151 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %152 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @strncasecmp(i8* %150, i64 %153, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %175, label %157

157:                                              ; preds = %149
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, -1
  br i1 %160, label %161, label %170

161:                                              ; preds = %157
  %162 = load i32*, i32** %5, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %165 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = call i32 @warnx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %196

170:                                              ; preds = %161, %157
  %171 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %172 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32*, i32** %5, align 8
  store i32 %173, i32* %174, align 4
  br label %175

175:                                              ; preds = %170, %149, %143
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.cmdtab*, %struct.cmdtab** %6, align 8
  %178 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %177, i32 1
  store %struct.cmdtab* %178, %struct.cmdtab** %6, align 8
  br label %126

179:                                              ; preds = %138, %126
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32 @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %3, align 8
  br label %196

185:                                              ; preds = %179
  br label %186

186:                                              ; preds = %191, %185
  %187 = load i8*, i8** %7, align 8
  %188 = load i8, i8* %187, align 1
  %189 = call i64 @isspace(i8 signext %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %186
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 8
  br label %186

194:                                              ; preds = %186
  %195 = load i8*, i8** %7, align 8
  store i8* %195, i8** %3, align 8
  br label %196

196:                                              ; preds = %194, %183, %168, %91, %56, %46, %37
  %197 = load i8*, i8** %3, align 8
  ret i8* %197
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strcasecmp(i8*, i64) #1

declare dso_local i32 @strncasecmp(i8*, i64, i32) #1

declare dso_local i32 @warnx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

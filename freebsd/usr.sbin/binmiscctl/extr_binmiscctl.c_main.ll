; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/binmiscctl/extr_binmiscctl.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/binmiscctl/extr_binmiscctl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, i8**, %struct.TYPE_13__*)*, i8* }
%struct.TYPE_13__ = type { i8*, i32 }

@KMOD_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Can't load %s kernel module: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@IBE_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error: requires at least one argument\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Error: Unknown command \22%s\22\00", align 1
@cmds = common dso_local global %struct.TYPE_12__* null, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Can't parse command-line for '%s' command\00", align 1
@CMD_LIST = common dso_local global i32 0, align 4
@CMD_LOOKUP = common dso_local global i32 0, align 4
@cmd_sysctl_name = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [85 x i8] c"Invalid interpreter name or --interpreter, --magic, --mask, or --size argument value\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"'%s' is not unique in activator list\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"'%s' is not found in activator list\00", align 1
@.str.7 = private unnamed_addr constant [65 x i8] c"Fatal: no more room in the activator list (limited to %d enties)\00", align 1
@IBE_MAX_ENTRIES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"Insufficient privileges for '%s' command\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Fatal: sysctlbyname() returned: %s\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Fatal: out of memory\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"Fatal: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64* null, i64** %14, align 8
  %17 = load i32, i32* @KMOD_NAME, align 4
  %18 = call i32 @modfind(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load i32, i32* @KMOD_NAME, align 4
  %22 = call i32 @kldload(i32 %21)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @KMOD_NAME, align 4
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @strerror(i32 %26)
  %28 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %24, %20
  br label %30

30:                                               ; preds = %29, %2
  %31 = call i32 @bzero(%struct.TYPE_13__* %8, i32 16)
  %32 = call i32 @bzero(%struct.TYPE_13__* %10, i32 16)
  %33 = load i32, i32* @IBE_VERSION, align 4
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %4, align 4
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i32 1
  store i8** %43, i8*** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @demux_cmd(i32 %44, i8** %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %52)
  br label %54

54:                                               ; preds = %49, %39
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i32 1
  store i8** %58, i8*** %5, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmds, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32 (i32, i8**, %struct.TYPE_13__*)*, i32 (i32, i8**, %struct.TYPE_13__*)** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = call i32 %64(i32 %65, i8** %66, %struct.TYPE_13__* %8)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %54
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmds, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %70, %54
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @CMD_LIST, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %9, align 8
  store i64 16, i64* %12, align 8
  br label %84

83:                                               ; preds = %78
  store i64* %13, i64** %14, align 8
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CMD_LOOKUP, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i64 16, i64* %13, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %11, align 8
  store i64* %13, i64** %14, align 8
  br label %89

89:                                               ; preds = %88, %84
  %90 = load i32*, i32** @cmd_sysctl_name, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %98 = load i64, i64* %12, align 8
  %99 = call i32 @sysctlbyname(i32 %94, %struct.TYPE_13__* %95, i64* %96, %struct.TYPE_13__* %97, i64 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %89
  %103 = load i32, i32* @errno, align 4
  switch i32 %103, label %125 [
    i32 131, label %104
    i32 132, label %106
    i32 130, label %110
    i32 129, label %114
    i32 128, label %117
  ]

104:                                              ; preds = %102
  %105 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  br label %129

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %108)
  br label %129

110:                                              ; preds = %102
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* %112)
  br label %129

114:                                              ; preds = %102
  %115 = load i32, i32* @IBE_MAX_ENTRIES, align 4
  %116 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.7, i64 0, i64 0), i32 %115)
  br label %129

117:                                              ; preds = %102
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @cmds, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @usage(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* %123)
  br label %129

125:                                              ; preds = %102
  %126 = load i32, i32* @errno, align 4
  %127 = call i32 @strerror(i32 %126)
  %128 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %125, %117, %114, %110, %106, %104
  br label %130

130:                                              ; preds = %129, %89
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @CMD_LOOKUP, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %130
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %136 = call i32 @printxbe(%struct.TYPE_13__* %135)
  br label %137

137:                                              ; preds = %134, %130
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @CMD_LIST, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %208

141:                                              ; preds = %137
  %142 = load i64, i64* %13, align 8
  %143 = icmp ugt i64 %142, 0
  br i1 %143, label %144, label %208

144:                                              ; preds = %141
  %145 = load i64, i64* %13, align 8
  %146 = call %struct.TYPE_13__* @malloc(i64 %145)
  store %struct.TYPE_13__* %146, %struct.TYPE_13__** %11, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %148 = icmp ne %struct.TYPE_13__* %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %144
  %150 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %144
  br label %152

152:                                              ; preds = %151, %183
  %153 = load i64, i64* %13, align 8
  store i64 %153, i64* %16, align 8
  %154 = load i32*, i32** @cmd_sysctl_name, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %160 = call i32 @sysctlbyname(i32 %158, %struct.TYPE_13__* %159, i64* %13, %struct.TYPE_13__* null, i64 0)
  store i32 %160, i32* %6, align 4
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %182

163:                                              ; preds = %152
  %164 = load i32, i32* @errno, align 4
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %16, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load i64, i64* %13, align 8
  %173 = add i64 %172, 16
  store i64 %173, i64* %13, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %175 = load i64, i64* %13, align 8
  %176 = call %struct.TYPE_13__* @realloc(%struct.TYPE_13__* %174, i64 %175)
  store %struct.TYPE_13__* %176, %struct.TYPE_13__** %11, align 8
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %178 = icmp ne %struct.TYPE_13__* %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %171
  %180 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %171
  br label %183

182:                                              ; preds = %167, %163, %152
  br label %184

183:                                              ; preds = %181
  br label %152

184:                                              ; preds = %182
  %185 = load i32, i32* %6, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %189 = call i32 @free(%struct.TYPE_13__* %188)
  %190 = load i32, i32* @errno, align 4
  %191 = call i32 @strerror(i32 %190)
  %192 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %187, %184
  store i64 0, i64* %15, align 8
  br label %194

194:                                              ; preds = %204, %193
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* %13, align 8
  %197 = udiv i64 %196, 16
  %198 = icmp ult i64 %195, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %194
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %201 = load i64, i64* %15, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i64 %201
  %203 = call i32 @printxbe(%struct.TYPE_13__* %202)
  br label %204

204:                                              ; preds = %199
  %205 = load i64, i64* %15, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %15, align 8
  br label %194

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %141, %137
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @modfind(i32) #1

declare dso_local i32 @kldload(i32) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @usage(i8*, ...) #1

declare dso_local i32 @demux_cmd(i32, i8**) #1

declare dso_local i32 @sysctlbyname(i32, %struct.TYPE_13__*, i64*, %struct.TYPE_13__*, i64) #1

declare dso_local i32 @printxbe(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_13__* @malloc(i64) #1

declare dso_local %struct.TYPE_13__* @realloc(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

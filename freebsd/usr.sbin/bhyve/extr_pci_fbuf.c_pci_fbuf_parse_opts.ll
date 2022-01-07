; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_parse_opts.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_fbuf.c_pci_fbuf_parse_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_fbuf_softc = type { i32, i32, i32, i8*, %struct.TYPE_2__, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@DEBUG_VERBOSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pci_fbuf option %s = %s\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"rfb\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@COLS_MAX = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@ROWS_MAX = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_fbuf_softc*, i8*)* @pci_fbuf_parse_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_fbuf_parse_opts(%struct.pci_fbuf_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.pci_fbuf_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_fbuf_softc* %0, %struct.pci_fbuf_softc** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = call i8* @strdup(i8* %11)
  store i8* %12, i8** %5, align 8
  store i8* %12, i8** %6, align 8
  br label %13

13:                                               ; preds = %214, %20, %2
  %14 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %14, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %215

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %22 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %13

23:                                               ; preds = %16
  %24 = load i8*, i8** %7, align 8
  %25 = call i8* @strchr(i8* %24, i8 signext 61)
  store i8* %25, i8** %8, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @pci_fbuf_usage(i8* %28)
  store i32 -1, i32* %10, align 4
  br label %216

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %8, align 8
  store i8 0, i8* %31, align 1
  %33 = load i32, i32* @DEBUG_VERBOSE, align 4
  %34 = load i8*, i8** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @DPRINTF(i32 %33, i8* %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %99, label %44

44:                                               ; preds = %40, %30
  %45 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %45, i8** %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %78

48:                                               ; preds = %44
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 91
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i8*, i8** %9, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %9, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i8*, i8** %9, align 8
  %59 = call i8* @strdup(i8* %58)
  %60 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %61 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %60, i32 0, i32 5
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 58
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %8, align 8
  br label %73

70:                                               ; preds = %57
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @pci_fbuf_usage(i8* %71)
  store i32 -1, i32* %10, align 4
  br label %216

73:                                               ; preds = %67
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @atoi(i8* %74)
  %76 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %77 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %76, i32 0, i32 6
  store i8* %75, i8** %77, align 8
  br label %98

78:                                               ; preds = %44
  %79 = load i8*, i8** %9, align 8
  store i8* %79, i8** %8, align 8
  %80 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  store i8* %80, i8** %9, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  %85 = call i8* @atoi(i8* %84)
  %86 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %87 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %86, i32 0, i32 6
  store i8* %85, i8** %87, align 8
  br label %97

88:                                               ; preds = %78
  %89 = load i8*, i8** %8, align 8
  %90 = call i8* @atoi(i8* %89)
  %91 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %92 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %91, i32 0, i32 6
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i8* @strdup(i8* %93)
  %95 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %96 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %88, %83
  br label %98

98:                                               ; preds = %97, %73
  br label %214

99:                                               ; preds = %40
  %100 = load i8*, i8** %7, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %134, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %8, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %109 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  br label %133

110:                                              ; preds = %103
  %111 = load i8*, i8** %8, align 8
  %112 = call i64 @strcmp(i8* %111, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %110
  %115 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %116 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %118 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %117, i32 0, i32 2
  store i32 0, i32* %118, align 8
  br label %132

119:                                              ; preds = %110
  %120 = load i8*, i8** %8, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %119
  %124 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %125 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %124, i32 0, i32 1
  store i32 1, i32* %125, align 4
  %126 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %127 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %126, i32 0, i32 2
  store i32 1, i32* %127, align 8
  br label %131

128:                                              ; preds = %119
  %129 = load i8*, i8** %7, align 8
  %130 = call i32 @pci_fbuf_usage(i8* %129)
  store i32 -1, i32* %10, align 4
  br label %216

131:                                              ; preds = %123
  br label %132

132:                                              ; preds = %131, %114
  br label %133

133:                                              ; preds = %132, %107
  br label %213

134:                                              ; preds = %99
  %135 = load i8*, i8** %7, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %166, label %138

138:                                              ; preds = %134
  %139 = load i8*, i8** %8, align 8
  %140 = call i8* @atoi(i8* %139)
  %141 = ptrtoint i8* %140 to i32
  %142 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %143 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  %145 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %146 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @COLS_MAX, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %138
  %152 = load i8*, i8** %7, align 8
  %153 = call i32 @pci_fbuf_usage(i8* %152)
  store i32 -1, i32* %10, align 4
  br label %216

154:                                              ; preds = %138
  %155 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %156 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %162 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  store i32 1920, i32* %163, align 8
  br label %164

164:                                              ; preds = %160, %154
  br label %165

165:                                              ; preds = %164
  br label %212

166:                                              ; preds = %134
  %167 = load i8*, i8** %7, align 8
  %168 = call i64 @strcmp(i8* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %198, label %170

170:                                              ; preds = %166
  %171 = load i8*, i8** %8, align 8
  %172 = call i8* @atoi(i8* %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %175 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  store i32 %173, i32* %176, align 4
  %177 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %178 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @ROWS_MAX, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %170
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @pci_fbuf_usage(i8* %184)
  store i32 -1, i32* %10, align 4
  br label %216

186:                                              ; preds = %170
  %187 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %188 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %186
  %193 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %194 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i32 0, i32 1
  store i32 1080, i32* %195, align 4
  br label %196

196:                                              ; preds = %192, %186
  br label %197

197:                                              ; preds = %196
  br label %211

198:                                              ; preds = %166
  %199 = load i8*, i8** %7, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %198
  %203 = load i8*, i8** %8, align 8
  %204 = call i8* @strdup(i8* %203)
  %205 = load %struct.pci_fbuf_softc*, %struct.pci_fbuf_softc** %3, align 8
  %206 = getelementptr inbounds %struct.pci_fbuf_softc, %struct.pci_fbuf_softc* %205, i32 0, i32 3
  store i8* %204, i8** %206, align 8
  br label %210

207:                                              ; preds = %198
  %208 = load i8*, i8** %7, align 8
  %209 = call i32 @pci_fbuf_usage(i8* %208)
  store i32 -1, i32* %10, align 4
  br label %216

210:                                              ; preds = %202
  br label %211

211:                                              ; preds = %210, %197
  br label %212

212:                                              ; preds = %211, %165
  br label %213

213:                                              ; preds = %212, %133
  br label %214

214:                                              ; preds = %213, %98
  br label %13

215:                                              ; preds = %13
  br label %216

216:                                              ; preds = %215, %207, %183, %151, %128, %70, %27
  %217 = load i8*, i8** %6, align 8
  %218 = call i32 @free(i8* %217)
  %219 = load i32, i32* %10, align 4
  ret i32 %219
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pci_fbuf_usage(i8*) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

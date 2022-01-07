; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen.c_altera_avgen_process_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/avgen/extr_altera_avgen.c_altera_avgen_process_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_avgen_softc = type { i32, i64, i32 }

@.str = private unnamed_addr constant [49 x i8] c"at least one of %s, %s, or %s must be specified\0A\00", align 1
@ALTERA_AVALON_STR_FILEIO = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_GEOMIO = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_MMAPIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"at most one of %s and (%s or %s) may be specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s requires %s be specified\0A\00", align 1
@ALTERA_AVALON_STR_DEVUNIT = common dso_local global i32 0, align 4
@ALTERA_AVALON_STR_DEVNAME = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"%s unsupported value %u\0A\00", align 1
@ALTERA_AVALON_STR_WIDTH = common dso_local global i32 0, align 4
@ALTERA_AVALON_FLAG_READ = common dso_local global i64 0, align 8
@ALTERA_AVALON_FLAG_WRITE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"invalid %s character %c\0A\00", align 1
@ALTERA_AVALON_FLAG_GEOM_READ = common dso_local global i64 0, align 8
@ALTERA_AVALON_FLAG_GEOM_WRITE = common dso_local global i64 0, align 8
@ALTERA_AVALON_FLAG_MMAP_READ = common dso_local global i64 0, align 8
@ALTERA_AVALON_FLAG_MMAP_WRITE = common dso_local global i64 0, align 8
@ALTERA_AVALON_FLAG_MMAP_EXEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.altera_avgen_softc*, i8*, i8*, i8*, i8*, i32)* @altera_avgen_process_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @altera_avgen_process_options(%struct.altera_avgen_softc* %0, i8* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.altera_avgen_softc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.altera_avgen_softc* %0, %struct.altera_avgen_softc** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %17 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %6
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i8*, i8** %11, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @ALTERA_AVALON_STR_FILEIO, align 4
  %30 = load i32, i32* @ALTERA_AVALON_STR_GEOMIO, align 4
  %31 = trunc i32 %30 to i8
  %32 = load i32, i32* @ALTERA_AVALON_STR_MMAPIO, align 4
  %33 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %29, i8 signext %31, i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %7, align 4
  br label %201

35:                                               ; preds = %24, %21, %6
  %36 = load i8*, i8** %10, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i8*, i8** %9, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %52

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @ALTERA_AVALON_STR_GEOMIO, align 4
  %47 = load i32, i32* @ALTERA_AVALON_STR_FILEIO, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* @ALTERA_AVALON_STR_MMAPIO, align 4
  %50 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %46, i8 signext %48, i32 %49)
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %7, align 4
  br label %201

52:                                               ; preds = %41, %35
  %53 = load i8*, i8** %12, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* @ALTERA_AVALON_STR_DEVUNIT, align 4
  %61 = load i8, i8* @ALTERA_AVALON_STR_DEVNAME, align 1
  %62 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8 signext %61)
  %63 = load i32, i32* @ENXIO, align 4
  store i32 %63, i32* %7, align 4
  br label %201

64:                                               ; preds = %55, %52
  %65 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %66 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %69 [
    i32 1, label %68
    i32 2, label %68
    i32 4, label %68
  ]

68:                                               ; preds = %64, %64, %64
  br label %78

69:                                               ; preds = %64
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* @ALTERA_AVALON_STR_WIDTH, align 4
  %72 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %73 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = trunc i32 %74 to i8
  %76 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %71, i8 signext %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %7, align 4
  br label %201

78:                                               ; preds = %68
  %79 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %80 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %118

83:                                               ; preds = %78
  %84 = load i8*, i8** %9, align 8
  store i8* %84, i8** %14, align 8
  br label %85

85:                                               ; preds = %114, %83
  %86 = load i8*, i8** %14, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %106 [
    i32 129, label %94
    i32 128, label %100
  ]

94:                                               ; preds = %90
  %95 = load i64, i64* @ALTERA_AVALON_FLAG_READ, align 8
  %96 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %97 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %95
  store i64 %99, i64* %97, align 8
  br label %113

100:                                              ; preds = %90
  %101 = load i64, i64* @ALTERA_AVALON_FLAG_WRITE, align 8
  %102 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %103 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = or i64 %104, %101
  store i64 %105, i64* %103, align 8
  br label %113

106:                                              ; preds = %90
  %107 = load i32, i32* %15, align 4
  %108 = load i32, i32* @ALTERA_AVALON_STR_FILEIO, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = load i8, i8* %109, align 1
  %111 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %107, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %108, i8 signext %110)
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %7, align 4
  br label %201

113:                                              ; preds = %100, %94
  br label %114

114:                                              ; preds = %113
  %115 = load i8*, i8** %14, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %14, align 8
  br label %85

117:                                              ; preds = %85
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i8*, i8** %10, align 8
  %120 = icmp ne i8* %119, null
  br i1 %120, label %121, label %156

121:                                              ; preds = %118
  %122 = load i8*, i8** %10, align 8
  store i8* %122, i8** %14, align 8
  br label %123

123:                                              ; preds = %152, %121
  %124 = load i8*, i8** %14, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %155

128:                                              ; preds = %123
  %129 = load i8*, i8** %14, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  switch i32 %131, label %144 [
    i32 129, label %132
    i32 128, label %138
  ]

132:                                              ; preds = %128
  %133 = load i64, i64* @ALTERA_AVALON_FLAG_GEOM_READ, align 8
  %134 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %135 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = or i64 %136, %133
  store i64 %137, i64* %135, align 8
  br label %151

138:                                              ; preds = %128
  %139 = load i64, i64* @ALTERA_AVALON_FLAG_GEOM_WRITE, align 8
  %140 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %141 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = or i64 %142, %139
  store i64 %143, i64* %141, align 8
  br label %151

144:                                              ; preds = %128
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* @ALTERA_AVALON_STR_GEOMIO, align 4
  %147 = load i8*, i8** %14, align 8
  %148 = load i8, i8* %147, align 1
  %149 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %146, i8 signext %148)
  %150 = load i32, i32* @ENXIO, align 4
  store i32 %150, i32* %7, align 4
  br label %201

151:                                              ; preds = %138, %132
  br label %152

152:                                              ; preds = %151
  %153 = load i8*, i8** %14, align 8
  %154 = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %154, i8** %14, align 8
  br label %123

155:                                              ; preds = %123
  br label %156

156:                                              ; preds = %155, %118
  %157 = load i8*, i8** %11, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %200

159:                                              ; preds = %156
  %160 = load i8*, i8** %11, align 8
  store i8* %160, i8** %14, align 8
  br label %161

161:                                              ; preds = %196, %159
  %162 = load i8*, i8** %14, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %199

166:                                              ; preds = %161
  %167 = load i8*, i8** %14, align 8
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  switch i32 %169, label %188 [
    i32 129, label %170
    i32 128, label %176
    i32 130, label %182
  ]

170:                                              ; preds = %166
  %171 = load i64, i64* @ALTERA_AVALON_FLAG_MMAP_READ, align 8
  %172 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %173 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = or i64 %174, %171
  store i64 %175, i64* %173, align 8
  br label %195

176:                                              ; preds = %166
  %177 = load i64, i64* @ALTERA_AVALON_FLAG_MMAP_WRITE, align 8
  %178 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %179 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = or i64 %180, %177
  store i64 %181, i64* %179, align 8
  br label %195

182:                                              ; preds = %166
  %183 = load i64, i64* @ALTERA_AVALON_FLAG_MMAP_EXEC, align 8
  %184 = load %struct.altera_avgen_softc*, %struct.altera_avgen_softc** %8, align 8
  %185 = getelementptr inbounds %struct.altera_avgen_softc, %struct.altera_avgen_softc* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = or i64 %186, %183
  store i64 %187, i64* %185, align 8
  br label %195

188:                                              ; preds = %166
  %189 = load i32, i32* %15, align 4
  %190 = load i32, i32* @ALTERA_AVALON_STR_MMAPIO, align 4
  %191 = load i8*, i8** %14, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call i32 (i32, i8*, i32, i8, ...) @device_printf(i32 %189, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %190, i8 signext %192)
  %194 = load i32, i32* @ENXIO, align 4
  store i32 %194, i32* %7, align 4
  br label %201

195:                                              ; preds = %182, %176, %170
  br label %196

196:                                              ; preds = %195
  %197 = load i8*, i8** %14, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %14, align 8
  br label %161

199:                                              ; preds = %161
  br label %200

200:                                              ; preds = %199, %156
  store i32 0, i32* %7, align 4
  br label %201

201:                                              ; preds = %200, %188, %144, %106, %69, %58, %44, %27
  %202 = load i32, i32* %7, align 4
  ret i32 %202
}

declare dso_local i32 @device_printf(i32, i8*, i32, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

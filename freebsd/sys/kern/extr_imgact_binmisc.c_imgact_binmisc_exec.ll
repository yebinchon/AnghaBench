; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_binmisc.c_imgact_binmisc_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i8*, i32, i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_4__ = type { i64, i8*, i64 }
%struct.sbuf = type { i32 }

@interp_list_sx = common dso_local global i32 0, align 4
@IMGACT_BINMISC = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/dev/fd/%d\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: Unknown macro #%c sequence in interpreter string\0A\00", align 1
@KMOD_NAME = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @imgact_binmisc_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imgact_binmisc_exec(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.sbuf*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %13 = load %struct.image_params*, %struct.image_params** %3, align 8
  %14 = getelementptr inbounds %struct.image_params, %struct.image_params* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = call i32 @sx_slock(i32* @interp_list_sx)
  %17 = load i8*, i8** %4, align 8
  %18 = call %struct.TYPE_4__* @imgact_binmisc_find_interpreter(i8* %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %9, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = call i32 @sx_sunlock(i32* @interp_list_sx)
  store i32 -1, i32* %2, align 4
  br label %198

22:                                               ; preds = %1
  %23 = load %struct.image_params*, %struct.image_params** %3, align 8
  %24 = getelementptr inbounds %struct.image_params, %struct.image_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IMGACT_BINMISC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = call i32 @sx_sunlock(i32* @interp_list_sx)
  %31 = load i32, i32* @ENOEXEC, align 4
  store i32 %31, i32* %2, align 4
  br label %198

32:                                               ; preds = %22
  %33 = load i32, i32* @IMGACT_BINMISC, align 4
  %34 = load %struct.image_params*, %struct.image_params** %3, align 8
  %35 = getelementptr inbounds %struct.image_params, %struct.image_params* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.image_params*, %struct.image_params** %3, align 8
  %39 = getelementptr inbounds %struct.image_params, %struct.image_params* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load %struct.image_params*, %struct.image_params** %3, align 8
  %46 = getelementptr inbounds %struct.image_params, %struct.image_params* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %5, align 8
  store %struct.sbuf* null, %struct.sbuf** %10, align 8
  br label %63

50:                                               ; preds = %32
  %51 = call %struct.sbuf* (...) @sbuf_new_auto()
  store %struct.sbuf* %51, %struct.sbuf** %10, align 8
  %52 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %53 = load %struct.image_params*, %struct.image_params** %3, align 8
  %54 = getelementptr inbounds %struct.image_params, %struct.image_params* %53, i32 0, i32 3
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @sbuf_printf(%struct.sbuf* %52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %60 = call i32 @sbuf_finish(%struct.sbuf* %59)
  %61 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %62 = call i8* @sbuf_data(%struct.sbuf* %61)
  store i8* %62, i8** %5, align 8
  br label %63

63:                                               ; preds = %50, %44
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %7, align 8
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %11, align 8
  br label %70

70:                                               ; preds = %63, %99
  %71 = load i8*, i8** %11, align 8
  %72 = call i8* @strchr(i8* %71, i8 signext 35)
  store i8* %72, i8** %11, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %102

76:                                               ; preds = %70
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %91 [
    i32 128, label %82
    i32 129, label %85
  ]

82:                                               ; preds = %76
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %83, -1
  store i64 %84, i64* %7, align 8
  br label %99

85:                                               ; preds = %76
  %86 = load i8*, i8** %5, align 8
  %87 = call i64 @strlen(i8* %86)
  %88 = sub i64 %87, 2
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %7, align 8
  br label %99

91:                                               ; preds = %76
  %92 = call i32 @sx_sunlock(i32* @interp_list_sx)
  %93 = load i8*, i8** @KMOD_NAME, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  %97 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8* %93, i8 signext %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %6, align 4
  br label %190

99:                                               ; preds = %85, %82
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %11, align 8
  br label %70

102:                                              ; preds = %75
  %103 = load %struct.image_params*, %struct.image_params** %3, align 8
  %104 = getelementptr inbounds %struct.image_params, %struct.image_params* %103, i32 0, i32 3
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = call i32 @exec_args_adjust_args(%struct.TYPE_5__* %105, i32 0, i64 %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %102
  %111 = call i32 @sx_sunlock(i32* @interp_list_sx)
  br label %190

112:                                              ; preds = %102
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.image_params*, %struct.image_params** %3, align 8
  %117 = getelementptr inbounds %struct.image_params, %struct.image_params* %116, i32 0, i32 3
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %121, %115
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %119, align 8
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %11, align 8
  %127 = load %struct.image_params*, %struct.image_params** %3, align 8
  %128 = getelementptr inbounds %struct.image_params, %struct.image_params* %127, i32 0, i32 3
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  store i8* %131, i8** %12, align 8
  br label %132

132:                                              ; preds = %173, %112
  %133 = load i8*, i8** %11, align 8
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %176

137:                                              ; preds = %132
  %138 = load i8*, i8** %11, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  switch i32 %140, label %168 [
    i32 35, label %141
    i32 32, label %165
  ]

141:                                              ; preds = %137
  %142 = load i8*, i8** %11, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %11, align 8
  %144 = load i8*, i8** %11, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  switch i32 %146, label %163 [
    i32 128, label %147
    i32 129, label %150
  ]

147:                                              ; preds = %141
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %12, align 8
  store i8 35, i8* %148, align 1
  br label %164

150:                                              ; preds = %141
  %151 = load i8*, i8** %5, align 8
  %152 = call i64 @strlen(i8* %151)
  store i64 %152, i64* %8, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i8*, i8** %12, align 8
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i32 @memcpy(i8* %155, i8* %156, i64 %157)
  %159 = load i64, i64* %8, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 %159
  store i8* %161, i8** %12, align 8
  br label %162

162:                                              ; preds = %154, %150
  br label %164

163:                                              ; preds = %141
  br label %164

164:                                              ; preds = %163, %162, %147
  br label %173

165:                                              ; preds = %137
  %166 = load i8*, i8** %12, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %12, align 8
  store i8 0, i8* %166, align 1
  br label %173

168:                                              ; preds = %137
  %169 = load i8*, i8** %11, align 8
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %12, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %12, align 8
  store i8 %170, i8* %171, align 1
  br label %173

173:                                              ; preds = %168, %165, %164
  %174 = load i8*, i8** %11, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %11, align 8
  br label %132

176:                                              ; preds = %132
  %177 = load i8*, i8** %12, align 8
  store i8 0, i8* %177, align 1
  %178 = call i32 @sx_sunlock(i32* @interp_list_sx)
  %179 = load i32, i32* %6, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %176
  %182 = load %struct.image_params*, %struct.image_params** %3, align 8
  %183 = getelementptr inbounds %struct.image_params, %struct.image_params* %182, i32 0, i32 3
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = load %struct.image_params*, %struct.image_params** %3, align 8
  %188 = getelementptr inbounds %struct.image_params, %struct.image_params* %187, i32 0, i32 2
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %181, %176
  br label %190

190:                                              ; preds = %189, %110, %91
  %191 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %192 = icmp ne %struct.sbuf* %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.sbuf*, %struct.sbuf** %10, align 8
  %195 = call i32 @sbuf_delete(%struct.sbuf* %194)
  br label %196

196:                                              ; preds = %193, %190
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %2, align 4
  br label %198

198:                                              ; preds = %196, %29, %20
  %199 = load i32, i32* %2, align 4
  ret i32 %199
}

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.TYPE_4__* @imgact_binmisc_find_interpreter(i8*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local %struct.sbuf* @sbuf_new_auto(...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8 signext) #1

declare dso_local i32 @exec_args_adjust_args(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

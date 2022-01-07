; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_writedata.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_writedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.variable = type { i32, %struct.TYPE_2__, %struct.variable* }
%struct.TYPE_2__ = type { i32, i32 }

@vars = common dso_local global %struct.variable* null, align 8
@zflag = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Got %s report %d (%d bytes):\00", align 1
@hid_input = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@hid_output = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"feature\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"hid_get_report(rid %d)\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Can't get %s report %d (%d bytes). Will be initialized with zeros.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Setting %s report %d (%d bytes):\00", align 1
@hid_feature = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"hid_set_report(rid %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @writedata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writedata(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.variable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %221, %2
  %13 = load i32, i32* %11, align 4
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %224

15:                                               ; preds = %12
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %217, %15
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 256
  br i1 %18, label %19, label %220

19:                                               ; preds = %16
  %20 = load %struct.variable*, %struct.variable** @vars, align 8
  store %struct.variable* %20, %struct.variable** %5, align 8
  br label %21

21:                                               ; preds = %40, %19
  %22 = load %struct.variable*, %struct.variable** %5, align 8
  %23 = icmp ne %struct.variable* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.variable*, %struct.variable** %5, align 8
  %27 = getelementptr inbounds %struct.variable, %struct.variable* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.variable*, %struct.variable** %5, align 8
  %34 = getelementptr inbounds %struct.variable, %struct.variable* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %32, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %44

39:                                               ; preds = %31, %24
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.variable*, %struct.variable** %5, align 8
  %42 = getelementptr inbounds %struct.variable, %struct.variable* %41, i32 0, i32 2
  %43 = load %struct.variable*, %struct.variable** %42, align 8
  store %struct.variable* %43, %struct.variable** %5, align 8
  br label %21

44:                                               ; preds = %38, %21
  %45 = load %struct.variable*, %struct.variable** %5, align 8
  %46 = icmp eq %struct.variable* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %217

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @hid_report_size(i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp sle i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %217

56:                                               ; preds = %48
  %57 = load i32, i32* %6, align 4
  %58 = call i32* @malloc(i32 %57)
  store i32* %58, i32** %10, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @memset(i32* %59, i32 0, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @zflag, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %110, label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @hid_get_report(i32 %68, i32 %69, i32* %70, i32 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %67
  %75 = load i64, i64* @verbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @hid_input, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @hid_output, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %88

88:                                               ; preds = %82, %81
  %89 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %81 ], [ %87, %82 ]
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %89, i32 %90, i32 %91)
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %104, %88
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %93

107:                                              ; preds = %93
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %74
  br label %136

110:                                              ; preds = %67, %56
  %111 = load i32, i32* @zflag, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i64, i64* @verbose, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* @hid_input, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %129

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @hid_output, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  br label %129

129:                                              ; preds = %123, %122
  %130 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %122 ], [ %128, %123 ]
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0), i8* %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %129, %113
  br label %135

135:                                              ; preds = %134, %110
  br label %136

136:                                              ; preds = %135, %109
  %137 = load %struct.variable*, %struct.variable** @vars, align 8
  store %struct.variable* %137, %struct.variable** %5, align 8
  br label %138

138:                                              ; preds = %164, %136
  %139 = load %struct.variable*, %struct.variable** %5, align 8
  %140 = icmp ne %struct.variable* %139, null
  br i1 %140, label %141, label %168

141:                                              ; preds = %138
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.variable*, %struct.variable** %5, align 8
  %144 = getelementptr inbounds %struct.variable, %struct.variable* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %142, %146
  br i1 %147, label %155, label %148

148:                                              ; preds = %141
  %149 = load i32, i32* %11, align 4
  %150 = load %struct.variable*, %struct.variable** %5, align 8
  %151 = getelementptr inbounds %struct.variable, %struct.variable* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %149, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %148, %141
  br label %164

156:                                              ; preds = %148
  %157 = load i32*, i32** %10, align 8
  %158 = load %struct.variable*, %struct.variable** %5, align 8
  %159 = getelementptr inbounds %struct.variable, %struct.variable* %158, i32 0, i32 1
  %160 = load %struct.variable*, %struct.variable** %5, align 8
  %161 = getelementptr inbounds %struct.variable, %struct.variable* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @hid_set_data(i32* %157, %struct.TYPE_2__* %159, i32 %162)
  br label %164

164:                                              ; preds = %156, %155
  %165 = load %struct.variable*, %struct.variable** %5, align 8
  %166 = getelementptr inbounds %struct.variable, %struct.variable* %165, i32 0, i32 2
  %167 = load %struct.variable*, %struct.variable** %166, align 8
  store %struct.variable* %167, %struct.variable** %5, align 8
  br label %138

168:                                              ; preds = %138
  %169 = load i64, i64* @verbose, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* @hid_output, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  br label %182

176:                                              ; preds = %171
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* @hid_feature, align 4
  %179 = icmp eq i32 %177, %178
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  br label %182

182:                                              ; preds = %176, %175
  %183 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %175 ], [ %181, %176 ]
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %6, align 4
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %183, i32 %184, i32 %185)
  store i32 0, i32* %7, align 4
  br label %187

187:                                              ; preds = %198, %182
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* %6, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %201

191:                                              ; preds = %187
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %7, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %196)
  br label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %7, align 4
  br label %187

201:                                              ; preds = %187
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %168
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* %11, align 4
  %206 = load i32*, i32** %10, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @hid_set_report(i32 %204, i32 %205, i32* %206, i32 %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %203
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %212)
  br label %214

214:                                              ; preds = %211, %203
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @free(i32* %215)
  br label %217

217:                                              ; preds = %214, %55, %47
  %218 = load i32, i32* %9, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %9, align 4
  br label %16

220:                                              ; preds = %16
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %11, align 4
  %223 = add i32 %222, 1
  store i32 %223, i32* %11, align 4
  br label %12

224:                                              ; preds = %12
  ret void
}

declare dso_local i32 @hid_report_size(i32, i32, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @hid_get_report(i32, i32, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @hid_set_data(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @hid_set_report(i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

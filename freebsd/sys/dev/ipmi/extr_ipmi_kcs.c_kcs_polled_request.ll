; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_polled_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_kcs_polled_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32 }
%struct.ipmi_request = type { i32, i32, i32, i32*, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [28 x i8] c"KCS: Failed to start write\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"KCS: Failed to write address\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"KCS: Failed to write command\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"KCS: Failed to write data byte %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"KCS: Failed to write last dta byte\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"KCS: Failed to read address\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"KCS: Reply address mismatch\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"KCS: Failed to read command\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"KCS: Command mismatch\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [37 x i8] c"KCS: Failed to read completion code\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"KCS: Read failed on byte %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"KCS: Read short: %zd buffer, %d actual\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipmi_softc*, %struct.ipmi_request*)* @kcs_polled_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kcs_polled_request(%struct.ipmi_softc* %0, %struct.ipmi_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipmi_softc*, align 8
  %5 = alloca %struct.ipmi_request*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %4, align 8
  store %struct.ipmi_request* %1, %struct.ipmi_request** %5, align 8
  %10 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %11 = call i32 @IPMI_IO_LOCK(%struct.ipmi_softc* %10)
  %12 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %13 = call i32 @kcs_start_write(%struct.ipmi_softc* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %17 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, ...) @device_printf(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %219

20:                                               ; preds = %2
  %21 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %22 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %23 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @kcs_write_byte(%struct.ipmi_softc* %21, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %219

32:                                               ; preds = %20
  %33 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %34 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %39 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %40 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @kcs_write_last_byte(%struct.ipmi_softc* %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %46 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %219

49:                                               ; preds = %37
  br label %103

50:                                               ; preds = %32
  %51 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %52 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %53 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @kcs_write_byte(%struct.ipmi_softc* %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %59 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %219

62:                                               ; preds = %50
  %63 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %64 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  store i32* %65, i32** %6, align 8
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %88, %62
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %69 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %91

73:                                               ; preds = %66
  %74 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %6, align 8
  %77 = load i32, i32* %75, align 4
  %78 = call i32 @kcs_write_byte(%struct.ipmi_softc* %74, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %219

87:                                               ; preds = %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @kcs_write_last_byte(%struct.ipmi_softc* %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %91
  %98 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %99 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %219

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %105 = call i32 @kcs_read_byte(%struct.ipmi_softc* %104, i32* %7)
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %219

112:                                              ; preds = %103
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %115 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @IPMI_REPLY_ADDR(i32 %116)
  %118 = icmp ne i32 %113, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %219

124:                                              ; preds = %112
  %125 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %126 = call i32 @kcs_read_byte(%struct.ipmi_softc* %125, i32* %7)
  %127 = icmp ne i32 %126, 1
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, ...) @device_printf(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %219

133:                                              ; preds = %124
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %136 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %134, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %141 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i32, i8*, ...) @device_printf(i32 %142, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %219

144:                                              ; preds = %133
  %145 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %146 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %147 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %146, i32 0, i32 4
  %148 = call i32 @kcs_read_byte(%struct.ipmi_softc* %145, i32* %147)
  %149 = icmp ne i32 %148, 1
  br i1 %149, label %150, label %159

150:                                              ; preds = %144
  %151 = load i64, i64* @bootverbose, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %150
  %154 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %155 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %156, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %158

158:                                              ; preds = %153, %150
  br label %219

159:                                              ; preds = %144
  store i32 0, i32* %8, align 4
  br label %160

160:                                              ; preds = %190, %159
  %161 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %162 = call i32 @kcs_read_byte(%struct.ipmi_softc* %161, i32* %7)
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %9, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %160
  %166 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %167 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  %171 = call i32 (i32, i8*, ...) @device_printf(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i32 %170)
  br label %219

172:                                              ; preds = %160
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  br label %193

176:                                              ; preds = %172
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %179 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %176
  %183 = load i32, i32* %7, align 4
  %184 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %185 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %184, i32 0, i32 6
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  store i32 %183, i32* %189, align 4
  br label %190

190:                                              ; preds = %182, %176
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %8, align 4
  br label %160

193:                                              ; preds = %175
  %194 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %195 = call i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc* %194)
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %198 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %197, i32 0, i32 7
  store i32 %196, i32* %198, align 8
  %199 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %200 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %218

204:                                              ; preds = %193
  %205 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %206 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %204
  %210 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %211 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ipmi_request*, %struct.ipmi_request** %5, align 8
  %214 = getelementptr inbounds %struct.ipmi_request, %struct.ipmi_request* %213, i32 0, i32 5
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %8, align 4
  %217 = call i32 (i32, i8*, ...) @device_printf(i32 %212, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %209, %204, %193
  store i32 1, i32* %3, align 4
  br label %224

219:                                              ; preds = %165, %158, %139, %128, %119, %107, %97, %80, %57, %44, %27, %15
  %220 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %221 = call i32 @kcs_error(%struct.ipmi_softc* %220)
  %222 = load %struct.ipmi_softc*, %struct.ipmi_softc** %4, align 8
  %223 = call i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc* %222)
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %219, %218
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @IPMI_IO_LOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @kcs_start_write(%struct.ipmi_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @kcs_write_byte(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @kcs_write_last_byte(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @kcs_read_byte(%struct.ipmi_softc*, i32*) #1

declare dso_local i32 @IPMI_REPLY_ADDR(i32) #1

declare dso_local i32 @IPMI_IO_UNLOCK(%struct.ipmi_softc*) #1

declare dso_local i32 @kcs_error(%struct.ipmi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

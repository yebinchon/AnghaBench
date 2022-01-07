; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bcmfw/extr_bcmfw.c_bcmfw_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bcmfw/extr_bcmfw.c_bcmfw_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BCMFW_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"/dev/%s.%d\00", align 1
@BCMFW_INTR_EP = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not open(%s). %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@BCMFW_BULK_EP = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Could not read(%s). %s (%d)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Could not write(/dev/%s.%d). %s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Could not read(/dev/%s.%d). %s (%d)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"%s: Memory select failed (%c)\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"%s: Could not load firmware (%c)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @bcmfw_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmfw_load_firmware(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load i32, i32* @BCMFW_BSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %18 = trunc i64 %15 to i32
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @BCMFW_INTR_EP, align 4
  %21 = call i32 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20)
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = call i32 @open(i8* %17, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %3
  %26 = load i32, i32* @LOG_ERR, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @strerror(i32 %27)
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8 signext %29, i32 %30)
  br label %213

32:                                               ; preds = %3
  %33 = trunc i64 %15 to i32
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* @BCMFW_BULK_EP, align 4
  %36 = call i32 @snprintf(i8* %17, i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34, i32 %35)
  %37 = load i32, i32* @O_WRONLY, align 4
  %38 = call i32 @open(i8* %17, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @LOG_ERR, align 4
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = trunc i32 %43 to i8
  %45 = load i32, i32* @errno, align 4
  %46 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8 signext %44, i32 %45)
  br label %213

47:                                               ; preds = %32
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* @O_RDONLY, align 4
  %50 = call i32 @open(i8* %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* @errno, align 4
  %56 = call i32 @strerror(i32 %55)
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %54, i8 signext %57, i32 %58)
  br label %213

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %94, %60
  %62 = load i32, i32* %11, align 4
  %63 = trunc i64 %15 to i32
  %64 = call i32 @read(i32 %62, i8* %17, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32, i32* @LOG_ERR, align 4
  %69 = load i8*, i8** %5, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = trunc i32 %71 to i8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %69, i8 signext %72, i32 %73)
  br label %213

75:                                               ; preds = %61
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  br label %95

79:                                               ; preds = %75
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @write(i32 %80, i8* %17, i32 %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %79
  %86 = load i32, i32* @LOG_ERR, align 4
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* @BCMFW_BULK_EP, align 4
  %89 = trunc i32 %88 to i8
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = load i32, i32* @errno, align 4
  %93 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %87, i8 signext %89, i32 %91, i32 %92)
  br label %213

94:                                               ; preds = %79
  br label %61

95:                                               ; preds = %78
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @close(i32 %96)
  store i32 -1, i32* %11, align 4
  %98 = call i32 @usleep(i32 10)
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @write(i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i32, i32* @LOG_ERR, align 4
  %104 = load i8*, i8** %4, align 8
  %105 = load i32, i32* @BCMFW_BULK_EP, align 4
  %106 = trunc i32 %105 to i8
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 @strerror(i32 %107)
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %104, i8 signext %106, i32 %108, i32 %109)
  br label %213

111:                                              ; preds = %95
  %112 = load i32, i32* %9, align 4
  %113 = trunc i64 %15 to i32
  %114 = call i32 @read(i32 %112, i8* %17, i32 %113)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %111
  %117 = load i32, i32* @LOG_ERR, align 4
  %118 = load i8*, i8** %4, align 8
  %119 = load i32, i32* @BCMFW_INTR_EP, align 4
  %120 = trunc i32 %119 to i8
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @strerror(i32 %121)
  %123 = load i32, i32* @errno, align 4
  %124 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %117, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %118, i8 signext %120, i32 %122, i32 %123)
  br label %213

125:                                              ; preds = %111
  %126 = getelementptr inbounds i8, i8* %17, i64 0
  %127 = load i8, i8* %126, align 16
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 35
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i8*, i8** %4, align 8
  %133 = getelementptr inbounds i8, i8* %17, i64 0
  %134 = load i8, i8* %133, align 16
  %135 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %131, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i8* %132, i8 signext %134)
  br label %213

136:                                              ; preds = %125
  %137 = load i8*, i8** %6, align 8
  %138 = load i32, i32* @O_RDONLY, align 4
  %139 = call i32 @open(i8* %137, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* @LOG_ERR, align 4
  %143 = load i8*, i8** %6, align 8
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 @strerror(i32 %144)
  %146 = trunc i32 %145 to i8
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %143, i8 signext %146, i32 %147)
  br label %213

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %183, %149
  %151 = load i32, i32* %11, align 4
  %152 = trunc i64 %15 to i32
  %153 = call i32 @read(i32 %151, i8* %17, i32 %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %150
  %157 = load i32, i32* @LOG_ERR, align 4
  %158 = load i8*, i8** %6, align 8
  %159 = load i32, i32* @errno, align 4
  %160 = call i32 @strerror(i32 %159)
  %161 = trunc i32 %160 to i8
  %162 = load i32, i32* @errno, align 4
  %163 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %157, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %158, i8 signext %161, i32 %162)
  br label %213

164:                                              ; preds = %150
  %165 = load i32, i32* %13, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  br label %184

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %13, align 4
  %171 = call i32 @write(i32 %169, i8* %17, i32 %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load i32, i32* @LOG_ERR, align 4
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* @BCMFW_BULK_EP, align 4
  %178 = trunc i32 %177 to i8
  %179 = load i32, i32* @errno, align 4
  %180 = call i32 @strerror(i32 %179)
  %181 = load i32, i32* @errno, align 4
  %182 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %175, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %176, i8 signext %178, i32 %180, i32 %181)
  br label %213

183:                                              ; preds = %168
  br label %150

184:                                              ; preds = %167
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @close(i32 %185)
  store i32 -1, i32* %11, align 4
  %187 = load i32, i32* %9, align 4
  %188 = trunc i64 %15 to i32
  %189 = call i32 @read(i32 %187, i8* %17, i32 %188)
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = load i32, i32* @LOG_ERR, align 4
  %193 = load i8*, i8** %4, align 8
  %194 = load i32, i32* @BCMFW_INTR_EP, align 4
  %195 = trunc i32 %194 to i8
  %196 = load i32, i32* @errno, align 4
  %197 = call i32 @strerror(i32 %196)
  %198 = load i32, i32* @errno, align 4
  %199 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %192, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i8* %193, i8 signext %195, i32 %197, i32 %198)
  br label %213

200:                                              ; preds = %184
  %201 = getelementptr inbounds i8, i8* %17, i64 0
  %202 = load i8, i8* %201, align 16
  %203 = sext i8 %202 to i32
  %204 = icmp ne i32 %203, 46
  br i1 %204, label %205, label %211

205:                                              ; preds = %200
  %206 = load i32, i32* @LOG_ERR, align 4
  %207 = load i8*, i8** %4, align 8
  %208 = getelementptr inbounds i8, i8* %17, i64 0
  %209 = load i8, i8* %208, align 16
  %210 = call i32 (i32, i8*, i8*, i8, ...) @syslog(i32 %206, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %207, i8 signext %209)
  br label %213

211:                                              ; preds = %200
  %212 = call i32 @usleep(i32 500000)
  store i32 0, i32* %12, align 4
  br label %213

213:                                              ; preds = %211, %205, %191, %174, %156, %141, %130, %116, %102, %85, %67, %52, %40, %25
  %214 = load i32, i32* %11, align 4
  %215 = icmp ne i32 %214, -1
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = call i32 @close(i32 %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, -1
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = call i32 @close(i32 %223)
  br label %225

225:                                              ; preds = %222, %219
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, -1
  br i1 %227, label %228, label %231

228:                                              ; preds = %225
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @close(i32 %229)
  br label %231

231:                                              ; preds = %228, %225
  %232 = load i32, i32* %12, align 4
  %233 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %233)
  ret i32 %232
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8 signext, ...) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @write(i32, i8*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @usleep(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

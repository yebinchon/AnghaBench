; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_readcf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_ctlinfo.c_ctl_readcf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cjobinfo = type { i8*, i32*, i32*, i32, i8*, i8*, i8*, i8*, i8*, %struct.cjprivate* }
%struct.cjprivate = type { i8*, i32, i8*, %struct.cjobinfo, i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: ctl_readcf error fopen(%s): %s\00", align 1
@errno = common dso_local global i32 0, align 4
@CTI_LINEMAX = common dso_local global i64 0, align 8
@ctl_dbgline = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c".na.\00", align 1
@DEBUGREADCF_FNAME = common dso_local global i8* null, align 8
@ctl_dbgfile = common dso_local global i32* null, align 8
@ctl_dbgstat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cjobinfo* @ctl_readcf(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.cjobinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cjprivate*, align 8
  %11 = alloca %struct.cjobinfo*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @LOG_ERR, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 @syslog(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %21, i8* %22, i32 %24)
  store %struct.cjobinfo* null, %struct.cjobinfo** %3, align 8
  br label %217

26:                                               ; preds = %2
  %27 = call i64 @roundup(i64 120, i32 8)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @strlen(i8* %29)
  %31 = add i64 %28, %30
  %32 = add i64 %31, 1
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = call i64 @roundup(i64 %33, i32 8)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = load i64, i64* @CTI_LINEMAX, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @roundup(i64 %38, i32 8)
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* %12, align 8
  %41 = call i8* @malloc(i64 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %26
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @fclose(i32* %45)
  store %struct.cjobinfo* null, %struct.cjobinfo** %3, align 8
  br label %217

47:                                               ; preds = %26
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %12, align 8
  %50 = call i32 @memset(i8* %48, i32 0, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to %struct.cjprivate*
  store %struct.cjprivate* %52, %struct.cjprivate** %10, align 8
  %53 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %54 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %55 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %55, i32 0, i32 9
  store %struct.cjprivate* %53, %struct.cjprivate** %56, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %13, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %61 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %61, i32 0, i32 0
  store i8* %59, i8** %62, align 8
  %63 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %64 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strcpy(i8* %66, i8* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %73 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %14, align 8
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  %78 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %79 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %12, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 -1
  %84 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %85 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %88 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %87, i32 0, i32 5
  store i32* %86, i32** %88, align 8
  %89 = load i8*, i8** %4, align 8
  %90 = call i8* @strdup(i8* %89)
  %91 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %92 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %92, i32 0, i32 8
  store i8* %90, i8** %93, align 8
  store i64 0, i64* @ctl_dbgline, align 8
  %94 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %95 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %94, i32 0, i32 3
  store %struct.cjobinfo* %95, %struct.cjobinfo** %11, align 8
  %96 = load %struct.cjobinfo*, %struct.cjobinfo** %11, align 8
  %97 = call i8* @ctl_getline(%struct.cjobinfo* %96)
  store i8* %97, i8** %7, align 8
  br label %98

98:                                               ; preds = %187, %47
  %99 = load i8*, i8** %7, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %190

101:                                              ; preds = %98
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %7, align 8
  %104 = load i8, i8* %102, align 1
  %105 = sext i8 %104 to i32
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  switch i32 %106, label %176 [
    i32 67, label %107
    i32 72, label %113
    i32 74, label %126
    i32 76, label %132
    i32 77, label %138
    i32 80, label %156
  ]

107:                                              ; preds = %101
  %108 = load i8*, i8** %7, align 8
  %109 = call i8* @strdup(i8* %108)
  %110 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %111 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %111, i32 0, i32 7
  store i8* %109, i8** %112, align 8
  br label %187

113:                                              ; preds = %101
  %114 = load i8*, i8** %7, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %187

119:                                              ; preds = %113
  %120 = load i8*, i8** %7, align 8
  %121 = call i8* @strdup(i8* %120)
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %124 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %124, i32 0, i32 2
  store i32* %122, i32** %125, align 8
  br label %187

126:                                              ; preds = %101
  %127 = load i8*, i8** %7, align 8
  %128 = call i8* @strdup(i8* %127)
  %129 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %130 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %130, i32 0, i32 6
  store i8* %128, i8** %131, align 8
  br label %187

132:                                              ; preds = %101
  %133 = load i8*, i8** %7, align 8
  %134 = call i8* @strdup(i8* %133)
  %135 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %136 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %135, i32 0, i32 3
  %137 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %136, i32 0, i32 5
  store i8* %134, i8** %137, align 8
  br label %187

138:                                              ; preds = %101
  %139 = load i8*, i8** %7, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 45
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %187

144:                                              ; preds = %138
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %187

150:                                              ; preds = %144
  %151 = load i8*, i8** %7, align 8
  %152 = call i8* @strdup(i8* %151)
  %153 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %154 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %154, i32 0, i32 4
  store i8* %152, i8** %155, align 8
  br label %187

156:                                              ; preds = %101
  %157 = load i8*, i8** %7, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  br label %187

162:                                              ; preds = %156
  %163 = load i8*, i8** %7, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 45
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = load i8*, i8** %7, align 8
  store i8 95, i8* %168, align 1
  br label %169

169:                                              ; preds = %167, %162
  %170 = load i8*, i8** %7, align 8
  %171 = call i8* @strdup(i8* %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %174 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %174, i32 0, i32 1
  store i32* %172, i32** %175, align 8
  br label %187

176:                                              ; preds = %101
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @islower(i32 %177) #3
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %182 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %176
  br label %187

187:                                              ; preds = %186, %169, %161, %150, %149, %143, %132, %126, %119, %118, %107
  %188 = load %struct.cjobinfo*, %struct.cjobinfo** %11, align 8
  %189 = call i8* @ctl_getline(%struct.cjobinfo* %188)
  store i8* %189, i8** %7, align 8
  br label %98

190:                                              ; preds = %98
  %191 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %192 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = icmp eq i32* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %198 = bitcast i8* %197 to i32*
  %199 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %200 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %200, i32 0, i32 2
  store i32* %198, i32** %201, align 8
  br label %202

202:                                              ; preds = %196, %190
  %203 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %204 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %204, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = icmp eq i32* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = call i8* @strdup(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %210 = bitcast i8* %209 to i32*
  %211 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %212 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.cjobinfo, %struct.cjobinfo* %212, i32 0, i32 1
  store i32* %210, i32** %213, align 8
  br label %214

214:                                              ; preds = %208, %202
  %215 = load %struct.cjprivate*, %struct.cjprivate** %10, align 8
  %216 = getelementptr inbounds %struct.cjprivate, %struct.cjprivate* %215, i32 0, i32 3
  store %struct.cjobinfo* %216, %struct.cjobinfo** %3, align 8
  br label %217

217:                                              ; preds = %214, %44, %19
  %218 = load %struct.cjobinfo*, %struct.cjobinfo** %3, align 8
  ret %struct.cjobinfo* %218
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @ctl_getline(%struct.cjobinfo*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @islower(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

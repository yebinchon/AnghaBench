; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hpt27xx/extr_hpt27xx_osm_bsd.c_hpt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, i32*, i32 }

@HPT_IOCTL_MAGIC = common dso_local global i32 0, align 4
@HPT_IOCTL_MAGIC32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"<8>ioctl=%x in=%p len=%d out=%p len=%d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@HPT_IOCTL_RESULT_OK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"invalid command!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, i32, %struct.thread*)* @hpt_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpt_ioctl(%struct.cdev* %0, i32 %1, i32 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %197 [
    i32 129, label %19
    i32 128, label %195
  ]

19:                                               ; preds = %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HPT_IOCTL_MAGIC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HPT_IOCTL_MAGIC32, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %193

31:                                               ; preds = %25, %19
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KdPrint(i8* %48)
  %50 = call i32 @memset(%struct.TYPE_6__* %13, i32 0, i32 48)
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 6
  store i32 %53, i32* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 5
  store i32* %14, i32** %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %93

67:                                               ; preds = %31
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @M_DEVBUF, align 4
  %71 = load i32, i32* @M_WAITOK, align 4
  %72 = call i8* @malloc(i32 %69, i32 %70, i32 %71)
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  store i32* %73, i32** %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %67
  br label %173

79:                                               ; preds = %67
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to i8*
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @copyin(i8* %83, i32* %85, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %173

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %31
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @M_DEVBUF, align 4
  %101 = load i32, i32* @M_WAITOK, align 4
  %102 = load i32, i32* @M_ZERO, align 4
  %103 = or i32 %101, %102
  %104 = call i8* @malloc(i32 %99, i32 %100, i32 %103)
  %105 = bitcast i8* %104 to i32*
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store i32* %105, i32** %106, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %111, label %110

110:                                              ; preds = %97
  br label %173

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %93
  %113 = call i32 @mtx_lock(i32* @Giant)
  %114 = call i32 @hpt_do_ioctl(%struct.TYPE_6__* %13)
  %115 = call i32 @mtx_unlock(i32* @Giant)
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @HPT_IOCTL_RESULT_OK, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %172

120:                                              ; preds = %112
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @copyout(i32* %127, i8* %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  br label %173

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %120
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %139
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @copyout(i32* %14, i8* %148, i32 4)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %173

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %139
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* @M_DEVBUF, align 4
  %161 = call i32 @free(i32* %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %153
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = icmp ne i32* %164, null
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* @M_DEVBUF, align 4
  %170 = call i32 @free(i32* %168, i32 %169)
  br label %171

171:                                              ; preds = %166, %162
  store i32 0, i32* %6, align 4
  br label %200

172:                                              ; preds = %112
  br label %173

173:                                              ; preds = %172, %151, %137, %110, %91, %78
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @M_DEVBUF, align 4
  %181 = call i32 @free(i32* %179, i32 %180)
  br label %182

182:                                              ; preds = %177, %173
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* @M_DEVBUF, align 4
  %190 = call i32 @free(i32* %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %182
  %192 = load i32, i32* @EFAULT, align 4
  store i32 %192, i32* %6, align 4
  br label %200

193:                                              ; preds = %25
  %194 = load i32, i32* @EFAULT, align 4
  store i32 %194, i32* %6, align 4
  br label %200

195:                                              ; preds = %5
  %196 = call i32 (...) @hpt_rescan_bus()
  store i32 %196, i32* %6, align 4
  br label %200

197:                                              ; preds = %5
  %198 = call i32 @KdPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %199 = load i32, i32* @EFAULT, align 4
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %197, %195, %193, %191, %171
  %201 = load i32, i32* %6, align 4
  ret i32 %201
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @hpt_do_ioctl(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @hpt_rescan_bus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

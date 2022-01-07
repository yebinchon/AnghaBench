; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptnr/extr_hptnr_osm_bsd.c_hpt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32*, i32, i32*, i32 }

@HPT_IOCTL_MAGIC = common dso_local global i32 0, align 4
@HPT_IOCTL_MAGIC32 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ioctl=%x in=%p len=%d out=%p len=%d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
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
  switch i32 %18, label %195 [
    i32 129, label %19
    i32 128, label %193
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
  br i1 %30, label %31, label %191

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
  br label %171

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
  br label %171

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
  br label %171

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111, %93
  %113 = call i32 @hpt_do_ioctl(%struct.TYPE_6__* %13)
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @HPT_IOCTL_RESULT_OK, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %170

118:                                              ; preds = %112
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @copyout(i32* %125, i8* %129, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %123
  br label %171

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %118
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %137
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i8*
  %147 = call i32 @copyout(i32* %14, i8* %146, i32 4)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %171

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %137
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = icmp ne i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @M_DEVBUF, align 4
  %159 = call i32 @free(i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %155, %151
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @M_DEVBUF, align 4
  %168 = call i32 @free(i32* %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %160
  store i32 0, i32* %6, align 4
  br label %198

170:                                              ; preds = %112
  br label %171

171:                                              ; preds = %170, %149, %135, %110, %91, %78
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @M_DEVBUF, align 4
  %179 = call i32 @free(i32* %177, i32 %178)
  br label %180

180:                                              ; preds = %175, %171
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @M_DEVBUF, align 4
  %188 = call i32 @free(i32* %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %180
  %190 = load i32, i32* @EFAULT, align 4
  store i32 %190, i32* %6, align 4
  br label %198

191:                                              ; preds = %25
  %192 = load i32, i32* @EFAULT, align 4
  store i32 %192, i32* %6, align 4
  br label %198

193:                                              ; preds = %5
  %194 = call i32 (...) @hpt_rescan_bus()
  store i32 %194, i32* %6, align 4
  br label %198

195:                                              ; preds = %5
  %196 = call i32 @KdPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %197 = load i32, i32* @EFAULT, align 4
  store i32 %197, i32* %6, align 4
  br label %198

198:                                              ; preds = %195, %193, %191, %189, %169
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @KdPrint(i8*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @hpt_do_ioctl(%struct.TYPE_6__*) #1

declare dso_local i32 @copyout(i32*, i8*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @hpt_rescan_bus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

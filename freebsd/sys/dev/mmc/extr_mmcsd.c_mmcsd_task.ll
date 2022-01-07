; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_part = type { i64, i64, i64, i32, %struct.TYPE_2__*, i64, i32, i32, %struct.mmcsd_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.mmcsd_softc = type { i32, i32, i32, i32, i32 }
%struct.bio = type { i64, i32, i32, i64, i32, i8* }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mmcsd disk jobqueue\00", align 1
@BIO_FLUSH = common dso_local global i64 0, align 8
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i8* null, align 8
@BIO_ERROR = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@EROFS = common dso_local global i8* null, align 8
@LOG_PPS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Partition switch error\0A\00", align 1
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_DELETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mmcsd_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmcsd_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.mmcsd_part*, align 8
  %6 = alloca %struct.mmcsd_softc*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.mmcsd_part*
  store %struct.mmcsd_part* %13, %struct.mmcsd_part** %5, align 8
  %14 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %15 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %14, i32 0, i32 8
  %16 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %15, align 8
  store %struct.mmcsd_softc* %16, %struct.mmcsd_softc** %6, align 8
  %17 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %18 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %21 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %1, %73, %87, %222
  %24 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %25 = call i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part* %24)
  br label %26

26:                                               ; preds = %45, %23
  %27 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %28 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %225

32:                                               ; preds = %26
  %33 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %34 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %33, i32 0, i32 7
  %35 = call %struct.bio* @bioq_takefirst(i32* %34)
  store %struct.bio* %35, %struct.bio** %7, align 8
  %36 = load %struct.bio*, %struct.bio** %7, align 8
  %37 = icmp eq %struct.bio* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %40 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %41 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %40, i32 0, i32 6
  %42 = load i32, i32* @PRIBIO, align 4
  %43 = call i32 @msleep(%struct.mmcsd_part* %39, i32* %41, i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %44

44:                                               ; preds = %38, %32
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.bio*, %struct.bio** %7, align 8
  %47 = icmp eq %struct.bio* %46, null
  br i1 %47, label %26, label %48

48:                                               ; preds = %45
  %49 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %50 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %49)
  %51 = load %struct.bio*, %struct.bio** %7, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @BIO_FLUSH, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i64 @__predict_false(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %48
  %60 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %61 = call i32 @mmcsd_flush_cache(%struct.mmcsd_softc* %60)
  %62 = load i32, i32* @MMC_ERR_NONE, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** @EIO, align 8
  %66 = load %struct.bio*, %struct.bio** %7, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @BIO_ERROR, align 4
  %69 = load %struct.bio*, %struct.bio** %7, align 8
  %70 = getelementptr inbounds %struct.bio, %struct.bio* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.bio*, %struct.bio** %7, align 8
  %75 = call i32 @biodone(%struct.bio* %74)
  br label %23

76:                                               ; preds = %48
  %77 = load %struct.bio*, %struct.bio** %7, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BIO_READ, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %103

82:                                               ; preds = %76
  %83 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %84 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i8*, i8** @EROFS, align 8
  %89 = load %struct.bio*, %struct.bio** %7, align 8
  %90 = getelementptr inbounds %struct.bio, %struct.bio* %89, i32 0, i32 5
  store i8* %88, i8** %90, align 8
  %91 = load %struct.bio*, %struct.bio** %7, align 8
  %92 = getelementptr inbounds %struct.bio, %struct.bio* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bio*, %struct.bio** %7, align 8
  %95 = getelementptr inbounds %struct.bio, %struct.bio* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @BIO_ERROR, align 4
  %97 = load %struct.bio*, %struct.bio** %7, align 8
  %98 = getelementptr inbounds %struct.bio, %struct.bio* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.bio*, %struct.bio** %7, align 8
  %102 = call i32 @biodone(%struct.bio* %101)
  br label %23

103:                                              ; preds = %82, %76
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @MMCBUS_ACQUIRE_BUS(i32 %104, i32 %105)
  %107 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %108 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %107, i32 0, i32 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %11, align 4
  %112 = load %struct.bio*, %struct.bio** %7, align 8
  %113 = getelementptr inbounds %struct.bio, %struct.bio* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %3, align 8
  %115 = load %struct.bio*, %struct.bio** %7, align 8
  %116 = getelementptr inbounds %struct.bio, %struct.bio* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.bio*, %struct.bio** %7, align 8
  %119 = getelementptr inbounds %struct.bio, %struct.bio* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sdiv i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %117, %123
  store i64 %124, i64* %4, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %128 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %131 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @mmcsd_switch_part(i32 %125, i32 %126, i32 %129, i32 %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* @MMC_ERR_NONE, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %103
  %138 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %139 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %138, i32 0, i32 1
  %140 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %6, align 8
  %141 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %140, i32 0, i32 0
  %142 = load i32, i32* @LOG_PPS, align 4
  %143 = call i64 @ppsratecheck(i32* %139, i32* %141, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @device_printf(i32 %146, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %148

148:                                              ; preds = %145, %137
  br label %194

149:                                              ; preds = %103
  %150 = load %struct.bio*, %struct.bio** %7, align 8
  %151 = getelementptr inbounds %struct.bio, %struct.bio* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @BIO_READ, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.bio*, %struct.bio** %7, align 8
  %157 = getelementptr inbounds %struct.bio, %struct.bio* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @BIO_WRITE, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %155, %149
  %162 = load i64, i64* %3, align 8
  %163 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %164 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %162, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %161
  %168 = load i64, i64* %4, align 8
  %169 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %170 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %175 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  %176 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %177 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %176, i32 0, i32 2
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %173, %167, %161
  %179 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %180 = load %struct.bio*, %struct.bio** %7, align 8
  %181 = call i64 @mmcsd_rw(%struct.mmcsd_part* %179, %struct.bio* %180)
  store i64 %181, i64* %3, align 8
  br label %193

182:                                              ; preds = %155
  %183 = load %struct.bio*, %struct.bio** %7, align 8
  %184 = getelementptr inbounds %struct.bio, %struct.bio* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @BIO_DELETE, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %182
  %189 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %190 = load %struct.bio*, %struct.bio** %7, align 8
  %191 = call i64 @mmcsd_delete(%struct.mmcsd_part* %189, %struct.bio* %190)
  store i64 %191, i64* %3, align 8
  br label %192

192:                                              ; preds = %188, %182
  br label %193

193:                                              ; preds = %192, %178
  br label %194

194:                                              ; preds = %193, %148
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @MMCBUS_RELEASE_BUS(i32 %195, i32 %196)
  %198 = load i64, i64* %3, align 8
  %199 = load i64, i64* %4, align 8
  %200 = icmp slt i64 %198, %199
  br i1 %200, label %201, label %219

201:                                              ; preds = %194
  %202 = load i8*, i8** @EIO, align 8
  %203 = load %struct.bio*, %struct.bio** %7, align 8
  %204 = getelementptr inbounds %struct.bio, %struct.bio* %203, i32 0, i32 5
  store i8* %202, i8** %204, align 8
  %205 = load i64, i64* %4, align 8
  %206 = load i64, i64* %3, align 8
  %207 = sub nsw i64 %205, %206
  %208 = load i32, i32* %11, align 4
  %209 = sext i32 %208 to i64
  %210 = mul nsw i64 %207, %209
  %211 = trunc i64 %210 to i32
  %212 = load %struct.bio*, %struct.bio** %7, align 8
  %213 = getelementptr inbounds %struct.bio, %struct.bio* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @BIO_ERROR, align 4
  %215 = load %struct.bio*, %struct.bio** %7, align 8
  %216 = getelementptr inbounds %struct.bio, %struct.bio* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = or i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %222

219:                                              ; preds = %194
  %220 = load %struct.bio*, %struct.bio** %7, align 8
  %221 = getelementptr inbounds %struct.bio, %struct.bio* %220, i32 0, i32 1
  store i32 0, i32* %221, align 8
  br label %222

222:                                              ; preds = %219, %201
  %223 = load %struct.bio*, %struct.bio** %7, align 8
  %224 = call i32 @biodone(%struct.bio* %223)
  br label %23

225:                                              ; preds = %31
  %226 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %227 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %226, i32 0, i32 0
  store i64 -1, i64* %227, align 8
  %228 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %229 = call i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part* %228)
  %230 = load %struct.mmcsd_part*, %struct.mmcsd_part** %5, align 8
  %231 = call i32 @wakeup(%struct.mmcsd_part* %230)
  %232 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @MMCSD_DISK_LOCK(%struct.mmcsd_part*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @msleep(%struct.mmcsd_part*, i32*, i32, i8*, i32) #1

declare dso_local i32 @MMCSD_DISK_UNLOCK(%struct.mmcsd_part*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @mmcsd_flush_cache(%struct.mmcsd_softc*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

declare dso_local i32 @MMCBUS_ACQUIRE_BUS(i32, i32) #1

declare dso_local i32 @mmcsd_switch_part(i32, i32, i32, i32) #1

declare dso_local i64 @ppsratecheck(i32*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mmcsd_rw(%struct.mmcsd_part*, %struct.bio*) #1

declare dso_local i64 @mmcsd_delete(%struct.mmcsd_part*, %struct.bio*) #1

declare dso_local i32 @MMCBUS_RELEASE_BUS(i32, i32) #1

declare dso_local i32 @wakeup(%struct.mmcsd_part*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

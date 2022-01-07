; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_kern_aio_waitcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_kern_aio_waitcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_6__, %struct.proc* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.proc = type { %struct.kaioinfo* }
%struct.kaioinfo = type { i32, i32 }
%struct.aiocb = type { i32 }
%struct.timespec = type { i64, i32 }
%struct.aiocb_ops = type { i32 (%struct.aiocb*, i64)*, i32 (%struct.aiocb*, i64)*, i32 (%struct.aiocb**, %struct.aiocb*)* }
%struct.timeval = type { i32 }
%struct.kaiocb = type { i32, i64, i64, i64, i64, %struct.TYPE_5__, %struct.aiocb* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@KAIO_WAKEUP = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"aiowc\00", align 1
@ERESTART = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@KAIOCB_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.aiocb**, %struct.timespec*, %struct.aiocb_ops*)* @kern_aio_waitcomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_aio_waitcomplete(%struct.thread* %0, %struct.aiocb** %1, %struct.timespec* %2, %struct.aiocb_ops* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.aiocb**, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca %struct.aiocb_ops*, align 8
  %10 = alloca %struct.proc*, align 8
  %11 = alloca %struct.timeval, align 4
  %12 = alloca %struct.kaioinfo*, align 8
  %13 = alloca %struct.kaiocb*, align 8
  %14 = alloca %struct.aiocb*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.aiocb** %1, %struct.aiocb*** %7, align 8
  store %struct.timespec* %2, %struct.timespec** %8, align 8
  store %struct.aiocb_ops* %3, %struct.aiocb_ops** %9, align 8
  %18 = load %struct.thread*, %struct.thread** %6, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 2
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %10, align 8
  %21 = load %struct.aiocb_ops*, %struct.aiocb_ops** %9, align 8
  %22 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %21, i32 0, i32 2
  %23 = load i32 (%struct.aiocb**, %struct.aiocb*)*, i32 (%struct.aiocb**, %struct.aiocb*)** %22, align 8
  %24 = load %struct.aiocb**, %struct.aiocb*** %7, align 8
  %25 = call i32 %23(%struct.aiocb** %24, %struct.aiocb* null)
  %26 = load %struct.timespec*, %struct.timespec** %8, align 8
  %27 = icmp eq %struct.timespec* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 0, i32* %17, align 4
  br label %62

29:                                               ; preds = %4
  %30 = load %struct.timespec*, %struct.timespec** %8, align 8
  %31 = getelementptr inbounds %struct.timespec, %struct.timespec* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.timespec*, %struct.timespec** %8, align 8
  %36 = getelementptr inbounds %struct.timespec, %struct.timespec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %17, align 4
  br label %61

40:                                               ; preds = %34, %29
  %41 = load %struct.timespec*, %struct.timespec** %8, align 8
  %42 = getelementptr inbounds %struct.timespec, %struct.timespec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load %struct.timespec*, %struct.timespec** %8, align 8
  %47 = getelementptr inbounds %struct.timespec, %struct.timespec* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 1000000000
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %40
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %5, align 4
  br label %210

52:                                               ; preds = %45
  %53 = load %struct.timespec*, %struct.timespec** %8, align 8
  %54 = call i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval* %11, %struct.timespec* %53)
  %55 = call i64 @itimerfix(%struct.timeval* %11)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %210

59:                                               ; preds = %52
  %60 = call i32 @tvtohz(%struct.timeval* %11)
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %59, %39
  br label %62

62:                                               ; preds = %61, %28
  %63 = load %struct.proc*, %struct.proc** %10, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 0
  %65 = load %struct.kaioinfo*, %struct.kaioinfo** %64, align 8
  %66 = icmp eq %struct.kaioinfo* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load %struct.proc*, %struct.proc** %10, align 8
  %69 = call i32 @aio_init_aioinfo(%struct.proc* %68)
  br label %70

70:                                               ; preds = %67, %62
  %71 = load %struct.proc*, %struct.proc** %10, align 8
  %72 = getelementptr inbounds %struct.proc, %struct.proc* %71, i32 0, i32 0
  %73 = load %struct.kaioinfo*, %struct.kaioinfo** %72, align 8
  store %struct.kaioinfo* %73, %struct.kaioinfo** %12, align 8
  store i64 0, i64* %15, align 8
  store %struct.kaiocb* null, %struct.kaiocb** %13, align 8
  %74 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %75 = call i32 @AIO_LOCK(%struct.kaioinfo* %74)
  br label %76

76:                                               ; preds = %113, %70
  %77 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %78 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %77, i32 0, i32 1
  %79 = call %struct.kaiocb* @TAILQ_FIRST(i32* %78)
  store %struct.kaiocb* %79, %struct.kaiocb** %13, align 8
  %80 = icmp eq %struct.kaiocb* %79, null
  br i1 %80, label %81, label %114

81:                                               ; preds = %76
  %82 = load i32, i32* %17, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @EWOULDBLOCK, align 8
  store i64 %85, i64* %15, align 8
  br label %114

86:                                               ; preds = %81
  %87 = load i32, i32* @KAIO_WAKEUP, align 4
  %88 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %89 = getelementptr inbounds %struct.kaioinfo, %struct.kaioinfo* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  %92 = load %struct.proc*, %struct.proc** %10, align 8
  %93 = getelementptr inbounds %struct.proc, %struct.proc* %92, i32 0, i32 0
  %94 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %95 = call i32 @AIO_MTX(%struct.kaioinfo* %94)
  %96 = load i32, i32* @PRIBIO, align 4
  %97 = load i32, i32* @PCATCH, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %17, align 4
  %100 = call i64 @msleep(%struct.kaioinfo** %93, i32 %95, i32 %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i64 %100, i64* %15, align 8
  %101 = load i32, i32* %17, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %86
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @ERESTART, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  %108 = load i64, i64* @EINTR, align 8
  store i64 %108, i64* %15, align 8
  br label %109

109:                                              ; preds = %107, %103, %86
  %110 = load i64, i64* %15, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %114

113:                                              ; preds = %109
  br label %76

114:                                              ; preds = %112, %84, %76
  %115 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %116 = icmp ne %struct.kaiocb* %115, null
  br i1 %116, label %117, label %204

117:                                              ; preds = %114
  %118 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %119 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @KAIOCB_FINISHED, align 4
  %122 = and i32 %120, %121
  %123 = call i32 @MPASS(i32 %122)
  %124 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %125 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %124, i32 0, i32 6
  %126 = load %struct.aiocb*, %struct.aiocb** %125, align 8
  store %struct.aiocb* %126, %struct.aiocb** %14, align 8
  %127 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %128 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %16, align 8
  %132 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %133 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %15, align 8
  %137 = load i64, i64* %16, align 8
  %138 = load %struct.thread*, %struct.thread** %6, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %137, i64* %141, align 8
  %142 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %143 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.thread*, %struct.thread** %6, align 8
  %146 = getelementptr inbounds %struct.thread, %struct.thread* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %144
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %147, align 4
  %152 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %153 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.thread*, %struct.thread** %6, align 8
  %156 = getelementptr inbounds %struct.thread, %struct.thread* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %154
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %157, align 8
  %162 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %163 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.thread*, %struct.thread** %6, align 8
  %166 = getelementptr inbounds %struct.thread, %struct.thread* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %164
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %167, align 4
  %172 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %173 = getelementptr inbounds %struct.kaiocb, %struct.kaiocb* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.thread*, %struct.thread** %6, align 8
  %176 = getelementptr inbounds %struct.thread, %struct.thread* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %174
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 8
  %182 = load %struct.kaiocb*, %struct.kaiocb** %13, align 8
  %183 = call i32 @aio_free_entry(%struct.kaiocb* %182)
  %184 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %185 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %184)
  %186 = load %struct.aiocb_ops*, %struct.aiocb_ops** %9, align 8
  %187 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %186, i32 0, i32 2
  %188 = load i32 (%struct.aiocb**, %struct.aiocb*)*, i32 (%struct.aiocb**, %struct.aiocb*)** %187, align 8
  %189 = load %struct.aiocb**, %struct.aiocb*** %7, align 8
  %190 = load %struct.aiocb*, %struct.aiocb** %14, align 8
  %191 = call i32 %188(%struct.aiocb** %189, %struct.aiocb* %190)
  %192 = load %struct.aiocb_ops*, %struct.aiocb_ops** %9, align 8
  %193 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %192, i32 0, i32 1
  %194 = load i32 (%struct.aiocb*, i64)*, i32 (%struct.aiocb*, i64)** %193, align 8
  %195 = load %struct.aiocb*, %struct.aiocb** %14, align 8
  %196 = load i64, i64* %15, align 8
  %197 = call i32 %194(%struct.aiocb* %195, i64 %196)
  %198 = load %struct.aiocb_ops*, %struct.aiocb_ops** %9, align 8
  %199 = getelementptr inbounds %struct.aiocb_ops, %struct.aiocb_ops* %198, i32 0, i32 0
  %200 = load i32 (%struct.aiocb*, i64)*, i32 (%struct.aiocb*, i64)** %199, align 8
  %201 = load %struct.aiocb*, %struct.aiocb** %14, align 8
  %202 = load i64, i64* %16, align 8
  %203 = call i32 %200(%struct.aiocb* %201, i64 %202)
  br label %207

204:                                              ; preds = %114
  %205 = load %struct.kaioinfo*, %struct.kaioinfo** %12, align 8
  %206 = call i32 @AIO_UNLOCK(%struct.kaioinfo* %205)
  br label %207

207:                                              ; preds = %204, %117
  %208 = load i64, i64* %15, align 8
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %207, %57, %50
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local i32 @TIMESPEC_TO_TIMEVAL(%struct.timeval*, %struct.timespec*) #1

declare dso_local i64 @itimerfix(%struct.timeval*) #1

declare dso_local i32 @tvtohz(%struct.timeval*) #1

declare dso_local i32 @aio_init_aioinfo(%struct.proc*) #1

declare dso_local i32 @AIO_LOCK(%struct.kaioinfo*) #1

declare dso_local %struct.kaiocb* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @msleep(%struct.kaioinfo**, i32, i32, i8*, i32) #1

declare dso_local i32 @AIO_MTX(%struct.kaioinfo*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @aio_free_entry(%struct.kaiocb*) #1

declare dso_local i32 @AIO_UNLOCK(%struct.kaioinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

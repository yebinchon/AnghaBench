; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_cv_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucond = type { i32, i32, i32 }
%struct.umutex = type { i32 }
%struct.timespec = type { i32 }
%struct.abs_timeout = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@TYPE_CV = common dso_local global i32 0, align 4
@CVWAIT_CLOCKID = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CVWAIT_ABSTIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"ucond\00", align 1
@UQF_UMTXQ = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.ucond*, %struct.umutex*, %struct.timespec*, i32)* @do_cv_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cv_wait(%struct.thread* %0, %struct.ucond* %1, %struct.umutex* %2, %struct.timespec* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ucond*, align 8
  %9 = alloca %struct.umutex*, align 8
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.abs_timeout, align 4
  %13 = alloca %struct.umtx_q*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.ucond* %1, %struct.ucond** %8, align 8
  store %struct.umutex* %2, %struct.umutex** %9, align 8
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 0
  %21 = load %struct.umtx_q*, %struct.umtx_q** %20, align 8
  store %struct.umtx_q* %21, %struct.umtx_q** %13, align 8
  %22 = load %struct.ucond*, %struct.ucond** %8, align 8
  %23 = getelementptr inbounds %struct.ucond, %struct.ucond* %22, i32 0, i32 2
  %24 = call i32 @fueword32(i32* %23, i64* %14)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @EFAULT, align 4
  store i32 %28, i32* %6, align 4
  br label %187

29:                                               ; preds = %5
  %30 = load %struct.ucond*, %struct.ucond** %8, align 8
  %31 = load i32, i32* @TYPE_CV, align 4
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @GET_SHARE(i64 %32)
  %34 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %35 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %34, i32 0, i32 1
  %36 = call i32 @umtx_key_get(%struct.ucond* %30, i32 %31, i32 %33, i32* %35)
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %17, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %17, align 4
  store i32 %40, i32* %6, align 4
  br label %187

41:                                               ; preds = %29
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @CVWAIT_CLOCKID, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.ucond*, %struct.ucond** %8, align 8
  %48 = getelementptr inbounds %struct.ucond, %struct.ucond* %47, i32 0, i32 1
  %49 = call i32 @fueword32(i32* %48, i64* %15)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %54 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %53, i32 0, i32 1
  %55 = call i32 @umtx_key_release(i32* %54)
  %56 = load i32, i32* @EFAULT, align 4
  store i32 %56, i32* %6, align 4
  br label %187

57:                                               ; preds = %46
  %58 = load i64, i64* %15, align 8
  %59 = load i64, i64* @CLOCK_REALTIME, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i64, i64* %15, align 8
  %63 = load i64, i64* @CLOCK_THREAD_CPUTIME_ID, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %57
  %66 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %67 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %66, i32 0, i32 1
  %68 = call i32 @umtx_key_release(i32* %67)
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %6, align 4
  br label %187

70:                                               ; preds = %61
  br label %73

71:                                               ; preds = %41
  %72 = load i64, i64* @CLOCK_REALTIME, align 8
  store i64 %72, i64* %15, align 8
  br label %73

73:                                               ; preds = %71, %70
  %74 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %75 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %74, i32 0, i32 1
  %76 = call i32 @umtxq_lock(i32* %75)
  %77 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %78 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %77, i32 0, i32 1
  %79 = call i32 @umtxq_busy(i32* %78)
  %80 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %81 = call i32 @umtxq_insert(%struct.umtx_q* %80)
  %82 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %83 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %82, i32 0, i32 1
  %84 = call i32 @umtxq_unlock(i32* %83)
  %85 = load %struct.ucond*, %struct.ucond** %8, align 8
  %86 = getelementptr inbounds %struct.ucond, %struct.ucond* %85, i32 0, i32 0
  %87 = call i32 @fueword32(i32* %86, i64* %16)
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %73
  %91 = load i64, i64* %16, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load %struct.ucond*, %struct.ucond** %8, align 8
  %95 = getelementptr inbounds %struct.ucond, %struct.ucond* %94, i32 0, i32 0
  %96 = call i32 @suword32(i32* %95, i32 1)
  br label %97

97:                                               ; preds = %93, %90, %73
  %98 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %99 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %98, i32 0, i32 1
  %100 = call i32 @umtxq_unbusy_unlocked(i32* %99)
  %101 = load %struct.thread*, %struct.thread** %7, align 8
  %102 = load %struct.umutex*, %struct.umutex** %9, align 8
  %103 = call i32 @do_unlock_umutex(%struct.thread* %101, %struct.umutex* %102, i32 0)
  store i32 %103, i32* %17, align 4
  %104 = load %struct.timespec*, %struct.timespec** %10, align 8
  %105 = icmp ne %struct.timespec* %104, null
  br i1 %105, label %106, label %115

106:                                              ; preds = %97
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @CVWAIT_ABSTIME, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = load %struct.timespec*, %struct.timespec** %10, align 8
  %114 = call i32 @abs_timeout_init(%struct.abs_timeout* %12, i64 %107, i32 %112, %struct.timespec* %113)
  br label %115

115:                                              ; preds = %106, %97
  %116 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %117 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %116, i32 0, i32 1
  %118 = call i32 @umtxq_lock(i32* %117)
  %119 = load i32, i32* %17, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %115
  %122 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %123 = load %struct.timespec*, %struct.timespec** %10, align 8
  %124 = icmp eq %struct.timespec* %123, null
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  br label %127

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %125
  %128 = phi %struct.abs_timeout* [ null, %125 ], [ %12, %126 ]
  %129 = call i32 @umtxq_sleep(%struct.umtx_q* %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %128)
  store i32 %129, i32* %17, align 4
  br label %130

130:                                              ; preds = %127, %115
  %131 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %132 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @UQF_UMTXQ, align 4
  %135 = and i32 %133, %134
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 0, i32* %17, align 4
  br label %179

138:                                              ; preds = %130
  %139 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %140 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %139, i32 0, i32 1
  %141 = call i32 @umtxq_busy(i32* %140)
  %142 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %143 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @UQF_UMTXQ, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %169

148:                                              ; preds = %138
  %149 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %150 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %18, align 4
  %154 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %155 = call i32 @umtxq_remove(%struct.umtx_q* %154)
  %156 = load i32, i32* %18, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %168

158:                                              ; preds = %148
  %159 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %160 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %159, i32 0, i32 1
  %161 = call i32 @umtxq_unlock(i32* %160)
  %162 = load %struct.ucond*, %struct.ucond** %8, align 8
  %163 = getelementptr inbounds %struct.ucond, %struct.ucond* %162, i32 0, i32 0
  %164 = call i32 @suword32(i32* %163, i32 0)
  %165 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %166 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %165, i32 0, i32 1
  %167 = call i32 @umtxq_lock(i32* %166)
  br label %168

168:                                              ; preds = %158, %148
  br label %169

169:                                              ; preds = %168, %138
  %170 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %171 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %170, i32 0, i32 1
  %172 = call i32 @umtxq_unbusy(i32* %171)
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* @ERESTART, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %169
  %177 = load i32, i32* @EINTR, align 4
  store i32 %177, i32* %17, align 4
  br label %178

178:                                              ; preds = %176, %169
  br label %179

179:                                              ; preds = %178, %137
  %180 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %181 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %180, i32 0, i32 1
  %182 = call i32 @umtxq_unlock(i32* %181)
  %183 = load %struct.umtx_q*, %struct.umtx_q** %13, align 8
  %184 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %183, i32 0, i32 1
  %185 = call i32 @umtx_key_release(i32* %184)
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %179, %65, %52, %39, %27
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local i32 @fueword32(i32*, i64*) #1

declare dso_local i32 @umtx_key_get(%struct.ucond*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i64) #1

declare dso_local i32 @umtx_key_release(i32*) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @umtxq_unbusy_unlocked(i32*) #1

declare dso_local i32 @do_unlock_umutex(%struct.thread*, %struct.umutex*, i32) #1

declare dso_local i32 @abs_timeout_init(%struct.abs_timeout*, i64, i32, %struct.timespec*) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

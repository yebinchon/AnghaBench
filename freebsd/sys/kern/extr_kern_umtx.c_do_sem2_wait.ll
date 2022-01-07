; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_sem2_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_sem2_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.umtx_q* }
%struct.umtx_q = type { i32, i32 }
%struct._usem2 = type { i32, i32 }
%struct._umtx_time = type { i32, i32 }
%struct.abs_timeout = type { i32, i32 }

@TYPE_SEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@USEM_HAS_WAITERS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"usem\00", align 1
@UQF_UMTXQ = common dso_local global i32 0, align 4
@UMTX_ABSTIME = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct._usem2*, %struct._umtx_time*)* @do_sem2_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sem2_wait(%struct.thread* %0, %struct._usem2* %1, %struct._umtx_time* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct._usem2*, align 8
  %7 = alloca %struct._umtx_time*, align 8
  %8 = alloca %struct.abs_timeout, align 4
  %9 = alloca %struct.umtx_q*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct._usem2* %1, %struct._usem2** %6, align 8
  store %struct._umtx_time* %2, %struct._umtx_time** %7, align 8
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 0
  %16 = load %struct.umtx_q*, %struct.umtx_q** %15, align 8
  store %struct.umtx_q* %16, %struct.umtx_q** %9, align 8
  %17 = load %struct._usem2*, %struct._usem2** %6, align 8
  %18 = getelementptr inbounds %struct._usem2, %struct._usem2* %17, i32 0, i32 1
  %19 = call i64 @fuword32(i32* %18)
  store i64 %19, i64* %11, align 8
  %20 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %21 = icmp ne %struct._umtx_time* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %24 = call i32 @abs_timeout_init2(%struct.abs_timeout* %8, %struct._umtx_time* %23)
  br label %25

25:                                               ; preds = %22, %3
  br label %26

26:                                               ; preds = %130, %25
  %27 = load %struct._usem2*, %struct._usem2** %6, align 8
  %28 = load i32, i32* @TYPE_SEM, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @GET_SHARE(i64 %29)
  %31 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %32 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %31, i32 0, i32 1
  %33 = call i32 @umtx_key_get(%struct._usem2* %27, i32 %28, i32 %30, i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %192

38:                                               ; preds = %26
  %39 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %40 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %39, i32 0, i32 1
  %41 = call i32 @umtxq_lock(i32* %40)
  %42 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %43 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %42, i32 0, i32 1
  %44 = call i32 @umtxq_busy(i32* %43)
  %45 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %46 = call i32 @umtxq_insert(%struct.umtx_q* %45)
  %47 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %48 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %47, i32 0, i32 1
  %49 = call i32 @umtxq_unlock(i32* %48)
  %50 = load %struct._usem2*, %struct._usem2** %6, align 8
  %51 = getelementptr inbounds %struct._usem2, %struct._usem2* %50, i32 0, i32 0
  %52 = call i32 @fueword32(i32* %51, i64* %10)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %71

55:                                               ; preds = %38
  %56 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %57 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %56, i32 0, i32 1
  %58 = call i32 @umtxq_lock(i32* %57)
  %59 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %60 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %59, i32 0, i32 1
  %61 = call i32 @umtxq_unbusy(i32* %60)
  %62 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %63 = call i32 @umtxq_remove(%struct.umtx_q* %62)
  %64 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %65 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %64, i32 0, i32 1
  %66 = call i32 @umtxq_unlock(i32* %65)
  %67 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %68 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %67, i32 0, i32 1
  %69 = call i32 @umtx_key_release(i32* %68)
  %70 = load i32, i32* @EFAULT, align 4
  store i32 %70, i32* %4, align 4
  br label %192

71:                                               ; preds = %38
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @USEM_COUNT(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %78 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %77, i32 0, i32 1
  %79 = call i32 @umtxq_lock(i32* %78)
  %80 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %81 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %80, i32 0, i32 1
  %82 = call i32 @umtxq_unbusy(i32* %81)
  %83 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %84 = call i32 @umtxq_remove(%struct.umtx_q* %83)
  %85 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %86 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %85, i32 0, i32 1
  %87 = call i32 @umtxq_unlock(i32* %86)
  %88 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %89 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %88, i32 0, i32 1
  %90 = call i32 @umtx_key_release(i32* %89)
  store i32 0, i32* %4, align 4
  br label %192

91:                                               ; preds = %72
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @USEM_HAS_WAITERS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %131

96:                                               ; preds = %91
  %97 = load %struct._usem2*, %struct._usem2** %6, align 8
  %98 = getelementptr inbounds %struct._usem2, %struct._usem2* %97, i32 0, i32 0
  %99 = load i64, i64* @USEM_HAS_WAITERS, align 8
  %100 = call i32 @casueword32(i32* %98, i32 0, i64* %10, i64 %99)
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %131

104:                                              ; preds = %96
  %105 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %106 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %105, i32 0, i32 1
  %107 = call i32 @umtxq_lock(i32* %106)
  %108 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %109 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %108, i32 0, i32 1
  %110 = call i32 @umtxq_unbusy(i32* %109)
  %111 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %112 = call i32 @umtxq_remove(%struct.umtx_q* %111)
  %113 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %114 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %113, i32 0, i32 1
  %115 = call i32 @umtxq_unlock(i32* %114)
  %116 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %117 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %116, i32 0, i32 1
  %118 = call i32 @umtx_key_release(i32* %117)
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, -1
  br i1 %120, label %121, label %123

121:                                              ; preds = %104
  %122 = load i32, i32* @EFAULT, align 4
  store i32 %122, i32* %4, align 4
  br label %192

123:                                              ; preds = %104
  %124 = load %struct.thread*, %struct.thread** %5, align 8
  %125 = call i32 @umtxq_check_susp(%struct.thread* %124, i32 1)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  store i32 %129, i32* %4, align 4
  br label %192

130:                                              ; preds = %123
  br label %26

131:                                              ; preds = %103, %95
  %132 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %133 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %132, i32 0, i32 1
  %134 = call i32 @umtxq_lock(i32* %133)
  %135 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %136 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %135, i32 0, i32 1
  %137 = call i32 @umtxq_unbusy(i32* %136)
  %138 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %139 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %140 = icmp eq %struct._umtx_time* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %143

142:                                              ; preds = %131
  br label %143

143:                                              ; preds = %142, %141
  %144 = phi %struct.abs_timeout* [ null, %141 ], [ %8, %142 ]
  %145 = call i32 @umtxq_sleep(%struct.umtx_q* %138, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.abs_timeout* %144)
  store i32 %145, i32* %12, align 4
  %146 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %147 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @UQF_UMTXQ, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  br label %184

153:                                              ; preds = %143
  %154 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %155 = call i32 @umtxq_remove(%struct.umtx_q* %154)
  %156 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %157 = icmp ne %struct._umtx_time* %156, null
  br i1 %157, label %158, label %183

158:                                              ; preds = %153
  %159 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %160 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @UMTX_ABSTIME, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %158
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @ERESTART, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32, i32* @EINTR, align 4
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %169, %165
  %172 = load i32, i32* %12, align 4
  %173 = load i32, i32* @EINTR, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %171
  %176 = call i32 @abs_timeout_update(%struct.abs_timeout* %8)
  %177 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %8, i32 0, i32 1
  %178 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %8, i32 0, i32 0
  %179 = load %struct._umtx_time*, %struct._umtx_time** %7, align 8
  %180 = getelementptr inbounds %struct._umtx_time, %struct._umtx_time* %179, i32 0, i32 1
  %181 = call i32 @timespecsub(i32* %177, i32* %178, i32* %180)
  br label %182

182:                                              ; preds = %175, %171
  br label %183

183:                                              ; preds = %182, %158, %153
  br label %184

184:                                              ; preds = %183, %152
  %185 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %186 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %185, i32 0, i32 1
  %187 = call i32 @umtxq_unlock(i32* %186)
  %188 = load %struct.umtx_q*, %struct.umtx_q** %9, align 8
  %189 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %188, i32 0, i32 1
  %190 = call i32 @umtx_key_release(i32* %189)
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %184, %128, %121, %76, %55, %36
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i64 @fuword32(i32*) #1

declare dso_local i32 @abs_timeout_init2(%struct.abs_timeout*, %struct._umtx_time*) #1

declare dso_local i32 @umtx_key_get(%struct._usem2*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i64) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @fueword32(i32*, i64*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

declare dso_local i32 @umtx_key_release(i32*) #1

declare dso_local i64 @USEM_COUNT(i64) #1

declare dso_local i32 @casueword32(i32*, i32, i64*, i64) #1

declare dso_local i32 @umtxq_check_susp(%struct.thread*, i32) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, %struct.abs_timeout*) #1

declare dso_local i32 @abs_timeout_update(%struct.abs_timeout*) #1

declare dso_local i32 @timespecsub(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

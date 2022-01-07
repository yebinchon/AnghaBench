; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_start_threads.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_start_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ = type { i32, i32, i32, i32, i32, i32, %struct.nm_desc*, %struct.glob_arg*, i32 }
%struct.nm_desc = type { i32, %struct.TYPE_2__, %struct.nm_desc* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.glob_arg = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.nm_desc* }

@targs = common dso_local global %struct.targ* null, align 8
@DEV_NETMAP = common dso_local global i64 0, align 8
@NR_REG_MASK = common dso_local global i32 0, align 4
@NR_REG_ONE_NIC = common dso_local global i32 0, align 4
@TD_TYPE_RECEIVER = common dso_local global i64 0, align 8
@NETMAP_NO_TX_POLL = common dso_local global i32 0, align 4
@NM_OPEN_IFNAME = common dso_local global i32 0, align 4
@NM_OPEN_NO_MMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unable to open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Wait %d secs for phy reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Ready...\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Unable to create thread %d: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glob_arg*)* @start_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_threads(%struct.glob_arg* %0) #0 {
  %2 = alloca %struct.glob_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.targ*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nm_desc, align 8
  %7 = alloca i32, align 4
  store %struct.glob_arg* %0, %struct.glob_arg** %2, align 8
  %8 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %9 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.targ* @calloc(i32 %10, i32 48)
  store %struct.targ* %11, %struct.targ** @targs, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %171, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %15 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %174

18:                                               ; preds = %12
  %19 = call i32 @time(i32 0)
  %20 = call i32 @time(i32 0)
  %21 = shl i32 %20, 32
  %22 = or i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.targ*, %struct.targ** @targs, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.targ, %struct.targ* %23, i64 %25
  store %struct.targ* %26, %struct.targ** %4, align 8
  %27 = load %struct.targ*, %struct.targ** %4, align 8
  %28 = call i32 @bzero(%struct.targ* %27, i32 48)
  %29 = load %struct.targ*, %struct.targ** %4, align 8
  %30 = getelementptr inbounds %struct.targ, %struct.targ* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 8
  %31 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %32 = load %struct.targ*, %struct.targ** %4, align 8
  %33 = getelementptr inbounds %struct.targ, %struct.targ* %32, i32 0, i32 7
  store %struct.glob_arg* %31, %struct.glob_arg** %33, align 8
  %34 = load %struct.targ*, %struct.targ** %4, align 8
  %35 = getelementptr inbounds %struct.targ, %struct.targ* %34, i32 0, i32 8
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @memcpy(i32 %36, i32* %5, i32 4)
  %38 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %39 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DEV_NETMAP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %134

43:                                               ; preds = %18
  %44 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %45 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %44, i32 0, i32 10
  %46 = load %struct.nm_desc*, %struct.nm_desc** %45, align 8
  %47 = bitcast %struct.nm_desc* %6 to i8*
  %48 = bitcast %struct.nm_desc* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  store i32 0, i32* %7, align 4
  %49 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %6, i32 0, i32 2
  store %struct.nm_desc* %6, %struct.nm_desc** %49, align 8
  %50 = load i32, i32* %3, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %115

52:                                               ; preds = %43
  %53 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %54 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %77

57:                                               ; preds = %52
  %58 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %59 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %58, i32 0, i32 10
  %60 = load %struct.nm_desc*, %struct.nm_desc** %59, align 8
  %61 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NR_REG_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %6, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @NR_REG_ONE_NIC, align 4
  %70 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %6, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %3, align 4
  %75 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %57, %52
  %78 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %79 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @TD_TYPE_RECEIVER, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @NETMAP_NO_TX_POLL, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.targ*, %struct.targ** %4, align 8
  %89 = getelementptr inbounds %struct.targ, %struct.targ* %88, i32 0, i32 7
  %90 = load %struct.glob_arg*, %struct.glob_arg** %89, align 8
  %91 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @NM_OPEN_IFNAME, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @NM_OPEN_NO_MMAP, align 4
  %97 = or i32 %95, %96
  %98 = call %struct.nm_desc* @nm_open(i32 %92, i32* null, i32 %97, %struct.nm_desc* %6)
  %99 = load %struct.targ*, %struct.targ** %4, align 8
  %100 = getelementptr inbounds %struct.targ, %struct.targ* %99, i32 0, i32 6
  store %struct.nm_desc* %98, %struct.nm_desc** %100, align 8
  %101 = load %struct.targ*, %struct.targ** %4, align 8
  %102 = getelementptr inbounds %struct.targ, %struct.targ* %101, i32 0, i32 6
  %103 = load %struct.nm_desc*, %struct.nm_desc** %102, align 8
  %104 = icmp eq %struct.nm_desc* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %87
  %106 = load %struct.targ*, %struct.targ** %4, align 8
  %107 = getelementptr inbounds %struct.targ, %struct.targ* %106, i32 0, i32 7
  %108 = load %struct.glob_arg*, %struct.glob_arg** %107, align 8
  %109 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @errno, align 4
  %112 = call i32 @strerror(i32 %111)
  %113 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %112)
  br label %171

114:                                              ; preds = %87
  br label %121

115:                                              ; preds = %43
  %116 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %117 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %116, i32 0, i32 10
  %118 = load %struct.nm_desc*, %struct.nm_desc** %117, align 8
  %119 = load %struct.targ*, %struct.targ** %4, align 8
  %120 = getelementptr inbounds %struct.targ, %struct.targ* %119, i32 0, i32 6
  store %struct.nm_desc* %118, %struct.nm_desc** %120, align 8
  br label %121

121:                                              ; preds = %115, %114
  %122 = load %struct.targ*, %struct.targ** %4, align 8
  %123 = getelementptr inbounds %struct.targ, %struct.targ* %122, i32 0, i32 6
  %124 = load %struct.nm_desc*, %struct.nm_desc** %123, align 8
  %125 = getelementptr inbounds %struct.nm_desc, %struct.nm_desc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.targ*, %struct.targ** %4, align 8
  %128 = getelementptr inbounds %struct.targ, %struct.targ* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %130 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.targ*, %struct.targ** %4, align 8
  %133 = getelementptr inbounds %struct.targ, %struct.targ* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  br label %143

134:                                              ; preds = %18
  %135 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %136 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.targ*, %struct.targ** @targs, align 8
  %139 = load i32, i32* %3, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.targ, %struct.targ* %138, i64 %140
  %142 = getelementptr inbounds %struct.targ, %struct.targ* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 8
  br label %143

143:                                              ; preds = %134, %121
  %144 = load %struct.targ*, %struct.targ** %4, align 8
  %145 = getelementptr inbounds %struct.targ, %struct.targ* %144, i32 0, i32 1
  store i32 1, i32* %145, align 4
  %146 = load i32, i32* %3, align 4
  %147 = load %struct.targ*, %struct.targ** %4, align 8
  %148 = getelementptr inbounds %struct.targ, %struct.targ* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  %149 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %150 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %151, 0
  br i1 %152, label %153, label %165

153:                                              ; preds = %143
  %154 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %155 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %156, %157
  %159 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %160 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = srem i32 %158, %161
  %163 = load %struct.targ*, %struct.targ** %4, align 8
  %164 = getelementptr inbounds %struct.targ, %struct.targ* %163, i32 0, i32 3
  store i32 %162, i32* %164, align 4
  br label %168

165:                                              ; preds = %143
  %166 = load %struct.targ*, %struct.targ** %4, align 8
  %167 = getelementptr inbounds %struct.targ, %struct.targ* %166, i32 0, i32 3
  store i32 -1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %153
  %169 = load %struct.targ*, %struct.targ** %4, align 8
  %170 = call i32 @initialize_packet(%struct.targ* %169)
  br label %171

171:                                              ; preds = %168, %105
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %3, align 4
  br label %12

174:                                              ; preds = %12
  %175 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %176 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %175, i32 0, i32 8
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %177)
  %179 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %180 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @sleep(i32 %181)
  %183 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %211, %174
  %185 = load i32, i32* %3, align 4
  %186 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %187 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %214

190:                                              ; preds = %184
  %191 = load %struct.targ*, %struct.targ** @targs, align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.targ, %struct.targ* %191, i64 %193
  store %struct.targ* %194, %struct.targ** %4, align 8
  %195 = load %struct.targ*, %struct.targ** %4, align 8
  %196 = getelementptr inbounds %struct.targ, %struct.targ* %195, i32 0, i32 4
  %197 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %198 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %197, i32 0, i32 7
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.targ*, %struct.targ** %4, align 8
  %201 = call i32 @pthread_create(i32* %196, i32* null, i32 %199, %struct.targ* %200)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %210

203:                                              ; preds = %190
  %204 = load i32, i32* %3, align 4
  %205 = load i32, i32* @errno, align 4
  %206 = call i32 @strerror(i32 %205)
  %207 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %204, i32 %206)
  %208 = load %struct.targ*, %struct.targ** %4, align 8
  %209 = getelementptr inbounds %struct.targ, %struct.targ* %208, i32 0, i32 1
  store i32 0, i32* %209, align 4
  br label %210

210:                                              ; preds = %203, %190
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %3, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %3, align 4
  br label %184

214:                                              ; preds = %184
  ret void
}

declare dso_local %struct.targ* @calloc(i32, i32) #1

declare dso_local i32 @time(i32) #1

declare dso_local i32 @bzero(%struct.targ*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.nm_desc* @nm_open(i32, i32*, i32, %struct.nm_desc*) #1

declare dso_local i32 @D(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @initialize_packet(%struct.targ*) #1

declare dso_local i32 @sleep(i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.targ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}

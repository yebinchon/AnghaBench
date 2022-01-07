; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_set_ceiling.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_do_set_ceiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.umtx_q* }
%struct.umtx_q = type { i32 }
%struct.umutex = type { i32, i32*, i32 }

@EFAULT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTP_PRIO_MAX = common dso_local global i32 0, align 4
@UMUTEX_ROBUST = common dso_local global i32 0, align 4
@TYPE_PP_ROBUST_UMUTEX = common dso_local global i32 0, align 4
@TYPE_PP_UMUTEX = common dso_local global i32 0, align 4
@UMUTEX_CONTESTED = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i32 0, align 4
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"umtxpp\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.umutex*, i32, i32*)* @do_set_ceiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_set_ceiling(%struct.thread* %0, %struct.umutex* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.umutex*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.umtx_q*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.umutex* %1, %struct.umutex** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %18 = load %struct.umutex*, %struct.umutex** %7, align 8
  %19 = getelementptr inbounds %struct.umutex, %struct.umutex* %18, i32 0, i32 0
  %20 = call i32 @fueword32(i32* %19, i32* %11)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EFAULT, align 4
  store i32 %24, i32* %5, align 4
  br label %218

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %5, align 4
  br label %218

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RTP_PRIO_MAX, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %218

38:                                               ; preds = %32
  %39 = load %struct.thread*, %struct.thread** %6, align 8
  %40 = getelementptr inbounds %struct.thread, %struct.thread* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %12, align 4
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 1
  %44 = load %struct.umtx_q*, %struct.umtx_q** %43, align 8
  store %struct.umtx_q* %44, %struct.umtx_q** %10, align 8
  %45 = load %struct.umutex*, %struct.umutex** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @UMUTEX_ROBUST, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %38
  %51 = load i32, i32* @TYPE_PP_ROBUST_UMUTEX, align 4
  br label %54

52:                                               ; preds = %38
  %53 = load i32, i32* @TYPE_PP_UMUTEX, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @GET_SHARE(i32 %56)
  %58 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %59 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %58, i32 0, i32 0
  %60 = call i32 @umtx_key_get(%struct.umutex* %45, i32 %55, i32 %57, i32* %59)
  store i32 %60, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %5, align 4
  br label %218

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %163, %64
  %66 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %67 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %66, i32 0, i32 0
  %68 = call i32 @umtxq_lock(i32* %67)
  %69 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %70 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %69, i32 0, i32 0
  %71 = call i32 @umtxq_busy(i32* %70)
  %72 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %73 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %72, i32 0, i32 0
  %74 = call i32 @umtxq_unlock(i32* %73)
  %75 = load %struct.umutex*, %struct.umutex** %7, align 8
  %76 = getelementptr inbounds %struct.umutex, %struct.umutex* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i32 @fueword32(i32* %78, i32* %14)
  store i32 %79, i32* %16, align 4
  %80 = load i32, i32* %16, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = load i32, i32* @EFAULT, align 4
  store i32 %83, i32* %15, align 4
  br label %179

84:                                               ; preds = %65
  %85 = load %struct.umutex*, %struct.umutex** %7, align 8
  %86 = getelementptr inbounds %struct.umutex, %struct.umutex* %85, i32 0, i32 2
  %87 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @casueword32(i32* %86, i32 %87, i32* %13, i32 %90)
  store i32 %91, i32* %16, align 4
  %92 = load i32, i32* %16, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* @EFAULT, align 4
  store i32 %95, i32* %15, align 4
  br label %179

96:                                               ; preds = %84
  %97 = load i32, i32* %16, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %102 = icmp eq i32 %100, %101
  %103 = zext i1 %102 to i32
  %104 = call i32 @MPASS(i32 %103)
  %105 = load %struct.umutex*, %struct.umutex** %7, align 8
  %106 = getelementptr inbounds %struct.umutex, %struct.umutex* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @suword32(i32* %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.umutex*, %struct.umutex** %7, align 8
  %112 = getelementptr inbounds %struct.umutex, %struct.umutex* %111, i32 0, i32 2
  %113 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %114 = call i32 @suword32(i32* %112, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %99
  %118 = load i32, i32* %17, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %123

121:                                              ; preds = %117, %99
  %122 = load i32, i32* @EFAULT, align 4
  br label %123

123:                                              ; preds = %121, %120
  %124 = phi i32 [ 0, %120 ], [ %122, %121 ]
  store i32 %124, i32* %15, align 4
  br label %179

125:                                              ; preds = %96
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @UMUTEX_CONTESTED, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %126, %128
  %130 = load i32, i32* %12, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %125
  %133 = load %struct.umutex*, %struct.umutex** %7, align 8
  %134 = getelementptr inbounds %struct.umutex, %struct.umutex* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @suword32(i32* %136, i32 %137)
  store i32 %138, i32* %16, align 4
  %139 = load i32, i32* %16, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @EFAULT, align 4
  br label %144

144:                                              ; preds = %142, %141
  %145 = phi i32 [ 0, %141 ], [ %143, %142 ]
  store i32 %145, i32* %15, align 4
  br label %179

146:                                              ; preds = %125
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* @UMUTEX_RB_OWNERDEAD, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %151, i32* %15, align 4
  br label %179

152:                                              ; preds = %146
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @UMUTEX_RB_NOTRECOV, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %157, i32* %15, align 4
  br label %179

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %15, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %179

163:                                              ; preds = %159
  %164 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %165 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %164, i32 0, i32 0
  %166 = call i32 @umtxq_lock(i32* %165)
  %167 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %168 = call i32 @umtxq_insert(%struct.umtx_q* %167)
  %169 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %170 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %169, i32 0, i32 0
  %171 = call i32 @umtxq_unbusy(i32* %170)
  %172 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %173 = call i32 @umtxq_sleep(%struct.umtx_q* %172, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %173, i32* %15, align 4
  %174 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %175 = call i32 @umtxq_remove(%struct.umtx_q* %174)
  %176 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %177 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %176, i32 0, i32 0
  %178 = call i32 @umtxq_unlock(i32* %177)
  br label %65

179:                                              ; preds = %162, %156, %150, %144, %123, %94, %82
  %180 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %181 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %180, i32 0, i32 0
  %182 = call i32 @umtxq_lock(i32* %181)
  %183 = load i32, i32* %15, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %187 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %186, i32 0, i32 0
  %188 = load i32, i32* @INT_MAX, align 4
  %189 = call i32 @umtxq_signal(i32* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %179
  %191 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %192 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %191, i32 0, i32 0
  %193 = call i32 @umtxq_unbusy(i32* %192)
  %194 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %195 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %194, i32 0, i32 0
  %196 = call i32 @umtxq_unlock(i32* %195)
  %197 = load %struct.umtx_q*, %struct.umtx_q** %10, align 8
  %198 = getelementptr inbounds %struct.umtx_q, %struct.umtx_q* %197, i32 0, i32 0
  %199 = call i32 @umtx_key_release(i32* %198)
  %200 = load i32, i32* %15, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %216

202:                                              ; preds = %190
  %203 = load i32*, i32** %9, align 8
  %204 = icmp ne i32* %203, null
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i32*, i32** %9, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @suword32(i32* %206, i32 %207)
  store i32 %208, i32* %16, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %214

212:                                              ; preds = %205
  %213 = load i32, i32* @EFAULT, align 4
  br label %214

214:                                              ; preds = %212, %211
  %215 = phi i32 [ 0, %211 ], [ %213, %212 ]
  store i32 %215, i32* %15, align 4
  br label %216

216:                                              ; preds = %214, %202, %190
  %217 = load i32, i32* %15, align 4
  store i32 %217, i32* %5, align 4
  br label %218

218:                                              ; preds = %216, %62, %36, %30, %23
  %219 = load i32, i32* %5, align 4
  ret i32 %219
}

declare dso_local i32 @fueword32(i32*, i32*) #1

declare dso_local i32 @umtx_key_get(%struct.umutex*, i32, i32, i32*) #1

declare dso_local i32 @GET_SHARE(i32) #1

declare dso_local i32 @umtxq_lock(i32*) #1

declare dso_local i32 @umtxq_busy(i32*) #1

declare dso_local i32 @umtxq_unlock(i32*) #1

declare dso_local i32 @casueword32(i32*, i32, i32*, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @suword32(i32*, i32) #1

declare dso_local i32 @umtxq_insert(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_unbusy(i32*) #1

declare dso_local i32 @umtxq_sleep(%struct.umtx_q*, i8*, i32*) #1

declare dso_local i32 @umtxq_remove(%struct.umtx_q*) #1

declare dso_local i32 @umtxq_signal(i32*, i32) #1

declare dso_local i32 @umtx_key_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

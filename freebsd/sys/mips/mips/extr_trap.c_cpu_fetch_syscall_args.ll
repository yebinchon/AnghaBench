; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_trap.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.syscall_args, %struct.trapframe* }
%struct.TYPE_8__ = type { i32, %struct.sysentvec* }
%struct.sysentvec = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.syscall_args = type { i32*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SV_ILP32 = common dso_local global i32 0, align 4
@_QUAD_LOWWORD = common dso_local global i32 0, align 4
@trap_debug = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.sysentvec*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 4
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %3, align 8
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 3
  store %struct.syscall_args* %12, %struct.syscall_args** %5, align 8
  %13 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %14 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bzero(i32* %15, i32 8)
  %17 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %18 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %17, i32 0, i32 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  %26 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %27 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %26, i32 0, i32 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @DELAYBRANCH(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %35 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %36 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MipsEmulateBranch(%struct.trapframe* %34, i32 %39, i32 0, i32 0)
  %41 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %50

43:                                               ; preds = %1
  %44 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 8
  br label %50

50:                                               ; preds = %43, %33
  %51 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %55 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %57 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %128 [
    i32 129, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %50, %50
  %60 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %61 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %62, 129
  br i1 %63, label %64, label %101

64:                                               ; preds = %59
  %65 = load %struct.thread*, %struct.thread** %2, align 8
  %66 = getelementptr inbounds %struct.thread, %struct.thread* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i32, i32* @SV_ILP32, align 4
  %69 = call i64 @SV_PROC_FLAG(%struct.TYPE_8__* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %64
  %72 = load i32, i32* @_QUAD_LOWWORD, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %79 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %86

80:                                               ; preds = %71
  %81 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %82 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %85 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %88 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %91 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 %89, i32* %93, align 4
  %94 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %98 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 %96, i32* %100, align 4
  store i32 2, i32* %7, align 4
  br label %157

101:                                              ; preds = %64, %59
  %102 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %103 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %106 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 8
  %107 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %108 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %111 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %115 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %118 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %122 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %125 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 2
  store i32 %123, i32* %127, align 4
  store i32 3, i32* %7, align 4
  br label %157

128:                                              ; preds = %50
  %129 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %130 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %133 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %131, i32* %135, align 4
  %136 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %137 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %140 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %138, i32* %142, align 4
  %143 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %144 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %147 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %145, i32* %149, align 4
  %150 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %151 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %154 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  store i32 %152, i32* %156, align 4
  store i32 4, i32* %7, align 4
  br label %157

157:                                              ; preds = %128, %101, %86
  %158 = load %struct.thread*, %struct.thread** %2, align 8
  %159 = getelementptr inbounds %struct.thread, %struct.thread* %158, i32 0, i32 1
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load %struct.sysentvec*, %struct.sysentvec** %161, align 8
  store %struct.sysentvec* %162, %struct.sysentvec** %4, align 8
  %163 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %164 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %167 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp sge i32 %165, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %157
  %171 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %172 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %171, i32 0, i32 1
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i64 0
  %175 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %176 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %175, i32 0, i32 3
  store %struct.TYPE_5__* %174, %struct.TYPE_5__** %176, align 8
  br label %188

177:                                              ; preds = %157
  %178 = load %struct.sysentvec*, %struct.sysentvec** %4, align 8
  %179 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %182 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %184
  %186 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %187 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %186, i32 0, i32 3
  store %struct.TYPE_5__* %185, %struct.TYPE_5__** %187, align 8
  br label %188

188:                                              ; preds = %177, %170
  %189 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %190 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %189, i32 0, i32 3
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %195 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 4
  %196 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %197 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %232

201:                                              ; preds = %188
  %202 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %203 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %202, i32 0, i32 11
  %204 = load i64, i64* %203, align 8
  %205 = add i64 %204, 16
  %206 = trunc i64 %205 to i32
  %207 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %208 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %7, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = ptrtoint i32* %212 to i32
  %214 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %215 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %7, align 4
  %218 = sub nsw i32 %216, %217
  %219 = sext i32 %218 to i64
  %220 = mul i64 %219, 4
  %221 = trunc i64 %220 to i32
  %222 = call i32 @copyin(i32 %206, i32 %213, i32 %221)
  store i32 %222, i32* %6, align 4
  %223 = load i32, i32* %6, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %201
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %228 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %230 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %229, i32 0, i32 5
  store i32 1, i32* %230, align 4
  br label %231

231:                                              ; preds = %225, %201
  br label %233

232:                                              ; preds = %188
  store i32 0, i32* %6, align 4
  br label %233

233:                                              ; preds = %232, %231
  %234 = load i32, i32* %6, align 4
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load %struct.thread*, %struct.thread** %2, align 8
  %238 = getelementptr inbounds %struct.thread, %struct.thread* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  store i32 0, i32* %240, align 4
  %241 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %242 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %241, i32 0, i32 10
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.thread*, %struct.thread** %2, align 8
  %245 = getelementptr inbounds %struct.thread, %struct.thread* %244, i32 0, i32 0
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  store i32 %243, i32* %247, align 4
  br label %248

248:                                              ; preds = %236, %233
  %249 = load i32, i32* %6, align 4
  ret i32 %249
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @DELAYBRANCH(i32) #1

declare dso_local i32 @MipsEmulateBranch(%struct.trapframe*, i32, i32, i32) #1

declare dso_local i64 @SV_PROC_FLAG(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

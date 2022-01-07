; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_set_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_set_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.trapframe*, %struct.pcb* }
%struct.trapframe = type { i32, i8** }
%struct.pcb = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.trapframe*, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_9__*, %struct.trapframe }
%struct.TYPE_9__ = type { %struct.trapframe*, %struct.trapframe }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32*, i32, i32, i32*, i32*, i32, i32* }

@_MC_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@psl_userstatic = common dso_local global i32 0, align 4
@SV_LP64 = common dso_local global i32 0, align 4
@PSL_FP = common dso_local global i32 0, align 4
@PCB_FPU = common dso_local global i32 0, align 4
@_MC_FP_VALID = common dso_local global i32 0, align 4
@PCB_FPREGS = common dso_local global i32 0, align 4
@_MC_AV_VALID = common dso_local global i32 0, align 4
@PCB_VEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_mcontext(%struct.thread* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.pcb*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.pcb*, %struct.pcb** %11, align 8
  store %struct.pcb* %12, %struct.pcb** %6, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.trapframe*, %struct.trapframe** %14, align 8
  store %struct.trapframe* %15, %struct.trapframe** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @_MC_VERSION, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 72
  br i1 %26, label %27, label %29

27:                                               ; preds = %21, %2
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %204

29:                                               ; preds = %21
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @psl_userstatic, align 4
  %34 = and i32 %32, %33
  %35 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %36 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @psl_userstatic, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %34, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %204

43:                                               ; preds = %29
  %44 = load %struct.thread*, %struct.thread** %4, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SV_LP64, align 4
  %48 = call i64 @SV_PROC_FLAG(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %52 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 13
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %8, align 8
  br label %62

56:                                               ; preds = %43
  %57 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 1
  %59 = load i8**, i8*** %58, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 2
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %8, align 8
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 10
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @memcpy(%struct.trapframe* %63, i32* %66, i32 8)
  %68 = load %struct.thread*, %struct.thread** %4, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SV_LP64, align 4
  %72 = call i64 @SV_PROC_FLAG(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %62
  %75 = load i8*, i8** %8, align 8
  %76 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %77 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %76, i32 0, i32 1
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 13
  store i8* %75, i8** %79, align 8
  br label %86

80:                                               ; preds = %62
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %83 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %82, i32 0, i32 1
  %84 = load i8**, i8*** %83, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 2
  store i8* %81, i8** %85, align 8
  br label %86

86:                                               ; preds = %80, %74
  %87 = load i32, i32* @PSL_FP, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* @PCB_FPU, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.pcb*, %struct.pcb** %6, align 8
  %96 = getelementptr inbounds %struct.pcb, %struct.pcb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @_MC_FP_VALID, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %162

105:                                              ; preds = %86
  %106 = load i32, i32* @PCB_FPREGS, align 4
  %107 = load %struct.pcb*, %struct.pcb** %6, align 8
  %108 = getelementptr inbounds %struct.pcb, %struct.pcb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.pcb*, %struct.pcb** %6, align 8
  %112 = getelementptr inbounds %struct.pcb, %struct.pcb* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 9
  %116 = call i32 @memcpy(%struct.trapframe* %113, i32* %115, i32 8)
  %117 = load %struct.pcb*, %struct.pcb** %6, align 8
  %118 = getelementptr inbounds %struct.pcb, %struct.pcb* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @bzero(%struct.TYPE_9__* %120, i32 8)
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %158, %105
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %161

125:                                              ; preds = %122
  %126 = load %struct.pcb*, %struct.pcb** %6, align 8
  %127 = getelementptr inbounds %struct.pcb, %struct.pcb* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @memcpy(%struct.trapframe* %133, i32* %139, i32 8)
  %141 = load %struct.pcb*, %struct.pcb** %6, align 8
  %142 = getelementptr inbounds %struct.pcb, %struct.pcb* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load %struct.trapframe*, %struct.trapframe** %148, align 8
  %150 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %149, i64 2
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 7
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @memcpy(%struct.trapframe* %150, i32* %156, i32 8)
  br label %158

158:                                              ; preds = %125
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %9, align 4
  br label %122

161:                                              ; preds = %122
  br label %162

162:                                              ; preds = %161, %86
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @_MC_AV_VALID, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %203

169:                                              ; preds = %162
  %170 = load %struct.pcb*, %struct.pcb** %6, align 8
  %171 = getelementptr inbounds %struct.pcb, %struct.pcb* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @PCB_VEC, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @PCB_VEC, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %169
  %178 = call i32 (...) @critical_enter()
  %179 = load %struct.thread*, %struct.thread** %4, align 8
  %180 = call i32 @enable_vec(%struct.thread* %179)
  %181 = call i32 (...) @critical_exit()
  br label %182

182:                                              ; preds = %177, %169
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pcb*, %struct.pcb** %6, align 8
  %187 = getelementptr inbounds %struct.pcb, %struct.pcb* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 2
  store i32 %185, i32* %188, align 4
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.pcb*, %struct.pcb** %6, align 8
  %193 = getelementptr inbounds %struct.pcb, %struct.pcb* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 8
  %195 = load %struct.pcb*, %struct.pcb** %6, align 8
  %196 = getelementptr inbounds %struct.pcb, %struct.pcb* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load %struct.trapframe*, %struct.trapframe** %197, align 8
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 4
  %201 = load i32*, i32** %200, align 8
  %202 = call i32 @memcpy(%struct.trapframe* %198, i32* %201, i32 8)
  br label %203

203:                                              ; preds = %182, %162
  store i32 0, i32* %3, align 4
  br label %204

204:                                              ; preds = %203, %41, %27
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i64 @SV_PROC_FLAG(i32, i32) #1

declare dso_local i32 @memcpy(%struct.trapframe*, i32*, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @enable_vec(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

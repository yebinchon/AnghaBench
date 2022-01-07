; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_grab_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_grab_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.pcb* }
%struct.pcb = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32, i32*, i32*, i32, i64*, i32, i32 }

@_MC_VERSION = common dso_local global i32 0, align 4
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@PCB_FPREGS = common dso_local global i32 0, align 4
@PCB_FPU = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"get_mcontext: fp save not curthread\00", align 1
@_MC_FP_VALID = common dso_local global i32 0, align 4
@PCB_VSX = common dso_local global i32 0, align 4
@PCB_VEC = common dso_local global i32 0, align 4
@_MC_AV_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.TYPE_10__*, i32)* @grab_mcontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_mcontext(%struct.thread* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcb*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  store %struct.pcb* %11, %struct.pcb** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = call i32 @memset(%struct.TYPE_10__* %12, i32 0, i32 72)
  %14 = load i32, i32* @_MC_VERSION, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 10
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 4
  store i32 0, i32* %18, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 9
  %21 = load %struct.thread*, %struct.thread** %4, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @memcpy(i32* %20, i32* %23, i32 4)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 8
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  store i64 0, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 8
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 4
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %29, %3
  %39 = load %struct.pcb*, %struct.pcb** %7, align 8
  %40 = getelementptr inbounds %struct.pcb, %struct.pcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PCB_FPREGS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %97

45:                                               ; preds = %38
  %46 = load %struct.pcb*, %struct.pcb** %7, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCB_FPU, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load %struct.thread*, %struct.thread** %4, align 8
  %54 = load %struct.thread*, %struct.thread** @curthread, align 8
  %55 = icmp eq %struct.thread* %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %58 = call i32 (...) @critical_enter()
  %59 = load %struct.thread*, %struct.thread** %4, align 8
  %60 = call i32 @save_fpu(%struct.thread* %59)
  %61 = call i32 (...) @critical_exit()
  br label %62

62:                                               ; preds = %52, %45
  %63 = load i32, i32* @_MC_FP_VALID, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 7
  %70 = load %struct.pcb*, %struct.pcb** %7, align 8
  %71 = getelementptr inbounds %struct.pcb, %struct.pcb* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = call i32 @memcpy(i32* %69, i32* %72, i32 8)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %93, %62
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 32
  br i1 %76, label %77, label %96

77:                                               ; preds = %74
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 6
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.pcb*, %struct.pcb** %7, align 8
  %85 = getelementptr inbounds %struct.pcb, %struct.pcb* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = call i32 @memcpy(i32* %83, i32* %91, i32 8)
  br label %93

93:                                               ; preds = %77
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %74

96:                                               ; preds = %74
  br label %97

97:                                               ; preds = %96, %38
  %98 = load %struct.pcb*, %struct.pcb** %7, align 8
  %99 = getelementptr inbounds %struct.pcb, %struct.pcb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @PCB_VSX, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %130

104:                                              ; preds = %97
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %126, %104
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %129

108:                                              ; preds = %105
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load %struct.pcb*, %struct.pcb** %7, align 8
  %116 = getelementptr inbounds %struct.pcb, %struct.pcb* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  %125 = call i32 @memcpy(i32* %114, i32* %124, i32 8)
  br label %126

126:                                              ; preds = %108
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %105

129:                                              ; preds = %105
  br label %130

130:                                              ; preds = %129, %97
  %131 = load %struct.pcb*, %struct.pcb** %7, align 8
  %132 = getelementptr inbounds %struct.pcb, %struct.pcb* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @PCB_VEC, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %172

137:                                              ; preds = %130
  %138 = load %struct.thread*, %struct.thread** %4, align 8
  %139 = load %struct.thread*, %struct.thread** @curthread, align 8
  %140 = icmp eq %struct.thread* %138, %139
  %141 = zext i1 %140 to i32
  %142 = call i32 @KASSERT(i32 %141, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %143 = call i32 (...) @critical_enter()
  %144 = load %struct.thread*, %struct.thread** %4, align 8
  %145 = call i32 @save_vec(%struct.thread* %144)
  %146 = call i32 (...) @critical_exit()
  %147 = load i32, i32* @_MC_AV_VALID, align 4
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.pcb*, %struct.pcb** %7, align 8
  %153 = getelementptr inbounds %struct.pcb, %struct.pcb* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 3
  store i32 %155, i32* %157, align 4
  %158 = load %struct.pcb*, %struct.pcb** %7, align 8
  %159 = getelementptr inbounds %struct.pcb, %struct.pcb* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.pcb*, %struct.pcb** %7, align 8
  %168 = getelementptr inbounds %struct.pcb, %struct.pcb* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @memcpy(i32* %166, i32* %170, i32 8)
  br label %172

172:                                              ; preds = %137, %130
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 0
  store i32 72, i32* %174, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @save_fpu(%struct.thread*) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @save_vec(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

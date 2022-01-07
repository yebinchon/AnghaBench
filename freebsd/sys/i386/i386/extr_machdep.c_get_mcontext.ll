; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_get_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_get_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.thread = type { %struct.TYPE_6__*, %struct.trapframe* }
%struct.TYPE_6__ = type { %struct.segment_descriptor, %struct.segment_descriptor, i32 }
%struct.segment_descriptor = type { i32, i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@GET_MC_CLEAR_RET = common dso_local global i32 0, align 4
@PSL_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mcontext(%struct.thread* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.segment_descriptor*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @PROC_LOCK(i32 %14)
  %16 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %17 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @sigonstack(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 24
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PROC_UNLOCK(i32 %24)
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 23
  store i32 %30, i32* %32, align 8
  %33 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 22
  store i32 %35, i32* %37, align 4
  %38 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 14
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 21
  store i32 %40, i32* %42, align 8
  %43 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 13
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 20
  store i32 %45, i32* %47, align 4
  %48 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 19
  store i32 %50, i32* %52, align 8
  %53 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 18
  store i32 %55, i32* %57, align 4
  %58 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 17
  store i32 %60, i32* %62, align 8
  %63 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %64 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 16
  store i32 %65, i32* %67, align 4
  %68 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %69 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 15
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @GET_MC_CLEAR_RET, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 14
  store i32 0, i32* %79, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 13
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* @PSL_C, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 15
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %99

88:                                               ; preds = %3
  %89 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %90 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 14
  store i32 %91, i32* %93, align 4
  %94 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %95 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 13
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %88, %77
  %100 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 12
  store i32 %102, i32* %104, align 4
  %105 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %106 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 11
  store i32 %107, i32* %109, align 8
  %110 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %111 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 10
  store i32 %112, i32* %114, align 4
  %115 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %116 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 9
  store i32 %117, i32* %119, align 8
  %120 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 8
  store i32 %122, i32* %124, align 4
  %125 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %126 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  store i32 %127, i32* %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  store i32 112, i32* %131, align 8
  %132 = load %struct.thread*, %struct.thread** %4, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = call i32 @get_fpcontext(%struct.thread* %132, %struct.TYPE_7__* %133, i32* null, i32 0)
  %135 = load %struct.thread*, %struct.thread** %4, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store %struct.segment_descriptor* %138, %struct.segment_descriptor** %8, align 8
  %139 = load %struct.segment_descriptor*, %struct.segment_descriptor** %8, align 8
  %140 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 24
  %143 = load %struct.segment_descriptor*, %struct.segment_descriptor** %8, align 8
  %144 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %142, %145
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.thread*, %struct.thread** %4, align 8
  %150 = getelementptr inbounds %struct.thread, %struct.thread* %149, i32 0, i32 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  store %struct.segment_descriptor* %152, %struct.segment_descriptor** %8, align 8
  %153 = load %struct.segment_descriptor*, %struct.segment_descriptor** %8, align 8
  %154 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = shl i32 %155, 24
  %157 = load %struct.segment_descriptor*, %struct.segment_descriptor** %8, align 8
  %158 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %156, %159
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 6
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 5
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 4
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @bzero(i32 %171, i32 4)
  ret i32 0
}

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @sigonstack(i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @get_fpcontext(%struct.thread*, %struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

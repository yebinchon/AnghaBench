; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_set_mcontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_set_mcontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.trapframe* }
%struct.pcb = type { i32, i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32* }

@_MC_VERSION_BITS = common dso_local global i64 0, align 8
@_MC_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FPRS_FEF = common dso_local global i32 0, align 4
@PCB_FEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_mcontext(%struct.thread* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TSTATE_SECURE(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @_MC_VERSION_BITS, align 8
  %18 = shl i64 1, %17
  %19 = sub nsw i64 %18, 1
  %20 = and i64 %16, %19
  %21 = load i64, i64* @_MC_VERSION, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13, %2
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %3, align 4
  br label %216

25:                                               ; preds = %13
  %26 = load %struct.thread*, %struct.thread** %4, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 1
  %28 = load %struct.trapframe*, %struct.trapframe** %27, align 8
  store %struct.trapframe* %28, %struct.trapframe** %6, align 8
  %29 = load %struct.thread*, %struct.thread** %4, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 0
  %31 = load %struct.pcb*, %struct.pcb** %30, align 8
  store %struct.pcb* %31, %struct.pcb** %7, align 8
  %32 = call i32 (...) @flushw()
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 10
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %39 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %38, i32 0, i32 8
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 10
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 8
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %46, i32* %50, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 10
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 8
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %55, i32* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 10
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %66 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 %64, i32* %68, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 10
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 5
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 10
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 6
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %84 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %83, i32 0, i32 8
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 6
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 9
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 7
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 9
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %102 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 %100, i32* %104, align 4
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 9
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %111 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %109, i32* %113, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 9
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %120 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %119, i32 0, i32 7
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 %118, i32* %122, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 9
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %129 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %128, i32 0, i32 7
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 4
  store i32 %127, i32* %131, align 4
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 9
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %138 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %137, i32 0, i32 7
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 9
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 6
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %147 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %146, i32 0, i32 7
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 6
  store i32 %145, i32* %149, align 4
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 9
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %156 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %155, i32 0, i32 7
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 7
  store i32 %154, i32* %158, align 4
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %163 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %168 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %167, i32 0, i32 6
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %173 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %178 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %177, i32 0, i32 4
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %183 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %182, i32 0, i32 3
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %188 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %187, i32 0, i32 2
  store i32 %186, i32* %188, align 8
  %189 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %193 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %192, i32 0, i32 1
  store i32 %191, i32* %193, align 4
  %194 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @FPRS_FEF, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %25
  %201 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %202 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %201, i32 0, i32 0
  store i32 0, i32* %202, align 8
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.pcb*, %struct.pcb** %7, align 8
  %207 = getelementptr inbounds %struct.pcb, %struct.pcb* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @bcopy(i32 %205, i32 %208, i32 4)
  %210 = load i32, i32* @PCB_FEF, align 4
  %211 = load %struct.pcb*, %struct.pcb** %7, align 8
  %212 = getelementptr inbounds %struct.pcb, %struct.pcb* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %200, %25
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %23
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @TSTATE_SECURE(i32) #1

declare dso_local i32 @flushw(...) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_save_vec_nodrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_spe.c_save_vec_nodrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_3__*, %struct.pcb* }
%struct.TYPE_3__ = type { i32* }
%struct.pcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32** }

@vecthread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_vec_nodrop(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.pcb*, align 8
  %5 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %6 = load i32, i32* @vecthread, align 4
  %7 = call %struct.thread* @PCPU_GET(i32 %6)
  store %struct.thread* %7, %struct.thread** %3, align 8
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = load %struct.thread*, %struct.thread** %3, align 8
  %10 = icmp eq %struct.thread* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.thread*, %struct.thread** %2, align 8
  %13 = call i32 @save_vec_int(%struct.thread* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.thread*, %struct.thread** %2, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.pcb*, %struct.pcb** %16, align 8
  store %struct.pcb* %17, %struct.pcb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %48, %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 32
  br i1 %20, label %21, label %51

21:                                               ; preds = %18
  %22 = load %struct.thread*, %struct.thread** %2, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = icmp ne %struct.TYPE_3__* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.thread*, %struct.thread** %2, align 8
  %28 = getelementptr inbounds %struct.thread, %struct.thread* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %26
  %38 = phi i32 [ %35, %26 ], [ 0, %36 ]
  %39 = load %struct.pcb*, %struct.pcb** %4, align 8
  %40 = getelementptr inbounds %struct.pcb, %struct.pcb* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 %38, i32* %47, align 4
  br label %48

48:                                               ; preds = %37
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %18

51:                                               ; preds = %18
  ret void
}

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @save_vec_int(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

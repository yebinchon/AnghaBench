; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i64 }
%struct.vfsconf = type { i32 }

@autofs_softc = common dso_local global %struct.TYPE_3__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@autofs_request_zone = common dso_local global i32 0, align 4
@autofs_node_zone = common dso_local global i32 0, align 4
@M_AUTOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_uninit(%struct.vfsconf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsconf*, align 8
  store %struct.vfsconf* %0, %struct.vfsconf** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @sx_xlock(i32* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @sx_xunlock(i32* %13)
  %15 = load i32, i32* @EBUSY, align 4
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @destroy_dev(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32, i32* @autofs_request_zone, align 4
  %28 = call i32 @uma_zdestroy(i32 %27)
  %29 = load i32, i32* @autofs_node_zone, align 4
  %30 = call i32 @uma_zdestroy(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @sx_xunlock(i32* %32)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @autofs_softc, align 8
  %35 = load i32, i32* @M_AUTOFS, align 4
  %36 = call i32 @free(%struct.TYPE_3__* %34, i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %26, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

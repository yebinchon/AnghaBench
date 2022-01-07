; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/extr_vhba.c_vhba_modprobe.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/extr_vhba.c_vhba_modprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@vhba = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"vhba\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhba_modprobe(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %61 [
    i32 129, label %9
    i32 128, label %31
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @M_DEVBUF, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_6__* @malloc(i32 12, i32 %10, i32 %13)
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** @vhba, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* @MTX_DEF, align 4
  %18 = call i32 @mtx_init(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i32 %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %20 = call i32 @vhba_attach(%struct.TYPE_6__* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %9
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @mtx_destroy(i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %28 = load i32, i32* @M_DEVBUF, align 4
  %29 = call i32 @free(%struct.TYPE_6__* %27, i32 %28)
  br label %30

30:                                               ; preds = %23, %9
  br label %63

31:                                               ; preds = %3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @mtx_lock(i32* %33)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = call i32 @TAILQ_FIRST(i32* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i32 @TAILQ_FIRST(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %31
  %45 = load i32, i32* @EBUSY, align 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  br label %63

49:                                               ; preds = %39
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %51 = call i32 @vhba_detach(%struct.TYPE_6__* %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @mtx_destroy(i32* %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vhba, align 8
  %59 = load i32, i32* @M_DEVBUF, align 4
  %60 = call i32 @free(%struct.TYPE_6__* %58, i32 %59)
  br label %63

61:                                               ; preds = %3
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %61, %49, %44, %30
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_6__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @vhba_attach(%struct.TYPE_6__*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_FIRST(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vhba_detach(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

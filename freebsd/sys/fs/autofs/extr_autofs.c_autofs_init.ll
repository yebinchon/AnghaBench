; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs.c_autofs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.vfsconf = type { i32 }

@autofs_softc = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"softc %p, should be NULL\00", align 1
@M_AUTOFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"autofs_request\00", align 1
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@autofs_request_zone = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"autofs_node\00", align 1
@autofs_node_zone = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"autofscv\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"autofslk\00", align 1
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@autofs_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"autofs\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"failed to create device node, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs_init(%struct.vfsconf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfsconf*, align 8
  %4 = alloca i32, align 4
  store %struct.vfsconf* %0, %struct.vfsconf** %3, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %6 = icmp eq %struct.TYPE_5__* %5, null
  %7 = zext i1 %6 to i32
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %9 = bitcast %struct.TYPE_5__* %8 to i8*
  %10 = call i32 @KASSERT(i32 %7, i8* %9)
  %11 = load i32, i32* @M_AUTOFS, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_5__* @malloc(i32 24, i32 %11, i32 %14)
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** @autofs_softc, align 8
  %16 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %17 = call i32 @uma_zcreate(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %16, i32 0)
  store i32 %17, i32* @autofs_request_zone, align 4
  %18 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %19 = call i32 @uma_zcreate(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 4, i32* null, i32* null, i32* null, i32* null, i32 %18, i32 0)
  store i32 %19, i32* @autofs_node_zone, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  %22 = call i32 @TAILQ_INIT(i32* %21)
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  %25 = call i32 @cv_init(i32* %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = call i32 @sx_init(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %29 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* @UID_ROOT, align 4
  %33 = load i32, i32* @GID_WHEEL, align 4
  %34 = call i32 @make_dev_p(i32 %29, %struct.TYPE_6__** %31, i32* @autofs_cdevsw, i32* null, i32 %32, i32 %33, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @AUTOFS_WARN(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @autofs_request_zone, align 4
  %41 = call i32 @uma_zdestroy(i32 %40)
  %42 = load i32, i32* @autofs_node_zone, align 4
  %43 = call i32 @uma_zdestroy(i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %45 = load i32, i32* @M_AUTOFS, align 4
  %46 = call i32 @free(%struct.TYPE_5__* %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @autofs_softc, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i32 @uma_zcreate(i8*, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @make_dev_p(i32, %struct.TYPE_6__**, i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @AUTOFS_WARN(i8*, i32) #1

declare dso_local i32 @uma_zdestroy(i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

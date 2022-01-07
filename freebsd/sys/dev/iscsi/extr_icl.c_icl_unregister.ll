; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_unregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl.c_icl_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.icl_module = type { %struct.icl_module* }

@sc = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"offload \22%s\22 not registered\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@im_next = common dso_local global i32 0, align 4
@M_ICL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"offload \22%s\22 unregistered\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icl_unregister(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icl_module*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call i32 @sx_xlock(i32* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.icl_module* @icl_find(i8* %10, i32 %11, i32 1)
  store %struct.icl_module* %12, %struct.icl_module** %6, align 8
  %13 = load %struct.icl_module*, %struct.icl_module** %6, align 8
  %14 = icmp eq %struct.icl_module* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @ICL_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @sx_xunlock(i32* %19)
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %3, align 4
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load %struct.icl_module*, %struct.icl_module** %6, align 8
  %26 = load i32, i32* @im_next, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* %24, %struct.icl_module* %25, i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sc, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @sx_xunlock(i32* %29)
  %31 = load %struct.icl_module*, %struct.icl_module** %6, align 8
  %32 = getelementptr inbounds %struct.icl_module, %struct.icl_module* %31, i32 0, i32 0
  %33 = load %struct.icl_module*, %struct.icl_module** %32, align 8
  %34 = load i32, i32* @M_ICL, align 4
  %35 = call i32 @free(%struct.icl_module* %33, i32 %34)
  %36 = load %struct.icl_module*, %struct.icl_module** %6, align 8
  %37 = load i32, i32* @M_ICL, align 4
  %38 = call i32 @free(%struct.icl_module* %36, i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @ICL_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %22, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.icl_module* @icl_find(i8*, i32, i32) #1

declare dso_local i32 @ICL_WARN(i8*, i8*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.icl_module*, i32) #1

declare dso_local i32 @free(%struct.icl_module*, i32) #1

declare dso_local i32 @ICL_DEBUG(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

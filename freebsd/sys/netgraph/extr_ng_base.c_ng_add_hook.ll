; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_add_hook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_add_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_16__*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HK_INVALID = common dso_local global i32 0, align 4
@ng_deadhook = common dso_local global i32 0, align 4
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@hk_hooks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i8*, %struct.TYPE_17__**)* @ng_add_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_add_hook(%struct.TYPE_16__* %0, i8* %1, %struct.TYPE_17__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_17__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_17__** %2, %struct.TYPE_17__*** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = call i32 (...) @TRAP_ERROR()
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %4, align 4
  br label %89

15:                                               ; preds = %3
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i32* @ng_findhook(%struct.TYPE_16__* %16, i8* %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = call i32 (...) @TRAP_ERROR()
  %22 = load i32, i32* @EEXIST, align 4
  store i32 %22, i32* %4, align 4
  br label %89

23:                                               ; preds = %15
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = call i32 @NG_ALLOC_HOOK(%struct.TYPE_17__* %24)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %27 = icmp eq %struct.TYPE_17__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = call i32 (...) @TRAP_ERROR()
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %4, align 4
  br label %89

31:                                               ; preds = %23
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @HK_INVALID, align 4
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 2
  store i32* @ng_deadhook, i32** %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 1
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = call i32 @NG_NODE_REF(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %45 = call i32 @NG_HOOK_NAME(%struct.TYPE_17__* %44)
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @NG_HOOKSIZ, align 4
  %48 = call i32 @strlcpy(i32 %45, i8* %46, i32 %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)** %52, align 8
  %54 = icmp ne i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %31
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)*, i32 (%struct.TYPE_16__*, %struct.TYPE_17__*, i8*)** %59, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 %60(%struct.TYPE_16__* %61, %struct.TYPE_17__* %62, i8* %63)
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = call i32 @NG_HOOK_UNREF(%struct.TYPE_17__* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %4, align 4
  br label %89

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = load i32, i32* @hk_hooks, align 4
  %76 = call i32 @LIST_INSERT_HEAD(i32* %73, %struct.TYPE_17__* %74, i32 %75)
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = call i32 @NG_HOOK_REF(%struct.TYPE_17__* %81)
  %83 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  %84 = icmp ne %struct.TYPE_17__** %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %87 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %7, align 8
  store %struct.TYPE_17__* %86, %struct.TYPE_17__** %87, align 8
  br label %88

88:                                               ; preds = %85, %71
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %66, %28, %20, %12
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32* @ng_findhook(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @NG_ALLOC_HOOK(%struct.TYPE_17__*) #1

declare dso_local i32 @NG_NODE_REF(%struct.TYPE_16__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @NG_HOOK_NAME(%struct.TYPE_17__*) #1

declare dso_local i32 @NG_HOOK_UNREF(%struct.TYPE_17__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @NG_HOOK_REF(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

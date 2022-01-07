; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_con_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_base.c_ng_con_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32*, %struct.TYPE_9__*, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HK_INVALID = common dso_local global i32 0, align 4
@ng_deadnode = common dso_local global i32 0, align 4
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@ng_con_part2 = common dso_local global i32 0, align 4
@NG_NOFLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed in ng_con_nodes(): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i8*)* @ng_con_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_con_nodes(i32 %0, i32 %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = call i32* @ng_findhook(i32 %15, i8* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EEXIST, align 4
  store i32 %20, i32* %6, align 4
  br label %80

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 @ng_add_hook(i32 %22, i8* %23, %struct.TYPE_9__** %13)
  store i32 %24, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %80

28:                                               ; preds = %21
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %30 = call i32 @NG_ALLOC_HOOK(%struct.TYPE_9__* %29)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = icmp eq %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = call i32 (...) @TRAP_ERROR()
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %36 = call i32 @ng_destroy_hook(%struct.TYPE_9__* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %38 = call i32 @NG_HOOK_UNREF(%struct.TYPE_9__* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  store i32 %39, i32* %6, align 4
  br label %80

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load i32, i32* @HK_INVALID, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 2
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %48, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %53 = call i32 @NG_HOOK_REF(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %55 = call i32 @NG_HOOK_REF(%struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  store i32* @ng_deadnode, i32** %57, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %59 = call i32 @NG_HOOK_NAME(%struct.TYPE_9__* %58)
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @NG_HOOKSIZ, align 4
  %62 = call i32 @strlcpy(i32 %59, i8* %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @NG_NOFLAGS, align 4
  %67 = call i32 @ng_send_fn2(i32 %63, %struct.TYPE_9__* %64, i32 %65, i32* @ng_con_part2, i32* null, i32 0, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %40
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %73 = call i32 @ng_destroy_hook(%struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %69, %40
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %76 = call i32 @NG_HOOK_UNREF(%struct.TYPE_9__* %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %78 = call i32 @NG_HOOK_UNREF(%struct.TYPE_9__* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %74, %33, %26, %19
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32* @ng_findhook(i32, i8*) #1

declare dso_local i32 @ng_add_hook(i32, i8*, %struct.TYPE_9__**) #1

declare dso_local i32 @NG_ALLOC_HOOK(%struct.TYPE_9__*) #1

declare dso_local i32 @TRAP_ERROR(...) #1

declare dso_local i32 @ng_destroy_hook(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_HOOK_UNREF(%struct.TYPE_9__*) #1

declare dso_local i32 @NG_HOOK_REF(%struct.TYPE_9__*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @NG_HOOK_NAME(%struct.TYPE_9__*) #1

declare dso_local i32 @ng_send_fn2(i32, %struct.TYPE_9__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

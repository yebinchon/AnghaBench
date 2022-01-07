; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_gif.c_ng_gif_newhook.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_gif.c_ng_gif_newhook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@NG_GIF_HOOK_DIVERT = common dso_local global i8* null, align 8
@NG_GIF_HOOK_LOWER = common dso_local global i8* null, align 8
@NG_GIF_HOOK_ORPHAN = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @ng_gif_newhook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_gif_newhook(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32**, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_3__* @NG_NODE_PRIVATE(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8*, i8** @NG_GIF_HOOK_DIVERT, align 8
  %18 = call i64 @strcmp(i8* %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i8*, i8** @NG_GIF_HOOK_LOWER, align 8
  store i8* %21, i8** %7, align 8
  br label %22

22:                                               ; preds = %20, %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i8*, i8** @NG_GIF_HOOK_LOWER, align 8
  %25 = call i64 @strcmp(i8* %23, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i32** %29, i32*** %10, align 8
  store i32 0, i32* %9, align 4
  br label %41

30:                                               ; preds = %22
  %31 = load i8*, i8** %7, align 8
  %32 = load i8*, i8** @NG_GIF_HOOK_ORPHAN, align 8
  %33 = call i64 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32** %37, i32*** %10, align 8
  store i32 1, i32* %9, align 4
  br label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %4, align 4
  br label %53

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %27
  %42 = load i32**, i32*** %10, align 8
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @EISCONN, align 4
  store i32 %46, i32* %4, align 4
  br label %53

47:                                               ; preds = %41
  %48 = load i32*, i32** %6, align 8
  %49 = load i32**, i32*** %10, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %47, %45, %38
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.TYPE_3__* @NG_NODE_PRIVATE(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

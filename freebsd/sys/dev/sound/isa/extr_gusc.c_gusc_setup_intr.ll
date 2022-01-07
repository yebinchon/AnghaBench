; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_gusc_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8*, i32* }
%struct.TYPE_4__ = type { i8*, i32* }

@.str = private unnamed_addr constant [37 x i8] c"gusc.c: we cannot use a filter here\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"midi\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"pcm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @gusc_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gusc_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.TYPE_6__*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @device_get_softc(i32 %20)
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** %18, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %9, align 4
  br label %70

29:                                               ; preds = %8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @device_get_devclass(i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %19, align 4
  %33 = call i32 @devclass_get_name(i32 %32)
  %34 = call i64 @strcmp(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32*, i32** %15, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32* %37, i32** %40, align 8
  %41 = load i8*, i8** %16, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %41, i8** %44, align 8
  store i32 0, i32* %9, align 4
  br label %70

45:                                               ; preds = %29
  %46 = load i32, i32* %19, align 4
  %47 = call i32 @devclass_get_name(i32 %46)
  %48 = call i64 @strcmp(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %45
  %51 = load i32*, i32** %15, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  store i32* %51, i32** %54, align 8
  %55 = load i8*, i8** %16, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  store i32 0, i32* %9, align 4
  br label %70

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.resource*, %struct.resource** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load i32*, i32** %14, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i8**, i8*** %17, align 8
  %69 = call i32 @bus_generic_setup_intr(i32 %61, i32 %62, %struct.resource* %63, i32 %64, i32* %65, i32* %66, i8* %67, i8** %68)
  store i32 %69, i32* %9, align 4
  br label %70

70:                                               ; preds = %60, %50, %36, %26
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @device_get_devclass(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @devclass_get_name(i32) #1

declare dso_local i32 @bus_generic_setup_intr(i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

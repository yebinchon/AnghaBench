; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__* }

@UMA_ZONE_VTOSLAB = common dso_local global i32 0, align 4
@UMA_SLAB_MASK = common dso_local global i64 0, align 8
@UMA_ZONE_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i8**, i32)* @zone_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_release(%struct.TYPE_11__* %0, i8** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %9, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %16 = call i32 @KEG_LOCK(%struct.TYPE_13__* %15)
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %77, %3
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %80

21:                                               ; preds = %17
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8*, i8** %22, i64 %24
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %7, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @UMA_ZONE_VTOSLAB, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %21
  %34 = load i8*, i8** %7, align 8
  %35 = ptrtoint i8* %34 to i64
  %36 = load i64, i64* @UMA_SLAB_MASK, align 8
  %37 = xor i64 %36, -1
  %38 = and i64 %35, %37
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %10, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @UMA_ZONE_HASH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %33
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32*, i32** %10, align 8
  %50 = call %struct.TYPE_12__* @hash_sfind(i32* %48, i32* %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %8, align 8
  br label %60

51:                                               ; preds = %33
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %10, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = bitcast i32* %58 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %59, %struct.TYPE_12__** %8, align 8
  br label %60

60:                                               ; preds = %51, %46
  br label %72

61:                                               ; preds = %21
  %62 = load i8*, i8** %7, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = call %struct.TYPE_12__* @vtoslab(i32 %63)
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %8, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = icmp eq %struct.TYPE_13__* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @MPASS(i32 %70)
  br label %72

72:                                               ; preds = %61, %60
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @slab_free_item(%struct.TYPE_11__* %73, %struct.TYPE_12__* %74, i8* %75)
  br label %77

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %17

80:                                               ; preds = %17
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %82 = call i32 @KEG_UNLOCK(%struct.TYPE_13__* %81)
  ret void
}

declare dso_local i32 @KEG_LOCK(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @hash_sfind(i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @vtoslab(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @slab_free_item(%struct.TYPE_11__*, %struct.TYPE_12__*, i8*) #1

declare dso_local i32 @KEG_UNLOCK(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

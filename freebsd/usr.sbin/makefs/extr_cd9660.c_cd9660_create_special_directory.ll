; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_create_special_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_cd9660.c_cd9660_create_special_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32* }

@CD9660_TYPE_DOT = common dso_local global i64 0, align 8
@CD9660_TYPE_DOTDOT = common dso_local global i64 0, align 8
@cn_next_child = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_12__* (i32*, i64, %struct.TYPE_12__*)* @cd9660_create_special_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_12__* @cd9660_create_special_directory(i32* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca [2 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %12 = icmp ne %struct.TYPE_12__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* @CD9660_TYPE_DOT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %19, align 1
  br label %28

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* @CD9660_TYPE_DOTDOT, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  store i8 1, i8* %25, align 1
  br label %27

26:                                               ; preds = %20
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %97

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27, %18
  %29 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  store i8 0, i8* %29, align 1
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %33 = call %struct.TYPE_12__* @cd9660_create_virtual_entry(i32* %30, i8* %31, %struct.TYPE_12__* %32, i32 0, i32 0)
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %8, align 8
  %34 = icmp eq %struct.TYPE_12__* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %4, align 8
  br label %97

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %39, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 34, i32* %48, align 4
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @CD9660_TYPE_DOT, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %36
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %59 = load i32, i32* @cn_next_child, align 4
  %60 = call i32 @TAILQ_INSERT_HEAD(i32* %57, %struct.TYPE_12__* %58, i32 %59)
  br label %95

61:                                               ; preds = %36
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @CD9660_TYPE_DOTDOT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %94

65:                                               ; preds = %61
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  store %struct.TYPE_12__* %66, %struct.TYPE_12__** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = call %struct.TYPE_12__* @TAILQ_FIRST(i32* %70)
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %9, align 8
  %72 = icmp eq %struct.TYPE_12__* %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @CD9660_TYPE_DOT, align 8
  %78 = and i64 %76, %77
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73, %65
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = load i32, i32* @cn_next_child, align 4
  %85 = call i32 @TAILQ_INSERT_HEAD(i32* %82, %struct.TYPE_12__* %83, i32 %84)
  br label %93

86:                                               ; preds = %73
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = load i32, i32* @cn_next_child, align 4
  %92 = call i32 @TAILQ_INSERT_AFTER(i32* %88, %struct.TYPE_12__* %89, %struct.TYPE_12__* %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %80
  br label %94

94:                                               ; preds = %93, %61
  br label %95

95:                                               ; preds = %94, %52
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %4, align 8
  br label %97

97:                                               ; preds = %95, %35, %26
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  ret %struct.TYPE_12__* %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_12__* @cd9660_create_virtual_entry(i32*, i8*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local %struct.TYPE_12__* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

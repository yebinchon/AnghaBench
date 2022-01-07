; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_recurse_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_recurse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@.str = private unnamed_addr constant [11 x i8] c"realloc(d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_9__*, i64*)* @recurse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @recurse_one(%struct.TYPE_9__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load i64*, i64** %4, align 8
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %8, align 8
  store i64 %11, i64* %9, align 8
  store i64 0, i64* %5, align 8
  br label %12

12:                                               ; preds = %109, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %112

16:                                               ; preds = %12
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = call i32 @recurse(%struct.TYPE_10__* %21)
  store i64 0, i64* %6, align 8
  br label %23

23:                                               ; preds = %105, %16
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %24, %31
  br i1 %32, label %33, label %108

33:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %34
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %40 = load i64, i64* %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = icmp eq %struct.TYPE_10__* %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %38
  br label %61

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %7, align 8
  br label %34

61:                                               ; preds = %56, %34
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %104

65:                                               ; preds = %61
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64*, i64** %4, align 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp uge i64 %68, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %65
  %73 = load i64*, i64** %4, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %4, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, %74
  store i64 %77, i64* %75, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = load i64*, i64** %4, align 8
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %80, 8
  %82 = call %struct.TYPE_9__* @realloc(%struct.TYPE_9__* %78, i64 %81)
  store %struct.TYPE_9__* %82, %struct.TYPE_9__** %3, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = icmp eq %struct.TYPE_9__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = call i32 @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %72
  br label %88

88:                                               ; preds = %87, %65
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = load i64, i64* %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  store %struct.TYPE_10__* %99, %struct.TYPE_10__** %103, align 8
  br label %104

104:                                              ; preds = %88, %61
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  br label %23

108:                                              ; preds = %23
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %5, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %5, align 8
  br label %12

112:                                              ; preds = %12
  %113 = load i64, i64* %9, align 8
  %114 = load i64*, i64** %4, align 8
  store i64 %113, i64* %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %115
}

declare dso_local i32 @recurse(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @realloc(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

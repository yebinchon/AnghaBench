; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_session.c_session_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidd/extr_session.c_session_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__*, i32*, i64, i32, i32*, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@CLOSED = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @session_open(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %8 = icmp ne %struct.TYPE_11__* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = call i64 @malloc(i32 80)
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %6, align 8
  %17 = icmp eq %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %81

19:                                               ; preds = %2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 11
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 10
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32* %24, i32* %26, i32 4)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  store i32 -1, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 9
  store i32* null, i32** %35, align 8
  %36 = load i32, i32* @CLOSED, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 3
  store i32 -1, i32* %40, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 4
  store i32 -1, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = call i32 (...) @kbd_maxkey()
  %46 = call i8* @bit_alloc(i32 %45)
  %47 = bitcast i8* %46 to %struct.TYPE_10__*
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = icmp eq %struct.TYPE_10__* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %19
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %56 = call i32 @free(%struct.TYPE_10__* %55)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %81

57:                                               ; preds = %19
  %58 = call i32 (...) @kbd_maxkey()
  %59 = call i8* @bit_alloc(i32 %58)
  %60 = bitcast i8* %59 to i32*
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 6
  store i32* %60, i32** %62, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 6
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 5
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @free(%struct.TYPE_10__* %70)
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %73 = call i32 @free(%struct.TYPE_10__* %72)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  br label %81

74:                                               ; preds = %57
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = load i32, i32* @next, align 4
  %79 = call i32 @LIST_INSERT_HEAD(i32* %76, %struct.TYPE_10__* %77, i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %80, %struct.TYPE_10__** %3, align 8
  br label %81

81:                                               ; preds = %74, %67, %54, %18
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  ret %struct.TYPE_10__* %82
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @bit_alloc(i32) #1

declare dso_local i32 @kbd_maxkey(...) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

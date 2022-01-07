; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@NBRD = common dso_local global i32 0, align 4
@adapter = common dso_local global i32** null, align 8
@NCHAN = common dso_local global i32 0, align 4
@cp_destroy = common dso_local global i64 0, align 8
@channel = common dso_local global %struct.TYPE_8__** null, align 8
@timeout_handle = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %89, %1
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @NBRD, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %92

11:                                               ; preds = %7
  %12 = load i32**, i32*** @adapter, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32*, i32** %12, i64 %14
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %89

19:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %85, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NCHAN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %88

24:                                               ; preds = %20
  %25 = call i32 (...) @splimp()
  store i32 %25, i32* %4, align 4
  %26 = load i64, i64* @cp_destroy, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @splx(i32 %29)
  br label %102

31:                                               ; preds = %24
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** @channel, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NCHAN, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %3, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @splx(i32 %44)
  br label %85

46:                                               ; preds = %31
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  %53 = call i32 @CP_LOCK(i32* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %74 [
    i32 130, label %59
    i32 132, label %64
    i32 131, label %69
    i32 128, label %69
    i32 129, label %69
  ]

59:                                               ; preds = %46
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %61, align 8
  %63 = call i32 @cp_g703_timer(%struct.TYPE_9__* %62)
  br label %75

64:                                               ; preds = %46
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = call i32 @cp_e1_timer(%struct.TYPE_9__* %67)
  br label %75

69:                                               ; preds = %46, %46, %46
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = call i32 @cp_e3_timer(%struct.TYPE_9__* %72)
  br label %75

74:                                               ; preds = %46
  br label %75

75:                                               ; preds = %74, %69, %64, %59
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @CP_UNLOCK(i32* %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @splx(i32 %83)
  br label %85

85:                                               ; preds = %75, %43
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %20

88:                                               ; preds = %20
  br label %89

89:                                               ; preds = %88, %18
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %7

92:                                               ; preds = %7
  %93 = call i32 (...) @splimp()
  store i32 %93, i32* %4, align 4
  %94 = load i64, i64* @cp_destroy, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @hz, align 4
  %98 = call i32 @callout_reset(i32* @timeout_handle, i32 %97, void (i8*)* @cp_timeout, i32 0)
  br label %99

99:                                               ; preds = %96, %92
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @splx(i32 %100)
  br label %102

102:                                              ; preds = %99, %28
  ret void
}

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @CP_LOCK(i32*) #1

declare dso_local i32 @cp_g703_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @cp_e1_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @cp_e3_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @CP_UNLOCK(i32*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

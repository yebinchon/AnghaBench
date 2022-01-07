; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/vhba/rptluns/extr_vhba_rptluns.c_vhba_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/vhba/rptluns/extr_vhba_rptluns.c_vhba_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.timeval = type { i32 }

@vhba_init.vhbas = internal global %struct.TYPE_5__ zeroinitializer, align 8
@DISK_SIZE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"setting luns\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@MAX_LUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@vhba_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vhba_init(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 4), align 8
  %6 = load i32, i32* @DISK_SIZE, align 4
  %7 = shl i32 %6, 20
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 0), align 8
  %9 = load i32, i32* @M_DEVBUF, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @malloc(i32 %8, i32 %9, i32 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 3), align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_5__* @vhba_init.vhbas, %struct.TYPE_5__** %15, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @getmicrotime(%struct.timeval* %3)
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 1), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %1
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = call i32 (...) @arc4random()
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = shl i32 1, %38
  %40 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 1), align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %35, %31
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %28

48:                                               ; preds = %28
  store i32 8, i32* %4, align 4
  br label %49

49:                                               ; preds = %72, %48
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MAX_LUN, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = call i32 (...) @arc4random()
  %55 = load i32, i32* %4, align 4
  %56 = srem i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 7
  %61 = shl i32 1, %60
  %62 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 1), align 8
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %61
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %58, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %49

75:                                               ; preds = %49
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @vhba_task, align 4
  %78 = call i32 @TASK_INIT(i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vhba_init.vhbas, i32 0, i32 2), i32 0, i32 %77, %struct.TYPE_5__* @vhba_init.vhbas)
  ret void
}

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getmicrotime(%struct.timeval*) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_outoneline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/join/extr_join.c_outoneline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@olist = common dso_local global %struct.TYPE_9__* null, align 8
@olistcnt = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@needsep = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_7__*)* @outoneline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @outoneline(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @olist, align 8
  %7 = icmp ne %struct.TYPE_9__* %6, null
  br i1 %7, label %8, label %54

8:                                                ; preds = %2
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %50, %8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @olistcnt, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %53

13:                                               ; preds = %9
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** @olist, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @olist, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @outfield(%struct.TYPE_7__* %25, i64 %30, i32 0)
  br label %49

32:                                               ; preds = %13
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @olist, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @outfield(%struct.TYPE_7__* %40, i64 %43, i32 0)
  br label %48

45:                                               ; preds = %32
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = call i32 @outfield(%struct.TYPE_7__* %46, i64 0, i32 1)
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %5, align 8
  br label %9

53:                                               ; preds = %9
  br label %81

54:                                               ; preds = %2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @outfield(%struct.TYPE_7__* %55, i64 %58, i32 0)
  store i64 0, i64* %5, align 8
  br label %60

60:                                               ; preds = %77, %54
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %5, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @outfield(%struct.TYPE_7__* %73, i64 %74, i32 0)
  br label %76

76:                                               ; preds = %72, %66
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  br label %60

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %53
  %82 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @stdout, align 4
  %84 = call i64 @ferror(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  store i64 0, i64* @needsep, align 8
  ret void
}

declare dso_local i32 @outfield(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @ferror(i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

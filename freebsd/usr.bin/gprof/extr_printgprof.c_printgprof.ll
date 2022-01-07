; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printgprof.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printgprof.c_printgprof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i64, i64, i64, i64, i32 }

@nname = common dso_local global i32 0, align 4
@ncycle = common dso_local global i32 0, align 4
@zflag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"-----------------------------------------------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printgprof(%struct.TYPE_9__** %0) #0 {
  %2 = alloca %struct.TYPE_9__**, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__** %0, %struct.TYPE_9__*** %2, align 8
  %5 = call i32 (...) @gprofheader()
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %73, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @nname, align 4
  %9 = load i32, i32* @ncycle, align 4
  %10 = add nsw i32 %8, %9
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %76

12:                                               ; preds = %6
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 %15
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %4, align 8
  %18 = load i64, i64* @zflag, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %12
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %73

41:                                               ; preds = %35, %30, %25, %20, %12
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %73

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %59 = call i32 @printcycle(%struct.TYPE_9__* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = call i32 @printmembers(%struct.TYPE_9__* %60)
  br label %69

62:                                               ; preds = %52, %47
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = call i32 @printparents(%struct.TYPE_9__* %63)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %66 = call i32 @gprofline(%struct.TYPE_9__* %65)
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %68 = call i32 @printchildren(%struct.TYPE_9__* %67)
  br label %69

69:                                               ; preds = %62, %57
  %70 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %71 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %72 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %69, %46, %40
  %74 = load i32, i32* %3, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %3, align 4
  br label %6

76:                                               ; preds = %6
  %77 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %2, align 8
  %78 = call i32 @free(%struct.TYPE_9__** %77)
  ret void
}

declare dso_local i32 @gprofheader(...) #1

declare dso_local i32 @printcycle(%struct.TYPE_9__*) #1

declare dso_local i32 @printmembers(%struct.TYPE_9__*) #1

declare dso_local i32 @printparents(%struct.TYPE_9__*) #1

declare dso_local i32 @gprofline(%struct.TYPE_9__*) #1

declare dso_local i32 @printchildren(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

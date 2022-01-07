; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_lace_cpus_together.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_pmcstudy.c_lace_cpus_together.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counters = type { i32, %struct.counters* }

@ncnts = common dso_local global i32 0, align 4
@cnts = common dso_local global %struct.counters* null, align 8
@MAX_CPU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"CPU %d to big\0A\00", align 1
@glob_cpu = common dso_local global %struct.counters** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @lace_cpus_together to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lace_cpus_together() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.counters*, align 8
  %5 = alloca %struct.counters*, align 8
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %77, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @ncnts, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %80

10:                                               ; preds = %6
  %11 = load %struct.counters*, %struct.counters** @cnts, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.counters, %struct.counters* %11, i64 %13
  store %struct.counters* %14, %struct.counters** %4, align 8
  %15 = load %struct.counters*, %struct.counters** %4, align 8
  %16 = getelementptr inbounds %struct.counters, %struct.counters* %15, i32 0, i32 1
  %17 = load %struct.counters*, %struct.counters** %16, align 8
  %18 = icmp ne %struct.counters* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %77

20:                                               ; preds = %10
  %21 = load %struct.counters*, %struct.counters** %4, align 8
  %22 = getelementptr inbounds %struct.counters, %struct.counters* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @MAX_CPU, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %77

30:                                               ; preds = %20
  %31 = load %struct.counters**, %struct.counters*** @glob_cpu, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.counters*, %struct.counters** %31, i64 %33
  %35 = load %struct.counters*, %struct.counters** %34, align 8
  %36 = icmp eq %struct.counters* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.counters*, %struct.counters** %4, align 8
  %39 = load %struct.counters**, %struct.counters*** @glob_cpu, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.counters*, %struct.counters** %39, i64 %41
  store %struct.counters* %38, %struct.counters** %42, align 8
  br label %44

43:                                               ; preds = %30
  br label %77

44:                                               ; preds = %37
  %45 = load i32, i32* %1, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %73, %44
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* @ncnts, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %76

51:                                               ; preds = %47
  %52 = load %struct.counters*, %struct.counters** @cnts, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.counters, %struct.counters* %52, i64 %54
  store %struct.counters* %55, %struct.counters** %5, align 8
  %56 = load %struct.counters*, %struct.counters** %5, align 8
  %57 = getelementptr inbounds %struct.counters, %struct.counters* %56, i32 0, i32 1
  %58 = load %struct.counters*, %struct.counters** %57, align 8
  %59 = icmp ne %struct.counters* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %73

61:                                               ; preds = %51
  %62 = load %struct.counters*, %struct.counters** %5, align 8
  %63 = getelementptr inbounds %struct.counters, %struct.counters* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %3, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.counters*, %struct.counters** %5, align 8
  %69 = load %struct.counters*, %struct.counters** %4, align 8
  %70 = getelementptr inbounds %struct.counters, %struct.counters* %69, i32 0, i32 1
  store %struct.counters* %68, %struct.counters** %70, align 8
  %71 = load %struct.counters*, %struct.counters** %5, align 8
  store %struct.counters* %71, %struct.counters** %4, align 8
  br label %72

72:                                               ; preds = %67, %61
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %47

76:                                               ; preds = %47
  br label %77

77:                                               ; preds = %76, %43, %27, %19
  %78 = load i32, i32* %1, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %1, align 4
  br label %6

80:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

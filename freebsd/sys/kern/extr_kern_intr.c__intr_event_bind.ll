; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c__intr_event_bind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c__intr_event_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 (i32, i32)*, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NOCPU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PRIV_SCHED_CPUSET_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intr_event*, i32, i32, i32)* @_intr_event_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_intr_event_bind(%struct.intr_event* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intr_event* %0, %struct.intr_event** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @NOCPU, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @CPU_ABSENT(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %136

21:                                               ; preds = %15, %4
  %22 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %23 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %22, i32 0, i32 0
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp eq i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %27, i32* %5, align 4
  br label %136

28:                                               ; preds = %21
  %29 = load i32, i32* @curthread, align 4
  %30 = load i32, i32* @PRIV_SCHED_CPUSET_INTR, align 4
  %31 = call i32 @priv_check(i32 %29, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %136

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %36
  %40 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %41 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %40, i32 0, i32 2
  %42 = call i32 @mtx_lock(i32* %41)
  %43 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %44 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = icmp ne %struct.TYPE_4__* %45, null
  br i1 %46, label %47, label %66

47:                                               ; preds = %39
  %48 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %49 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %10, align 4
  %55 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %56 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %55, i32 0, i32 2
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @cpuset_setithread(i32 %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %47
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %136

65:                                               ; preds = %47
  br label %70

66:                                               ; preds = %39
  %67 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %68 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %67, i32 0, i32 2
  %69 = call i32 @mtx_unlock(i32* %68)
  br label %70

70:                                               ; preds = %66, %65
  br label %71

71:                                               ; preds = %70, %36
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %76 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %75, i32 0, i32 0
  %77 = load i32 (i32, i32)*, i32 (i32, i32)** %76, align 8
  %78 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %79 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 %77(i32 %80, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %74, %71
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %119

89:                                               ; preds = %86
  %90 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %91 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %90, i32 0, i32 2
  %92 = call i32 @mtx_lock(i32* %91)
  %93 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %94 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = icmp ne %struct.TYPE_4__* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %89
  %98 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %99 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %7, align 4
  %101 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %102 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %101, i32 0, i32 3
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %109 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %108, i32 0, i32 2
  %110 = call i32 @mtx_unlock(i32* %109)
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @cpuset_setithread(i32 %111, i32 %112)
  br label %118

114:                                              ; preds = %89
  %115 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %116 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %115, i32 0, i32 2
  %117 = call i32 @mtx_unlock(i32* %116)
  br label %118

118:                                              ; preds = %114, %97
  br label %119

119:                                              ; preds = %118, %86
  %120 = load i32, i32* %11, align 4
  store i32 %120, i32* %5, align 4
  br label %136

121:                                              ; preds = %83
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %121
  %125 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %126 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %125, i32 0, i32 2
  %127 = call i32 @mtx_lock(i32* %126)
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %130 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load %struct.intr_event*, %struct.intr_event** %6, align 8
  %132 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %131, i32 0, i32 2
  %133 = call i32 @mtx_unlock(i32* %132)
  br label %134

134:                                              ; preds = %124, %121
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %119, %63, %34, %26, %19
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i64 @CPU_ABSENT(i32) #1

declare dso_local i32 @priv_check(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cpuset_setithread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

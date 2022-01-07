; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_feature_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_cpu.c_cpu_feature_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cputab = type { i32, i32, i32 }

@models = common dso_local global %struct.cputab* null, align 8
@cput = common dso_local global %struct.cputab* null, align 8
@cpu_features = common dso_local global i32 0, align 4
@cpu_features2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_feature_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.cputab*, align 8
  %4 = call i32 (...) @mfpvr()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %1, align 4
  %6 = ashr i32 %5, 16
  store i32 %6, i32* %2, align 4
  %7 = load %struct.cputab*, %struct.cputab** @models, align 8
  store %struct.cputab* %7, %struct.cputab** %3, align 8
  br label %8

8:                                                ; preds = %21, %0
  %9 = load %struct.cputab*, %struct.cputab** %3, align 8
  %10 = getelementptr inbounds %struct.cputab, %struct.cputab* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.cputab*, %struct.cputab** %3, align 8
  %15 = getelementptr inbounds %struct.cputab, %struct.cputab* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %24

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.cputab*, %struct.cputab** %3, align 8
  %23 = getelementptr inbounds %struct.cputab, %struct.cputab* %22, i32 1
  store %struct.cputab* %23, %struct.cputab** %3, align 8
  br label %8

24:                                               ; preds = %19, %8
  %25 = load %struct.cputab*, %struct.cputab** %3, align 8
  store %struct.cputab* %25, %struct.cputab** @cput, align 8
  %26 = load %struct.cputab*, %struct.cputab** %3, align 8
  %27 = getelementptr inbounds %struct.cputab, %struct.cputab* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @cpu_features, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* @cpu_features, align 4
  %31 = load %struct.cputab*, %struct.cputab** %3, align 8
  %32 = getelementptr inbounds %struct.cputab, %struct.cputab* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @cpu_features2, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* @cpu_features2, align 4
  ret void
}

declare dso_local i32 @mfpvr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

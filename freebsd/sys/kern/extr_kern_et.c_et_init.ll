; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_et.c_et_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_et.c_et_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eventtimer = type { i32, i8*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et_init(%struct.eventtimer* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eventtimer*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store %struct.eventtimer* %0, %struct.eventtimer** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %5, align 4
  br label %33

14:                                               ; preds = %4
  %15 = load %struct.eventtimer*, %struct.eventtimer** %6, align 8
  %16 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EBUSY, align 4
  store i32 %20, i32* %5, align 4
  br label %33

21:                                               ; preds = %14
  %22 = load %struct.eventtimer*, %struct.eventtimer** %6, align 8
  %23 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.eventtimer*, %struct.eventtimer** %6, align 8
  %26 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load %struct.eventtimer*, %struct.eventtimer** %6, align 8
  %29 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.eventtimer*, %struct.eventtimer** %6, align 8
  %32 = getelementptr inbounds %struct.eventtimer, %struct.eventtimer* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %21, %19, %12
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

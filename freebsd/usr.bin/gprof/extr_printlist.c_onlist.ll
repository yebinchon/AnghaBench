; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printlist.c_onlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_printlist.c_onlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stringlist = type { i32, %struct.stringlist* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @onlist(%struct.stringlist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stringlist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stringlist*, align 8
  store %struct.stringlist* %0, %struct.stringlist** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.stringlist*, %struct.stringlist** %4, align 8
  %8 = getelementptr inbounds %struct.stringlist, %struct.stringlist* %7, i32 0, i32 1
  %9 = load %struct.stringlist*, %struct.stringlist** %8, align 8
  store %struct.stringlist* %9, %struct.stringlist** %6, align 8
  br label %10

10:                                               ; preds = %39, %2
  %11 = load %struct.stringlist*, %struct.stringlist** %6, align 8
  %12 = icmp ne %struct.stringlist* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.stringlist*, %struct.stringlist** %6, align 8
  %15 = getelementptr inbounds %struct.stringlist, %struct.stringlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strcmp(i32 %16, i8* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* @TRUE, align 4
  store i32 %21, i32* %3, align 4
  br label %45

22:                                               ; preds = %13
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 95
  br i1 %27, label %28, label %38

28:                                               ; preds = %22
  %29 = load %struct.stringlist*, %struct.stringlist** %6, align 8
  %30 = getelementptr inbounds %struct.stringlist, %struct.stringlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  %34 = call i32 @strcmp(i32 %31, i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @TRUE, align 4
  store i32 %37, i32* %3, align 4
  br label %45

38:                                               ; preds = %28, %22
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.stringlist*, %struct.stringlist** %6, align 8
  %41 = getelementptr inbounds %struct.stringlist, %struct.stringlist* %40, i32 0, i32 1
  %42 = load %struct.stringlist*, %struct.stringlist** %41, align 8
  store %struct.stringlist* %42, %struct.stringlist** %6, align 8
  br label %10

43:                                               ; preds = %10
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %36, %20
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

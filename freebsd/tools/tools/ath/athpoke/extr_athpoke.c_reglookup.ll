; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_reglookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athpoke/extr_athpoke.c_reglookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.dumpreg**, %struct.TYPE_3__ }
%struct.dumpreg = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"AR_\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dumpreg* (i8*)* @reglookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dumpreg* @reglookup(i8* %0) #0 {
  %2 = alloca %struct.dumpreg*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dumpreg*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_3__* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 2), %struct.TYPE_3__** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i64 @strncasecmp(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 3
  store i8* %12, i8** %3, align 8
  br label %13

13:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %43, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 0), align 8
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load %struct.dumpreg**, %struct.dumpreg*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @state, i32 0, i32 1), align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dumpreg*, %struct.dumpreg** %19, i64 %21
  %23 = load %struct.dumpreg*, %struct.dumpreg** %22, align 8
  store %struct.dumpreg* %23, %struct.dumpreg** %6, align 8
  %24 = load %struct.dumpreg*, %struct.dumpreg** %6, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @MAC_MATCH(%struct.dumpreg* %24, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  %34 = load i8*, i8** %3, align 8
  %35 = load %struct.dumpreg*, %struct.dumpreg** %6, align 8
  %36 = getelementptr inbounds %struct.dumpreg, %struct.dumpreg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @strcasecmp(i8* %34, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.dumpreg*, %struct.dumpreg** %6, align 8
  store %struct.dumpreg* %41, %struct.dumpreg** %2, align 8
  br label %47

42:                                               ; preds = %33, %18
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %14

46:                                               ; preds = %14
  store %struct.dumpreg* null, %struct.dumpreg** %2, align 8
  br label %47

47:                                               ; preds = %46, %40
  %48 = load %struct.dumpreg*, %struct.dumpreg** %2, align 8
  ret %struct.dumpreg* %48
}

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i64 @MAC_MATCH(%struct.dumpreg*, i32, i32) #1

declare dso_local i64 @strcasecmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

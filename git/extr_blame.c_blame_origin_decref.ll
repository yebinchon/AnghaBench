; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_blame_origin_decref.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_blame_origin_decref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_origin = type { i64, %struct.blame_origin*, i32, %struct.TYPE_2__, %struct.blame_origin* }
%struct.TYPE_2__ = type { %struct.blame_origin* }

@.str = private unnamed_addr constant [38 x i8] c"internal error in blame_origin_decref\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blame_origin_decref(%struct.blame_origin* %0) #0 {
  %2 = alloca %struct.blame_origin*, align 8
  %3 = alloca %struct.blame_origin*, align 8
  %4 = alloca %struct.blame_origin*, align 8
  store %struct.blame_origin* %0, %struct.blame_origin** %2, align 8
  %5 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %6 = icmp ne %struct.blame_origin* %5, null
  br i1 %6, label %7, label %67

7:                                                ; preds = %1
  %8 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %9 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  %12 = icmp sle i64 %11, 0
  br i1 %12, label %13, label %67

13:                                               ; preds = %7
  store %struct.blame_origin* null, %struct.blame_origin** %4, align 8
  %14 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %15 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %14, i32 0, i32 4
  %16 = load %struct.blame_origin*, %struct.blame_origin** %15, align 8
  %17 = icmp ne %struct.blame_origin* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %20 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %19, i32 0, i32 4
  %21 = load %struct.blame_origin*, %struct.blame_origin** %20, align 8
  call void @blame_origin_decref(%struct.blame_origin* %21)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %24 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.blame_origin*, %struct.blame_origin** %25, align 8
  %27 = call i32 @free(%struct.blame_origin* %26)
  %28 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %29 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.blame_origin* @get_blame_suspects(i32 %30)
  store %struct.blame_origin* %31, %struct.blame_origin** %3, align 8
  br label %32

32:                                               ; preds = %60, %22
  %33 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %34 = icmp ne %struct.blame_origin* %33, null
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %37 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %38 = icmp eq %struct.blame_origin* %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load %struct.blame_origin*, %struct.blame_origin** %4, align 8
  %41 = icmp ne %struct.blame_origin* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %44 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %43, i32 0, i32 1
  %45 = load %struct.blame_origin*, %struct.blame_origin** %44, align 8
  %46 = load %struct.blame_origin*, %struct.blame_origin** %4, align 8
  %47 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %46, i32 0, i32 1
  store %struct.blame_origin* %45, %struct.blame_origin** %47, align 8
  br label %56

48:                                               ; preds = %39
  %49 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %50 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %53 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %52, i32 0, i32 1
  %54 = load %struct.blame_origin*, %struct.blame_origin** %53, align 8
  %55 = call i32 @set_blame_suspects(i32 %51, %struct.blame_origin* %54)
  br label %56

56:                                               ; preds = %48, %42
  %57 = load %struct.blame_origin*, %struct.blame_origin** %2, align 8
  %58 = call i32 @free(%struct.blame_origin* %57)
  br label %67

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  store %struct.blame_origin* %61, %struct.blame_origin** %4, align 8
  %62 = load %struct.blame_origin*, %struct.blame_origin** %3, align 8
  %63 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %62, i32 0, i32 1
  %64 = load %struct.blame_origin*, %struct.blame_origin** %63, align 8
  store %struct.blame_origin* %64, %struct.blame_origin** %3, align 8
  br label %32

65:                                               ; preds = %32
  %66 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %56, %65, %7, %1
  ret void
}

declare dso_local i32 @free(%struct.blame_origin*) #1

declare dso_local %struct.blame_origin* @get_blame_suspects(i32) #1

declare dso_local i32 @set_blame_suspects(i32, %struct.blame_origin*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

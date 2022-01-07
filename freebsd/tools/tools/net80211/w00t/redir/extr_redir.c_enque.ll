; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_enque.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_enque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, %struct.queue* }
%struct.queue = type { i32, i8*, i32, i64, %struct.ieee80211_frame*, %struct.queue* }
%struct.ieee80211_frame = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Enque.  Size: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enque(%struct.params* %0, i8** %1, %struct.ieee80211_frame* %2, i32 %3) #0 {
  %5 = alloca %struct.params*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.ieee80211_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.queue*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.queue*, align 8
  store %struct.params* %0, %struct.params** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.ieee80211_frame* %2, %struct.ieee80211_frame** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.params*, %struct.params** %5, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 1
  %15 = load %struct.queue*, %struct.queue** %14, align 8
  store %struct.queue* %15, %struct.queue** %9, align 8
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store %struct.queue* null, %struct.queue** %12, align 8
  br label %16

16:                                               ; preds = %31, %4
  %17 = load %struct.queue*, %struct.queue** %9, align 8
  %18 = icmp ne %struct.queue* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load %struct.queue*, %struct.queue** %9, align 8
  %21 = getelementptr inbounds %struct.queue, %struct.queue* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %10, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.queue*, %struct.queue** %9, align 8
  %29 = getelementptr inbounds %struct.queue, %struct.queue* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  br label %36

31:                                               ; preds = %24
  %32 = load %struct.queue*, %struct.queue** %9, align 8
  store %struct.queue* %32, %struct.queue** %12, align 8
  %33 = load %struct.queue*, %struct.queue** %9, align 8
  %34 = getelementptr inbounds %struct.queue, %struct.queue* %33, i32 0, i32 5
  %35 = load %struct.queue*, %struct.queue** %34, align 8
  store %struct.queue* %35, %struct.queue** %9, align 8
  br label %16

36:                                               ; preds = %27, %16
  %37 = load %struct.queue*, %struct.queue** %9, align 8
  %38 = icmp ne %struct.queue* %37, null
  br i1 %38, label %64, label %39

39:                                               ; preds = %36
  %40 = call i64 @malloc(i32 48)
  %41 = inttoptr i64 %40 to %struct.queue*
  store %struct.queue* %41, %struct.queue** %9, align 8
  %42 = load %struct.queue*, %struct.queue** %9, align 8
  %43 = icmp ne %struct.queue* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %39
  %47 = load %struct.queue*, %struct.queue** %9, align 8
  %48 = call i32 @memset(%struct.queue* %47, i32 0, i32 48)
  %49 = load %struct.params*, %struct.params** %5, align 8
  %50 = getelementptr inbounds %struct.params, %struct.params* %49, i32 0, i32 1
  %51 = load %struct.queue*, %struct.queue** %50, align 8
  %52 = icmp ne %struct.queue* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.queue*, %struct.queue** %9, align 8
  %55 = load %struct.params*, %struct.params** %5, align 8
  %56 = getelementptr inbounds %struct.params, %struct.params* %55, i32 0, i32 1
  store %struct.queue* %54, %struct.queue** %56, align 8
  br label %63

57:                                               ; preds = %46
  %58 = load %struct.queue*, %struct.queue** %12, align 8
  %59 = call i32 @assert(%struct.queue* %58)
  %60 = load %struct.queue*, %struct.queue** %9, align 8
  %61 = load %struct.queue*, %struct.queue** %12, align 8
  %62 = getelementptr inbounds %struct.queue, %struct.queue* %61, i32 0, i32 5
  store %struct.queue* %60, %struct.queue** %62, align 8
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63, %36
  %65 = load %struct.queue*, %struct.queue** %9, align 8
  %66 = getelementptr inbounds %struct.queue, %struct.queue* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i8**, i8*** %6, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.queue*, %struct.queue** %9, align 8
  %70 = getelementptr inbounds %struct.queue, %struct.queue* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.queue*, %struct.queue** %9, align 8
  %73 = getelementptr inbounds %struct.queue, %struct.queue* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %7, align 8
  %75 = load %struct.queue*, %struct.queue** %9, align 8
  %76 = getelementptr inbounds %struct.queue, %struct.queue* %75, i32 0, i32 4
  store %struct.ieee80211_frame* %74, %struct.ieee80211_frame** %76, align 8
  %77 = load %struct.params*, %struct.params** %5, align 8
  %78 = getelementptr inbounds %struct.params, %struct.params* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 8
  %81 = sext i32 %79 to i64
  %82 = load %struct.queue*, %struct.queue** %9, align 8
  %83 = getelementptr inbounds %struct.queue, %struct.queue* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp sgt i32 %86, 5
  br i1 %87, label %88, label %91

88:                                               ; preds = %64
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %88, %64
  %92 = load i8*, i8** %11, align 8
  %93 = load i8**, i8*** %6, align 8
  store i8* %92, i8** %93, align 8
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(%struct.queue*, i32, i32) #1

declare dso_local i32 @assert(%struct.queue*) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

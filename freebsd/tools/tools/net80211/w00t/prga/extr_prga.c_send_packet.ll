; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/prga/extr_prga.c_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32, i32, i64, i32, i32 }
%struct.ieee80211_frame = type { i32* }

@.str = private unnamed_addr constant [9 x i8] c"inject()\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Wrote %d/%d\0A\00", align 1
@IEEE80211_FC1_RETRY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"gettimeofday()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @send_packet(%struct.params* %0) #0 {
  %2 = alloca %struct.params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_frame*, align 8
  store %struct.params* %0, %struct.params** %2, align 8
  %5 = load %struct.params*, %struct.params** %2, align 8
  %6 = getelementptr inbounds %struct.params, %struct.params* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.params*, %struct.params** %2, align 8
  %9 = getelementptr inbounds %struct.params, %struct.params* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.params*, %struct.params** %2, align 8
  %12 = getelementptr inbounds %struct.params, %struct.params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @inject(i32 %7, i64 %10, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.params*, %struct.params** %2, align 8
  %22 = getelementptr inbounds %struct.params, %struct.params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.params*, %struct.params** %2, align 8
  %28 = getelementptr inbounds %struct.params, %struct.params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %19
  %33 = load %struct.params*, %struct.params** %2, align 8
  %34 = getelementptr inbounds %struct.params, %struct.params* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.params*, %struct.params** %2, align 8
  %38 = getelementptr inbounds %struct.params, %struct.params* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.ieee80211_frame*
  store %struct.ieee80211_frame* %40, %struct.ieee80211_frame** %4, align 8
  %41 = load i32, i32* @IEEE80211_FC1_RETRY, align 4
  %42 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  %48 = load %struct.params*, %struct.params** %2, align 8
  %49 = getelementptr inbounds %struct.params, %struct.params* %48, i32 0, i32 1
  %50 = call i32 @gettimeofday(i32* %49, i32* null)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %32
  %53 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %32
  ret void
}

declare dso_local i32 @inject(i32, i64, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_ssid2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_ssid2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_info = type { i8*, i64 }

@ssid2str.res = internal global [24 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"<client>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ssid2str(%struct.node_info* %0) #0 {
  %2 = alloca %struct.node_info*, align 8
  %3 = alloca i32, align 4
  store %struct.node_info* %0, %struct.node_info** %2, align 8
  %4 = call i32 @memset(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 0), i8 signext 32, i32 24)
  store i8 91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 0), align 16
  %5 = call i32 @strcpy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 22), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.node_info*, %struct.node_info** %2, align 8
  %7 = getelementptr inbounds %struct.node_info, %struct.node_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  store i32 21, i32* %3, align 4
  %11 = load %struct.node_info*, %struct.node_info** %2, align 8
  %12 = getelementptr inbounds %struct.node_info, %struct.node_info* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.node_info*, %struct.node_info** %2, align 8
  %19 = getelementptr inbounds %struct.node_info, %struct.node_info* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strlen(i8* %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.node_info*, %struct.node_info** %2, align 8
  %24 = getelementptr inbounds %struct.node_info, %struct.node_info* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @memcpy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 1), i8* %25, i32 %26)
  br label %30

28:                                               ; preds = %1
  %29 = call i32 @memcpy(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 1), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  br label %30

30:                                               ; preds = %28, %22
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @ssid2str.res, i64 0, i64 0)
}

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

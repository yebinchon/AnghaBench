; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_auth.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/ap/extr_ap.c_read_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i32 }
%struct.ieee80211_frame = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"Unknown auth algo %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Got auth from %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Weird seq in auth %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_auth(%struct.params* %0, %struct.ieee80211_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.params*, align 8
  %5 = alloca %struct.ieee80211_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16*, align 8
  %8 = alloca [18 x i8], align 16
  store %struct.params* %0, %struct.params** %4, align 8
  store %struct.ieee80211_frame* %1, %struct.ieee80211_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.params*, %struct.params** %4, align 8
  %13 = getelementptr inbounds %struct.params, %struct.params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @memcmp(i32 %11, i32 %14, i32 6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %56

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %19, i64 1
  %21 = bitcast %struct.ieee80211_frame* %20 to i16*
  store i16* %21, i16** %7, align 8
  %22 = load i16*, i16** %7, align 8
  %23 = load i16, i16* %22, align 2
  %24 = call i32 @le16toh(i16 zeroext %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i16*, i16** %7, align 8
  %28 = load i16, i16* %27, align 2
  %29 = call i32 @le16toh(i16 zeroext %28)
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %56

31:                                               ; preds = %18
  %32 = load i16*, i16** %7, align 8
  %33 = getelementptr inbounds i16, i16* %32, i32 1
  store i16* %33, i16** %7, align 8
  %34 = load i16*, i16** %7, align 8
  %35 = load i16, i16* %34, align 2
  %36 = call i32 @le16toh(i16 zeroext %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %31
  %39 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %40 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @mac2str(i8* %39, i32 %42)
  %44 = getelementptr inbounds [18 x i8], [18 x i8]* %8, i64 0, i64 0
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.params*, %struct.params** %4, align 8
  %47 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @send_auth(%struct.params* %46, i32 %49)
  br label %56

51:                                               ; preds = %31
  %52 = load i16*, i16** %7, align 8
  %53 = load i16, i16* %52, align 2
  %54 = call i32 @le16toh(i16 zeroext %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %17, %26, %51, %38
  ret void
}

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @le16toh(i16 zeroext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @mac2str(i8*, i32) #1

declare dso_local i32 @send_auth(%struct.params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

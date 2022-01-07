; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_add_keystream.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wesside/wesside/extr_wesside.c_add_keystream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }

@ptw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_keystream(%struct.ieee80211_frame* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [1024 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, 4
  %13 = sub i64 %12, 4
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %17 = getelementptr inbounds %struct.ieee80211_frame, %struct.ieee80211_frame* %16, i64 1
  %18 = bitcast %struct.ieee80211_frame* %17 to i8*
  store i8* %18, i8** %8, align 8
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %20 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %3, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @known_clear(i8* %19, %struct.ieee80211_frame* %20, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %53

26:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %45, %26
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 4, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = xor i32 %42, %37
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %45

45:                                               ; preds = %30
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load i32, i32* @ptw, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i64 0, i64 0
  %52 = call i32 @PTW_addsession(i32 %49, i8* %50, i8* %51)
  br label %53

53:                                               ; preds = %48, %25
  ret void
}

declare dso_local i32 @known_clear(i8*, %struct.ieee80211_frame*, i32) #1

declare dso_local i32 @PTW_addsession(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

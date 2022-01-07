; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_known_pt.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/libw00t/extr_w00t.c_known_pt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_frame = type { i32 }

@known_pt.known_pt_arp = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"\AA\AA\03\00\00\00\08\06\00", align 1
@known_pt.known_pt_ip = internal global i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"\AA\AA\03\00\00\00\08\00\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @known_pt(%struct.ieee80211_frame* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_frame*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_frame* %0, %struct.ieee80211_frame** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ieee80211_frame*, %struct.ieee80211_frame** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @is_arp(%struct.ieee80211_frame* %7, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 8, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i8*, i8** @known_pt.known_pt_arp, align 8
  store i8* %15, i8** %3, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** @known_pt.known_pt_ip, align 8
  store i8* %17, i8** %3, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

declare dso_local i32 @is_arp(%struct.ieee80211_frame*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

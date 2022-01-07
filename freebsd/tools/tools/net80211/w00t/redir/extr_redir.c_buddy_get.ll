; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_buddy_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_redir.c_buddy_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.params = type { i64, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @buddy_get(%struct.params* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.params* %0, %struct.params** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.params*, %struct.params** %4, align 8
  %8 = getelementptr inbounds %struct.params, %struct.params* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.params*, %struct.params** %4, align 8
  %11 = getelementptr inbounds %struct.params, %struct.params* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.params*, %struct.params** %4, align 8
  %14 = getelementptr inbounds %struct.params, %struct.params* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @recv(i32 %9, i32* %16, i32 %17, i32 0)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.params*, %struct.params** %4, align 8
  %23 = call i32 @buddy_reset(%struct.params* %22)
  store i32 0, i32* %3, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.params*, %struct.params** %4, align 8
  %28 = getelementptr inbounds %struct.params, %struct.params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %24, %21
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @buddy_reset(%struct.params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

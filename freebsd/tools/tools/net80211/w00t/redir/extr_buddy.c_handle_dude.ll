; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_handle_dude.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_handle_dude.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"recv()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_dude(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %2, %22
  %8 = load i32, i32* %4, align 4
  %9 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %10 = call i32 @recv(i32 %8, i8* %9, i32 4096, i32 0)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @handle_data(i32 %16, i8* %17, i32 %18)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  ret void

22:                                               ; preds = %15
  br label %7
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @handle_data(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

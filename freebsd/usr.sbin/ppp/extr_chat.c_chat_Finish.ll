; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chat_Finish(%struct.chat* %0) #0 {
  %2 = alloca %struct.chat*, align 8
  store %struct.chat* %0, %struct.chat** %2, align 8
  %3 = load %struct.chat*, %struct.chat** %2, align 8
  %4 = getelementptr inbounds %struct.chat, %struct.chat* %3, i32 0, i32 2
  %5 = call i32 @timer_Stop(i32* %4)
  %6 = load %struct.chat*, %struct.chat** %2, align 8
  %7 = getelementptr inbounds %struct.chat, %struct.chat* %6, i32 0, i32 1
  %8 = call i32 @timer_Stop(i32* %7)
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.chat*, %struct.chat** %2, align 8
  %11 = getelementptr inbounds %struct.chat, %struct.chat* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load %struct.chat*, %struct.chat** %2, align 8
  %17 = getelementptr inbounds %struct.chat, %struct.chat* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = load %struct.chat*, %struct.chat** %2, align 8
  %21 = getelementptr inbounds %struct.chat, %struct.chat* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @free(i32 %28)
  br label %9

30:                                               ; preds = %9
  %31 = load %struct.chat*, %struct.chat** %2, align 8
  %32 = getelementptr inbounds %struct.chat, %struct.chat* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

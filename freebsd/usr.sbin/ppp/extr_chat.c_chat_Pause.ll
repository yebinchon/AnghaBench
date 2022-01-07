; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Pause.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, %struct.chat*, i32, i32 }

@chat_PauseTimer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"chat pause\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chat*, i64)* @chat_Pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chat_Pause(%struct.chat* %0, i64 %1) #0 {
  %3 = alloca %struct.chat*, align 8
  %4 = alloca i64, align 8
  store %struct.chat* %0, %struct.chat** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.chat*, %struct.chat** %3, align 8
  %6 = getelementptr inbounds %struct.chat, %struct.chat* %5, i32 0, i32 0
  %7 = call i32 @timer_Stop(%struct.TYPE_3__* %6)
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.chat*, %struct.chat** %3, align 8
  %10 = getelementptr inbounds %struct.chat, %struct.chat* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %8
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @chat_PauseTimer, align 4
  %17 = load %struct.chat*, %struct.chat** %3, align 8
  %18 = getelementptr inbounds %struct.chat, %struct.chat* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load %struct.chat*, %struct.chat** %3, align 8
  %21 = getelementptr inbounds %struct.chat, %struct.chat* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.chat*, %struct.chat** %3, align 8
  %24 = load %struct.chat*, %struct.chat** %3, align 8
  %25 = getelementptr inbounds %struct.chat, %struct.chat* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.chat* %23, %struct.chat** %26, align 8
  %27 = load %struct.chat*, %struct.chat** %3, align 8
  %28 = getelementptr inbounds %struct.chat, %struct.chat* %27, i32 0, i32 0
  %29 = call i32 @timer_Start(%struct.TYPE_3__* %28)
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_3__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_SetTimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_SetTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8*, %struct.chat*, i32 }

@SECTICKS = common dso_local global i32 0, align 4
@chat_TimeoutTimer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"chat timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.chat*)* @chat_SetTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chat_SetTimeout(%struct.chat* %0) #0 {
  %2 = alloca %struct.chat*, align 8
  store %struct.chat* %0, %struct.chat** %2, align 8
  %3 = load %struct.chat*, %struct.chat** %2, align 8
  %4 = getelementptr inbounds %struct.chat, %struct.chat* %3, i32 0, i32 1
  %5 = call i32 @timer_Stop(%struct.TYPE_3__* %4)
  %6 = load %struct.chat*, %struct.chat** %2, align 8
  %7 = getelementptr inbounds %struct.chat, %struct.chat* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @SECTICKS, align 4
  %12 = load %struct.chat*, %struct.chat** %2, align 8
  %13 = getelementptr inbounds %struct.chat, %struct.chat* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = load %struct.chat*, %struct.chat** %2, align 8
  %17 = getelementptr inbounds %struct.chat, %struct.chat* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @chat_TimeoutTimer, align 4
  %20 = load %struct.chat*, %struct.chat** %2, align 8
  %21 = getelementptr inbounds %struct.chat, %struct.chat* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.chat*, %struct.chat** %2, align 8
  %24 = getelementptr inbounds %struct.chat, %struct.chat* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %25, align 8
  %26 = load %struct.chat*, %struct.chat** %2, align 8
  %27 = load %struct.chat*, %struct.chat** %2, align 8
  %28 = getelementptr inbounds %struct.chat, %struct.chat* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store %struct.chat* %26, %struct.chat** %29, align 8
  %30 = load %struct.chat*, %struct.chat** %2, align 8
  %31 = getelementptr inbounds %struct.chat, %struct.chat* %30, i32 0, i32 1
  %32 = call i32 @timer_Start(%struct.TYPE_3__* %31)
  br label %33

33:                                               ; preds = %10, %1
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

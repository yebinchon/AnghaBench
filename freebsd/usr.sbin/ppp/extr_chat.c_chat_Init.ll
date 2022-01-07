; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { i8*, i32, i32, i32, i32, i32, i32, i32*, i32*, i64, %struct.physical*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.physical = type { i32 }

@CHAT_DESCRIPTOR = common dso_local global i32 0, align 4
@chat_UpdateSet = common dso_local global i32 0, align 4
@chat_IsSet = common dso_local global i32 0, align 4
@chat_Read = common dso_local global i32 0, align 4
@chat_Write = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chat_Init(%struct.chat* %0, %struct.physical* %1) #0 {
  %3 = alloca %struct.chat*, align 8
  %4 = alloca %struct.physical*, align 8
  store %struct.chat* %0, %struct.chat** %3, align 8
  store %struct.physical* %1, %struct.physical** %4, align 8
  %5 = load i32, i32* @CHAT_DESCRIPTOR, align 4
  %6 = load %struct.chat*, %struct.chat** %3, align 8
  %7 = getelementptr inbounds %struct.chat, %struct.chat* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @chat_UpdateSet, align 4
  %10 = load %struct.chat*, %struct.chat** %3, align 8
  %11 = getelementptr inbounds %struct.chat, %struct.chat* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 3
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @chat_IsSet, align 4
  %14 = load %struct.chat*, %struct.chat** %3, align 8
  %15 = getelementptr inbounds %struct.chat, %struct.chat* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @chat_Read, align 4
  %18 = load %struct.chat*, %struct.chat** %3, align 8
  %19 = getelementptr inbounds %struct.chat, %struct.chat* %18, i32 0, i32 11
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @chat_Write, align 4
  %22 = load %struct.chat*, %struct.chat** %3, align 8
  %23 = getelementptr inbounds %struct.chat, %struct.chat* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.physical*, %struct.physical** %4, align 8
  %26 = load %struct.chat*, %struct.chat** %3, align 8
  %27 = getelementptr inbounds %struct.chat, %struct.chat* %26, i32 0, i32 10
  store %struct.physical* %25, %struct.physical** %27, align 8
  %28 = load %struct.chat*, %struct.chat** %3, align 8
  %29 = getelementptr inbounds %struct.chat, %struct.chat* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8 0, i8* %30, align 1
  %31 = load %struct.chat*, %struct.chat** %3, align 8
  %32 = getelementptr inbounds %struct.chat, %struct.chat* %31, i32 0, i32 9
  store i64 0, i64* %32, align 8
  %33 = load %struct.chat*, %struct.chat** %3, align 8
  %34 = getelementptr inbounds %struct.chat, %struct.chat* %33, i32 0, i32 1
  store i32 -1, i32* %34, align 8
  %35 = load %struct.chat*, %struct.chat** %3, align 8
  %36 = getelementptr inbounds %struct.chat, %struct.chat* %35, i32 0, i32 8
  store i32* null, i32** %36, align 8
  %37 = load %struct.chat*, %struct.chat** %3, align 8
  %38 = getelementptr inbounds %struct.chat, %struct.chat* %37, i32 0, i32 7
  store i32* null, i32** %38, align 8
  %39 = load %struct.chat*, %struct.chat** %3, align 8
  %40 = getelementptr inbounds %struct.chat, %struct.chat* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.chat*, %struct.chat** %3, align 8
  %43 = getelementptr inbounds %struct.chat, %struct.chat* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.chat*, %struct.chat** %3, align 8
  %45 = getelementptr inbounds %struct.chat, %struct.chat* %44, i32 0, i32 6
  store i32 %41, i32* %45, align 4
  %46 = load %struct.chat*, %struct.chat** %3, align 8
  %47 = getelementptr inbounds %struct.chat, %struct.chat* %46, i32 0, i32 3
  %48 = call i32 @memset(i32* %47, i8 signext 0, i32 4)
  %49 = load %struct.chat*, %struct.chat** %3, align 8
  %50 = getelementptr inbounds %struct.chat, %struct.chat* %49, i32 0, i32 2
  %51 = call i32 @memset(i32* %50, i8 signext 0, i32 4)
  ret void
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

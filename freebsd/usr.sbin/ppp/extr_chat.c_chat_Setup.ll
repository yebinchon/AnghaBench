; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_chat.c_chat_Setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chat = type { i8*, i64, i32, i32, i8*, i32, i32, %struct.TYPE_2__, i64, i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CHAT_EXPECT = common dso_local global i32 0, align 4
@PARSE_NOHASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chat_Setup(%struct.chat* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.chat*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.chat* %0, %struct.chat** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @CHAT_EXPECT, align 4
  %8 = load %struct.chat*, %struct.chat** %4, align 8
  %9 = getelementptr inbounds %struct.chat, %struct.chat* %8, i32 0, i32 12
  store i32 %7, i32* %9, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.chat*, %struct.chat** %4, align 8
  %14 = getelementptr inbounds %struct.chat, %struct.chat* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8 0, i8* %15, align 1
  %16 = load %struct.chat*, %struct.chat** %4, align 8
  %17 = getelementptr inbounds %struct.chat, %struct.chat* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  br label %42

18:                                               ; preds = %3
  %19 = load %struct.chat*, %struct.chat** %4, align 8
  %20 = getelementptr inbounds %struct.chat, %struct.chat* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @strncpy(i8* %21, i8* %22, i32 7)
  %24 = load %struct.chat*, %struct.chat** %4, align 8
  %25 = getelementptr inbounds %struct.chat, %struct.chat* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 7
  store i8 0, i8* %27, align 1
  %28 = load %struct.chat*, %struct.chat** %4, align 8
  %29 = getelementptr inbounds %struct.chat, %struct.chat* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.chat*, %struct.chat** %4, align 8
  %32 = getelementptr inbounds %struct.chat, %struct.chat* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.chat*, %struct.chat** %4, align 8
  %35 = getelementptr inbounds %struct.chat, %struct.chat* %34, i32 0, i32 11
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @VECSIZE(i32 %36)
  %38 = load i32, i32* @PARSE_NOHASH, align 4
  %39 = call i64 @MakeArgs(i8* %30, i32 %33, i32 %37, i32 %38)
  %40 = load %struct.chat*, %struct.chat** %4, align 8
  %41 = getelementptr inbounds %struct.chat, %struct.chat* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %18, %12
  %43 = load %struct.chat*, %struct.chat** %4, align 8
  %44 = getelementptr inbounds %struct.chat, %struct.chat* %43, i32 0, i32 2
  store i32 -1, i32* %44, align 8
  %45 = load %struct.chat*, %struct.chat** %4, align 8
  %46 = getelementptr inbounds %struct.chat, %struct.chat* %45, i32 0, i32 10
  store i32* null, i32** %46, align 8
  %47 = load %struct.chat*, %struct.chat** %4, align 8
  %48 = getelementptr inbounds %struct.chat, %struct.chat* %47, i32 0, i32 9
  store i32* null, i32** %48, align 8
  %49 = load %struct.chat*, %struct.chat** %4, align 8
  %50 = getelementptr inbounds %struct.chat, %struct.chat* %49, i32 0, i32 3
  store i32 30, i32* %50, align 4
  %51 = load %struct.chat*, %struct.chat** %4, align 8
  %52 = getelementptr inbounds %struct.chat, %struct.chat* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.chat*, %struct.chat** %4, align 8
  %55 = getelementptr inbounds %struct.chat, %struct.chat* %54, i32 0, i32 4
  store i8* %53, i8** %55, align 8
  %56 = load %struct.chat*, %struct.chat** %4, align 8
  %57 = getelementptr inbounds %struct.chat, %struct.chat* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  %59 = load %struct.chat*, %struct.chat** %4, align 8
  %60 = getelementptr inbounds %struct.chat, %struct.chat* %59, i32 0, i32 6
  %61 = call i32 @timer_Stop(i32* %60)
  %62 = load %struct.chat*, %struct.chat** %4, align 8
  %63 = getelementptr inbounds %struct.chat, %struct.chat* %62, i32 0, i32 5
  %64 = call i32 @timer_Stop(i32* %63)
  %65 = load %struct.chat*, %struct.chat** %4, align 8
  %66 = getelementptr inbounds %struct.chat, %struct.chat* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 0
  %69 = zext i1 %68 to i32
  ret i32 %69
}

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @MakeArgs(i8*, i32, i32, i32) #1

declare dso_local i32 @VECSIZE(i32) #1

declare dso_local i32 @timer_Stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

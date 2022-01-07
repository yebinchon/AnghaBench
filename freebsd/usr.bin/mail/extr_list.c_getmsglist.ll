; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_getmsglist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_list.c_getmsglist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@msgCount = common dso_local global i64 0, align 8
@message = common dso_local global %struct.message* null, align 8
@MMARK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getmsglist(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.message*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @msgCount, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %4, align 4
  br label %62

14:                                               ; preds = %3
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @markall(i8* %15, i32 %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %62

20:                                               ; preds = %14
  %21 = load i32*, i32** %6, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.message*, %struct.message** @message, align 8
  %23 = getelementptr inbounds %struct.message, %struct.message* %22, i64 0
  store %struct.message* %23, %struct.message** %9, align 8
  br label %24

24:                                               ; preds = %50, %20
  %25 = load %struct.message*, %struct.message** %9, align 8
  %26 = load %struct.message*, %struct.message** @message, align 8
  %27 = load i64, i64* @msgCount, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %26, i64 %27
  %29 = icmp ult %struct.message* %25, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.message*, %struct.message** %9, align 8
  %32 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MMARK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load %struct.message*, %struct.message** %9, align 8
  %39 = load %struct.message*, %struct.message** @message, align 8
  %40 = getelementptr inbounds %struct.message, %struct.message* %39, i64 0
  %41 = ptrtoint %struct.message* %38 to i64
  %42 = ptrtoint %struct.message* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %49

49:                                               ; preds = %37, %30
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.message*, %struct.message** %9, align 8
  %52 = getelementptr inbounds %struct.message, %struct.message* %51, i32 1
  store %struct.message* %52, %struct.message** %9, align 8
  br label %24

53:                                               ; preds = %24
  %54 = load i32*, i32** %8, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %19, %12
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @markall(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

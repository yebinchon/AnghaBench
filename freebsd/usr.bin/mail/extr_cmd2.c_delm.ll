; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_delm.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd2.c_delm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }

@message = common dso_local global %struct.message* null, align 8
@MDELETED = common dso_local global i32 0, align 4
@MTOUCH = common dso_local global i32 0, align 4
@MPRESERVE = common dso_local global i32 0, align 4
@MSAVED = common dso_local global i32 0, align 4
@MBOX = common dso_local global i32 0, align 4
@dot = common dso_local global %struct.message* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delm(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %5, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load i32*, i32** %5, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %8
  %13 = load %struct.message*, %struct.message** @message, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.message, %struct.message* %13, i64 %17
  store %struct.message* %18, %struct.message** %4, align 8
  %19 = load %struct.message*, %struct.message** %4, align 8
  %20 = call i32 @touch(%struct.message* %19)
  %21 = load i32, i32* @MDELETED, align 4
  %22 = load i32, i32* @MTOUCH, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.message*, %struct.message** %4, align 8
  %25 = getelementptr inbounds %struct.message, %struct.message* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @MPRESERVE, align 4
  %29 = load i32, i32* @MSAVED, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MBOX, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.message*, %struct.message** %4, align 8
  %35 = getelementptr inbounds %struct.message, %struct.message* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %12
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %5, align 8
  br label %8

43:                                               ; preds = %8
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load %struct.message*, %struct.message** @message, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.message, %struct.message* %47, i64 %50
  store %struct.message* %51, %struct.message** @dot, align 8
  %52 = load i32, i32* @MDELETED, align 4
  %53 = call i32 @first(i32 0, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.message*, %struct.message** @message, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.message, %struct.message* %57, i64 %60
  store %struct.message* %61, %struct.message** @dot, align 8
  store i32 0, i32* %2, align 4
  br label %66

62:                                               ; preds = %46
  %63 = load %struct.message*, %struct.message** @message, align 8
  %64 = getelementptr inbounds %struct.message, %struct.message* %63, i64 0
  store %struct.message* %64, %struct.message** @dot, align 8
  store i32 -1, i32* %2, align 4
  br label %66

65:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %62, %56
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @touch(%struct.message*) #1

declare dso_local i32 @first(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

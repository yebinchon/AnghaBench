; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_stouch.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_stouch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@message = common dso_local global %struct.TYPE_3__* null, align 8
@dot = common dso_local global %struct.TYPE_3__* null, align 8
@MTOUCH = common dso_local global i32 0, align 4
@MPRESERVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stouch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to i32*
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  store i32* %7, i32** %4, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** @message, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %17
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** @dot, align 8
  %19 = load i32, i32* @MTOUCH, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dot, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @MPRESERVE, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @dot, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %12
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %4, align 8
  br label %8

33:                                               ; preds = %8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

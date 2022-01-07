; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/snake/extr_snake_saver.c_update_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/snake/extr_snake_saver.c_update_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@FANCY_SNAKE = common dso_local global i32 0, align 4
@message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ostype = common dso_local global i8* null, align 8
@osrelease = common dso_local global i8* null, align 8
@messagelen = common dso_local global i32 0, align 4
@MSGBUF_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s %s (%d.%02d %d.%02d, %d.%02d)\00", align 1
@averunnable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_msg() #0 {
  %1 = load i32, i32* @FANCY_SNAKE, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @message, align 4
  %5 = load i8*, i8** @ostype, align 8
  %6 = load i8*, i8** @osrelease, align 8
  %7 = call i32 @sprintf(i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %5, i8* %6)
  store i32 %7, i32* @messagelen, align 4
  br label %38

8:                                                ; preds = %0
  %9 = load i32, i32* @message, align 4
  %10 = load i32, i32* @MSGBUF_LEN, align 4
  %11 = load i8*, i8** @ostype, align 8
  %12 = load i8*, i8** @osrelease, align 8
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @LOAD_HIGH(i32 %15)
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @LOAD_LOW(i32 %19)
  %21 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LOAD_HIGH(i32 %23)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @LOAD_LOW(i32 %27)
  %29 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LOAD_HIGH(i32 %31)
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @averunnable, i32 0, i32 0), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LOAD_LOW(i32 %35)
  %37 = call i32 @snprintf(i32 %9, i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %11, i8* %12, i32 %16, i32 %20, i32 %24, i32 %28, i32 %32, i32 %36)
  store i32 %37, i32* @messagelen, align 4
  br label %38

38:                                               ; preds = %8, %3
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @LOAD_HIGH(i32) #1

declare dso_local i32 @LOAD_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

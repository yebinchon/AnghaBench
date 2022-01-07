; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0NgMkSockNode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0NgMkSockNode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LogID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%d = NgMkSockNode(\22%s\22, &cs, &ds)\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ID0NgMkSockNode(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 (...) @ID0set0()
  %9 = load i8*, i8** %4, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = call i32 @NgMkSockNode(i8* %9, i32* %10, i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @LogID0, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i8* [ %18, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %19 ]
  %22 = call i32 @log_Printf(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14, i8* %21)
  %23 = call i32 (...) @ID0setuser()
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @ID0set0(...) #1

declare dso_local i32 @NgMkSockNode(i8*, i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i8*) #1

declare dso_local i32 @ID0setuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

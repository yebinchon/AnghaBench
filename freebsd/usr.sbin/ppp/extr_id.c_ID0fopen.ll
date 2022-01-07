; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0fopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_id.c_ID0fopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LogID0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%p = fopen(\22%s\22, \22%s\22)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ID0fopen(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i32 (...) @ID0set0()
  %7 = load i8*, i8** %3, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32* @fopen(i8* %7, i8* %8)
  store i32* %9, i32** %5, align 8
  %10 = load i32, i32* @LogID0, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @log_Printf(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %11, i8* %12, i8* %13)
  %15 = call i32 (...) @ID0setuser()
  %16 = load i32*, i32** %5, align 8
  ret i32* %16
}

declare dso_local i32 @ID0set0(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @ID0setuser(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

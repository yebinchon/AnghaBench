; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_grep.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@errstr = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = load i8**, i8*** @errstr, align 8
  %3 = getelementptr inbounds i8*, i8** %2, i64 3
  %4 = load i8*, i8** %3, align 8
  %5 = call i8* (...) @getprogname()
  %6 = call i32 @fprintf(i32 %1, i8* %4, i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = load i8**, i8*** @errstr, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 4
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 @fprintf(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* @stderr, align 4
  %13 = load i8**, i8*** @errstr, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 5
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @fprintf(i32 %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @stderr, align 4
  %18 = load i8**, i8*** @errstr, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 6
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @exit(i32 2) #3
  unreachable
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i8* @getprogname(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

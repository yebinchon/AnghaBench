; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_tr.c_charcoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tr/extr_tr.c_charcoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@charcoll.sa = internal global [2 x i8] zeroinitializer, align 1
@charcoll.sb = internal global [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @charcoll(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to i32*
  %7 = load i32, i32* %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @charcoll.sa, i64 0, i64 0), align 1
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @charcoll.sb, i64 0, i64 0), align 1
  %13 = call i32 @strcoll(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @charcoll.sa, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @charcoll.sb, i64 0, i64 0))
  ret i32 %13
}

declare dso_local i32 @strcoll(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

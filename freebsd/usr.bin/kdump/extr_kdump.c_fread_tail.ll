; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_fread_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/kdump/extr_kdump.c_fread_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdin = common dso_local global i32 0, align 4
@tail = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fread_tail(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @stdin, align 4
  %13 = call i32 @fread(i8* %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load i64, i64* @tail, align 8
  %17 = icmp ne i64 %16, 0
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi i1 [ false, %8 ], [ %17, %15 ]
  br i1 %19, label %20, label %24

20:                                               ; preds = %18
  %21 = call i32 @sleep(i32 1)
  %22 = load i32, i32* @stdin, align 4
  %23 = call i32 @clearerr(i32 %22)
  br label %8

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  ret i32 %25
}

declare dso_local i32 @fread(i8*, i32, i32, i32) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @clearerr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

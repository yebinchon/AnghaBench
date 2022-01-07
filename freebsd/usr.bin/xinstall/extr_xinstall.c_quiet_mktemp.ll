; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_quiet_mktemp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_quiet_mktemp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"unlink %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @quiet_mktemp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @quiet_mktemp(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @mkstemp(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %21

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @close(i32 %10)
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @unlink(i8* %12)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = load i32, i32* @EX_OSERR, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @err(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %15, %9
  %20 = load i8*, i8** %3, align 8
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %19, %8
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i32 @mkstemp(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

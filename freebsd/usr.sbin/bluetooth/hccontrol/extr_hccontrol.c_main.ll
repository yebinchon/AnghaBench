; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hccontrol/extr_hccontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"n:Nvh\00", align 1
@optarg = common dso_local global i8* null, align 8
@numeric_bdaddr = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %7, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %20 [
    i32 110, label %15
    i32 78, label %17
    i32 118, label %18
    i32 104, label %19
  ]

15:                                               ; preds = %13
  %16 = load i8*, i8** @optarg, align 8
  store i8* %16, i8** %6, align 8
  br label %22

17:                                               ; preds = %13
  store i32 1, i32* @numeric_bdaddr, align 4
  br label %22

18:                                               ; preds = %13
  store i32 1, i32* @verbose, align 4
  br label %22

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %13, %19
  %21 = call i32 (...) @usage()
  br label %22

22:                                               ; preds = %20, %18, %17, %15
  br label %8

23:                                               ; preds = %8
  %24 = load i64, i64* @optind, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = sub nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* @optind, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29
  store i8** %31, i8*** %5, align 8
  %32 = load i8**, i8*** %5, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = call i32 (...) @usage()
  br label %37

37:                                               ; preds = %35, %23
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i8**, i8*** %5, align 8
  %41 = call i32 @do_hci_command(i8* %38, i32 %39, i8** %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @do_hci_command(i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

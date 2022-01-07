; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2control.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2control.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"a:nh\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@numeric_bdaddr = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i32 @memset(i32* %7, i32 0, i32 4)
  br label %10

10:                                               ; preds = %40, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %41

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %38 [
    i32 97, label %17
    i32 110, label %36
    i32 104, label %37
  ]

17:                                               ; preds = %15
  %18 = load i32, i32* @optarg, align 4
  %19 = call i32 @bt_aton(i32 %18, i32* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %17
  store %struct.hostent* null, %struct.hostent** %8, align 8
  %22 = load i32, i32* @optarg, align 4
  %23 = call %struct.hostent* @bt_gethostbyname(i32 %22)
  store %struct.hostent* %23, %struct.hostent** %8, align 8
  %24 = icmp eq %struct.hostent* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* @optarg, align 4
  %27 = load i32, i32* @h_errno, align 4
  %28 = call i32 @hstrerror(i32 %27)
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.hostent*, %struct.hostent** %8, align 8
  %32 = getelementptr inbounds %struct.hostent, %struct.hostent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i32* %7, i32 %33, i32 4)
  br label %35

35:                                               ; preds = %30, %17
  br label %40

36:                                               ; preds = %15
  store i32 1, i32* @numeric_bdaddr, align 4
  br label %40

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %15, %37
  %39 = call i32 (...) @usage()
  br label %40

40:                                               ; preds = %38, %36, %35
  br label %10

41:                                               ; preds = %10
  %42 = load i64, i64* @optind, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load i64, i64* @optind, align 8
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 %47
  store i8** %49, i8*** %5, align 8
  %50 = load i8**, i8*** %5, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = call i32 (...) @usage()
  br label %55

55:                                               ; preds = %53, %41
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @do_l2cap_command(i32* %7, i32 %56, i8** %57)
  ret i32 %58
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @bt_aton(i32, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i32) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @do_l2cap_command(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

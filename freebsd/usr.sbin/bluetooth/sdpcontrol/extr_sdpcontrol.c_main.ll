; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_sdpcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_sdpcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@SDP_LOCAL_PATH = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"a:c:lh\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostent*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i8*, i8** @SDP_LOCAL_PATH, align 8
  store i8* %11, i8** %6, align 8
  %12 = call i32 @memset(i32* %9, i32 0, i32 4)
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %45, %2
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = call i32 @getopt(i32 %14, i8** %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %46

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %43 [
    i32 97, label %20
    i32 99, label %39
    i32 108, label %41
    i32 104, label %42
  ]

20:                                               ; preds = %18
  %21 = load i8*, i8** @optarg, align 8
  %22 = call i32 @bt_aton(i8* %21, i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %20
  store %struct.hostent* null, %struct.hostent** %10, align 8
  %25 = load i8*, i8** @optarg, align 8
  %26 = call %struct.hostent* @bt_gethostbyname(i8* %25)
  store %struct.hostent* %26, %struct.hostent** %10, align 8
  %27 = icmp eq %struct.hostent* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i8*, i8** @optarg, align 8
  %30 = load i32, i32* @h_errno, align 4
  %31 = call i32 @hstrerror(i32 %30)
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.hostent*, %struct.hostent** %10, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @memcpy(i32* %9, i32 %36, i32 4)
  br label %38

38:                                               ; preds = %33, %20
  br label %45

39:                                               ; preds = %18
  %40 = load i8*, i8** @optarg, align 8
  store i8* %40, i8** %6, align 8
  br label %45

41:                                               ; preds = %18
  store i32 1, i32* %8, align 4
  br label %45

42:                                               ; preds = %18
  br label %43

43:                                               ; preds = %18, %42
  %44 = call i32 (...) @usage()
  br label %45

45:                                               ; preds = %43, %41, %39, %38
  br label %13

46:                                               ; preds = %13
  %47 = load i64, i64* @optind, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  %52 = load i64, i64* @optind, align 8
  %53 = load i8**, i8*** %5, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 %52
  store i8** %54, i8*** %5, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = call i32 (...) @usage()
  br label %60

60:                                               ; preds = %58, %46
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i8**, i8*** %5, align 8
  %65 = call i32 @do_sdp_command(i32* %9, i8* %61, i32 %62, i32 %63, i8** %64)
  ret i32 %65
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @do_sdp_command(i32*, i8*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

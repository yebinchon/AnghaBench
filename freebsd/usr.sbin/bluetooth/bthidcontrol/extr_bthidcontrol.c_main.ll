; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_bthidcontrol.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/bthidcontrol/extr_bthidcontrol.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i32 }

@NG_HCI_BDADDR_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"a:c:H:hv\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@config_file = common dso_local global i8* null, align 8
@hids_file = common dso_local global i8* null, align 8
@verbose = common dso_local global i32 0, align 4
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
  %9 = call i32 @hid_init(i32* null)
  %10 = load i32, i32* @NG_HCI_BDADDR_ANY, align 4
  %11 = call i32 @memcpy(i32* %6, i32 %10, i32 4)
  br label %12

12:                                               ; preds = %48, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @getopt(i32 %13, i8** %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %49

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %46 [
    i32 97, label %19
    i32 99, label %38
    i32 72, label %40
    i32 118, label %42
    i32 104, label %45
  ]

19:                                               ; preds = %17
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @bt_aton(i8* %20, i32* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %19
  store %struct.hostent* null, %struct.hostent** %8, align 8
  %24 = load i8*, i8** @optarg, align 8
  %25 = call %struct.hostent* @bt_gethostbyname(i8* %24)
  store %struct.hostent* %25, %struct.hostent** %8, align 8
  %26 = icmp eq %struct.hostent* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i8*, i8** @optarg, align 8
  %29 = load i32, i32* @h_errno, align 4
  %30 = call i32 @hstrerror(i32 %29)
  %31 = call i32 @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %23
  %33 = load %struct.hostent*, %struct.hostent** %8, align 8
  %34 = getelementptr inbounds %struct.hostent, %struct.hostent* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @memcpy(i32* %6, i32 %35, i32 4)
  br label %37

37:                                               ; preds = %32, %19
  br label %48

38:                                               ; preds = %17
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** @config_file, align 8
  br label %48

40:                                               ; preds = %17
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** @hids_file, align 8
  br label %48

42:                                               ; preds = %17
  %43 = load i32, i32* @verbose, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @verbose, align 4
  br label %48

45:                                               ; preds = %17
  br label %46

46:                                               ; preds = %17, %45
  %47 = call i32 (...) @usage()
  br label %48

48:                                               ; preds = %46, %42, %40, %38, %37
  br label %12

49:                                               ; preds = %12
  %50 = load i64, i64* @optind, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = sub nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %4, align 4
  %55 = load i64, i64* @optind, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 %55
  store i8** %57, i8*** %5, align 8
  %58 = load i8**, i8*** %5, align 8
  %59 = load i8*, i8** %58, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i32, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = call i32 @do_bthid_command(i32* %6, i32 %64, i8** %65)
  ret i32 %66
}

declare dso_local i32 @hid_init(i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @bt_aton(i8*, i32*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*, i32) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @do_bthid_command(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

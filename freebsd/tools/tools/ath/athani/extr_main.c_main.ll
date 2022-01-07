; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athani/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athani/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_diag = type { i32 }
%struct.ath_driver_req = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"ATH\00", align 1
@ATH_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"i:l\00", align 1
@optarg = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ath_diag, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ath_driver_req, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @ath_driver_req_init(%struct.ath_driver_req* %8)
  %12 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** @ATH_DEFAULT, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %15, %2
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %21, i32* %10, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %30 [
    i32 105, label %25
    i32 108, label %27
  ]

25:                                               ; preds = %23
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %7, align 8
  br label %32

27:                                               ; preds = %23
  %28 = call i32 (...) @list_labels()
  %29 = call i32 @exit(i32 0) #3
  unreachable

30:                                               ; preds = %23
  %31 = call i32 (...) @usage()
  br label %32

32:                                               ; preds = %30, %25
  br label %18

33:                                               ; preds = %18
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @ath_driver_req_open(%struct.ath_driver_req* %8, i8* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @exit(i32 127) #3
  unreachable

39:                                               ; preds = %33
  %40 = load i64, i64* @optind, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %42, %40
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %4, align 4
  %45 = load i64, i64* @optind, align 8
  %46 = load i8**, i8*** %5, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45
  store i8** %47, i8*** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @ani_read_state(%struct.ath_driver_req* %8, i8* %51)
  %53 = call i32 @exit(i32 0) #3
  unreachable

54:                                               ; preds = %39
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @usage()
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @ani_write_state(%struct.ath_driver_req* %8, i8* %60, i8* %63, i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = call i32 @exit(i32 1) #3
  unreachable

71:                                               ; preds = %59
  %72 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @ath_driver_req_init(%struct.ath_driver_req*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @list_labels(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i64 @ath_driver_req_open(%struct.ath_driver_req*, i8*) #1

declare dso_local i32 @ani_read_state(%struct.ath_driver_req*, i8*) #1

declare dso_local i64 @ani_write_state(%struct.ath_driver_req*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

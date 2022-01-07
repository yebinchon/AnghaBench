; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_nonce.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_check_nonce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"nonce\00", align 1
@NONCE_BAD = common dso_local global i8* null, align 8
@NONCE_MISSING = common dso_local global i8* null, align 8
@push_cert_nonce = common dso_local global i8* null, align 8
@NONCE_UNSOLICITED = common dso_local global i8* null, align 8
@NONCE_OK = common dso_local global i8* null, align 8
@stateless_rpc = common dso_local global i32 0, align 4
@service_dir = common dso_local global i32 0, align 4
@nonce_stamp_slop = common dso_local global i64 0, align 8
@nonce_stamp_slop_limit = common dso_local global i64 0, align 8
@NONCE_SLOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @check_nonce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @check_nonce(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i8* @find_header(i8* %11, i64 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %13, i8** %5, align 8
  store i8* null, i8** %9, align 8
  %14 = load i8*, i8** @NONCE_BAD, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i8*, i8** @NONCE_MISSING, align 8
  store i8* %18, i8** %10, align 8
  br label %96

19:                                               ; preds = %2
  %20 = load i8*, i8** @push_cert_nonce, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i8*, i8** @NONCE_UNSOLICITED, align 8
  store i8* %23, i8** %10, align 8
  br label %96

24:                                               ; preds = %19
  %25 = load i8*, i8** @push_cert_nonce, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %25, i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** @NONCE_OK, align 8
  store i8* %30, i8** %10, align 8
  br label %96

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* @stateless_rpc, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = load i8*, i8** @NONCE_BAD, align 8
  store i8* %37, i8** %10, align 8
  br label %96

38:                                               ; preds = %33
  %39 = load i8*, i8** %5, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp sle i32 %41, 48
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 57, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %43, %38
  %49 = load i8*, i8** @NONCE_BAD, align 8
  store i8* %49, i8** %10, align 8
  br label %96

50:                                               ; preds = %43
  %51 = load i8*, i8** %5, align 8
  %52 = call i64 @parse_timestamp(i8* %51, i8** %8, i32 10)
  store i64 %52, i64* %6, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp eq i8* %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp ne i32 %60, 45
  br i1 %61, label %62, label %64

62:                                               ; preds = %56, %50
  %63 = load i8*, i8** @NONCE_BAD, align 8
  store i8* %63, i8** %10, align 8
  br label %96

64:                                               ; preds = %56
  %65 = load i32, i32* @service_dir, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i8* @prepare_push_cert_nonce(i32 %65, i64 %66)
  store i8* %67, i8** %9, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i8*, i8** @NONCE_BAD, align 8
  store i8* %73, i8** %10, align 8
  br label %96

74:                                               ; preds = %64
  %75 = load i8*, i8** @push_cert_nonce, align 8
  %76 = call i64 @parse_timestamp(i8* %75, i8** null, i32 10)
  store i64 %76, i64* %7, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub nsw i64 %77, %78
  store i64 %79, i64* @nonce_stamp_slop, align 8
  %80 = load i64, i64* @nonce_stamp_slop_limit, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i64, i64* @nonce_stamp_slop, align 8
  %84 = call i64 @labs(i64 %83) #3
  %85 = load i64, i64* @nonce_stamp_slop_limit, align 8
  %86 = icmp sle i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load i8*, i8** @push_cert_nonce, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load i8*, i8** %5, align 8
  %91 = call i8* @xstrdup(i8* %90)
  store i8* %91, i8** @push_cert_nonce, align 8
  %92 = load i8*, i8** @NONCE_OK, align 8
  store i8* %92, i8** %10, align 8
  br label %95

93:                                               ; preds = %82, %74
  %94 = load i8*, i8** @NONCE_SLOP, align 8
  store i8* %94, i8** %10, align 8
  br label %95

95:                                               ; preds = %93, %87
  br label %96

96:                                               ; preds = %95, %72, %62, %48, %36, %29, %22, %17
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @free(i8* %97)
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @free(i8* %99)
  %101 = load i8*, i8** %10, align 8
  ret i8* %101
}

declare dso_local i8* @find_header(i8*, i64, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @parse_timestamp(i8*, i8**, i32) #1

declare dso_local i8* @prepare_push_cert_nonce(i32, i64) #1

; Function Attrs: nounwind readnone
declare dso_local i64 @labs(i64) #2

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

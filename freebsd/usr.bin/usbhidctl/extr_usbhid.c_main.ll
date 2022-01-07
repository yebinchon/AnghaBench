; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/usbhidctl/extr_usbhid.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"af:lnrt:vwxz\00", align 1
@optarg = common dso_local global i8* null, align 8
@noname = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@wflag = common dso_local global i32 0, align 4
@hexdump = common dso_local global i32 0, align 4
@zflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"/dev/uhid%s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"USB_GET_REPORT_DESC\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Report descriptor:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i32 @getopt(i32 %16, i8** %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %12, align 4
  %19 = icmp ne i32 %18, -1
  br i1 %19, label %20, label %48

20:                                               ; preds = %15
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %45 [
    i32 97, label %22
    i32 102, label %25
    i32 108, label %27
    i32 110, label %30
    i32 114, label %33
    i32 116, label %36
    i32 118, label %38
    i32 119, label %41
    i32 120, label %42
    i32 122, label %43
    i32 63, label %44
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %11, align 4
  br label %47

25:                                               ; preds = %20
  %26 = load i8*, i8** @optarg, align 8
  store i8* %26, i8** %9, align 8
  br label %47

27:                                               ; preds = %20
  %28 = load i32, i32* %14, align 4
  %29 = xor i32 %28, 1
  store i32 %29, i32* %14, align 4
  br label %47

30:                                               ; preds = %20
  %31 = load i32, i32* @noname, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @noname, align 4
  br label %47

33:                                               ; preds = %20
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %47

36:                                               ; preds = %20
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %7, align 8
  br label %47

38:                                               ; preds = %20
  %39 = load i32, i32* @verbose, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @verbose, align 4
  br label %47

41:                                               ; preds = %20
  store i32 1, i32* @wflag, align 4
  br label %47

42:                                               ; preds = %20
  store i32 1, i32* @hexdump, align 4
  br label %47

43:                                               ; preds = %20
  store i32 1, i32* @zflag, align 4
  br label %47

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %20, %44
  %46 = call i32 (...) @usage()
  br label %47

47:                                               ; preds = %45, %43, %42, %41, %38, %36, %33, %30, %27, %25, %22
  br label %15

48:                                               ; preds = %15
  %49 = load i64, i64* @optind, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  %54 = load i64, i64* @optind, align 8
  %55 = load i8**, i8*** %5, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i64 %54
  store i8** %56, i8*** %5, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = call i32 (...) @usage()
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %4, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67, %64, %61
  %73 = load i8*, i8** %9, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 47
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = load i8*, i8** %9, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isdigit(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @snprintf(i8* %85, i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %86)
  br label %92

88:                                               ; preds = %78
  %89 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @snprintf(i8* %89, i32 100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  store i8* %93, i8** %9, align 8
  br label %94

94:                                               ; preds = %92, %72
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @hid_init(i8* %95)
  %97 = load i8*, i8** %9, align 8
  %98 = load i32, i32* @O_RDWR, align 4
  %99 = call i32 @open(i8* %97, i32 %98)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i8*, i8** %9, align 8
  %104 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i32, i32* %10, align 4
  %107 = call i64 @hid_get_report_desc(i32 %106)
  store i64 %107, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %105
  %113 = load i32, i32* %13, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @dumpitems(i64 %117)
  br label %119

119:                                              ; preds = %115, %112
  %120 = load i32, i32* %4, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %122, %119
  %126 = load i64, i64* %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i8**, i8*** %5, align 8
  %130 = call i32 @parceargs(i64 %126, i32 %127, i32 %128, i8** %129)
  %131 = load i32, i32* @wflag, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* %10, align 4
  %135 = load i64, i64* %6, align 8
  %136 = call i32 @writedata(i32 %134, i64 %135)
  br label %142

137:                                              ; preds = %125
  %138 = load i32, i32* %10, align 4
  %139 = load i64, i64* %6, align 8
  %140 = load i32, i32* %14, align 4
  %141 = call i32 @dumpdata(i32 %138, i64 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %133
  br label %143

143:                                              ; preds = %142, %122
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @hid_dispose_report_desc(i64 %144)
  %146 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @hid_init(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i64 @hid_get_report_desc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @dumpitems(i64) #1

declare dso_local i32 @parceargs(i64, i32, i32, i8**) #1

declare dso_local i32 @writedata(i32, i64) #1

declare dso_local i32 @dumpdata(i32, i64, i32) #1

declare dso_local i32 @hid_dispose_report_desc(i64) #1

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

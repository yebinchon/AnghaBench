; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/switch_tls/extr_switch_tls.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TCP_FUNCTION_NAME_LEN_MAX = common dso_local global i32 0, align 4
@SW_TLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ailS:s\00", align 1
@IFNET_TLS = common dso_local global i32 0, align 4
@tcpswitch_list_commands = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* @TCP_FUNCTION_NAME_LEN_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 0, i8* %18, align 16
  %19 = load i32, i32* @SW_TLS, align 4
  store i32 %19, i32* %13, align 4
  br label %20

20:                                               ; preds = %39, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt(i32 %21, i8** %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load i32, i32* %12, align 4
  switch i32 %26, label %37 [
    i32 97, label %27
    i32 105, label %28
    i32 108, label %30
    i32 83, label %31
    i32 115, label %35
  ]

27:                                               ; preds = %25
  store i32 1, i32* %10, align 4
  br label %39

28:                                               ; preds = %25
  %29 = load i32, i32* @IFNET_TLS, align 4
  store i32 %29, i32* %13, align 4
  br label %39

30:                                               ; preds = %25
  store i32 1, i32* @tcpswitch_list_commands, align 4
  br label %39

31:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  %32 = load i32, i32* @optarg, align 4
  %33 = trunc i64 %15 to i32
  %34 = call i32 @strlcpy(i8* %17, i32 %32, i32 %33)
  br label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @SW_TLS, align 4
  store i32 %36, i32* %13, align 4
  br label %39

37:                                               ; preds = %25
  %38 = call i32 (...) @usage()
  br label %39

39:                                               ; preds = %37, %35, %31, %30, %28, %27
  br label %20

40:                                               ; preds = %20
  %41 = load i64, i64* @optind, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %43, %41
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i64, i64* @optind, align 8
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 %46
  store i8** %48, i8*** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %51, %40
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %59, %56
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @usage()
  br label %67

67:                                               ; preds = %65, %62
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @tcpswitchall(i8* %17, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i32 @exit(i32 1) #4
  unreachable

73:                                               ; preds = %67
  %74 = call i32 @exit(i32 0) #4
  unreachable

75:                                               ; preds = %59
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 4
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @tcpswitch_list_commands, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81, %78
  %85 = call i32 (...) @usage()
  br label %86

86:                                               ; preds = %84, %81
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 2
  br i1 %88, label %89, label %136

89:                                               ; preds = %86
  %90 = load i8**, i8*** %5, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @findport(i8* %92)
  store i8* %93, i8** %8, align 8
  %94 = load i8**, i8*** %5, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @findport(i8* %96)
  store i8* %97, i8** %9, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %115, label %100

100:                                              ; preds = %89
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %115, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %9, align 8
  %108 = icmp eq i8* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %106
  %110 = load i8*, i8** %9, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109, %106, %100, %89
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %115, %109
  %118 = load i8*, i8** %8, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %8, align 8
  store i8 0, i8* %118, align 1
  %120 = load i8*, i8** %9, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %9, align 8
  store i8 0, i8* %120, align 1
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i64 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load i8**, i8*** %5, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 1
  %128 = load i8*, i8** %127, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 @tcpswitchbyname(i8* %124, i8* %125, i8* %128, i8* %129, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %135, label %133

133:                                              ; preds = %117
  %134 = call i32 @exit(i32 1) #4
  unreachable

135:                                              ; preds = %117
  br label %155

136:                                              ; preds = %86
  %137 = load i8**, i8*** %5, align 8
  %138 = getelementptr inbounds i8*, i8** %137, i64 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 1
  %142 = load i8*, i8** %141, align 8
  %143 = load i8**, i8*** %5, align 8
  %144 = getelementptr inbounds i8*, i8** %143, i64 2
  %145 = load i8*, i8** %144, align 8
  %146 = load i8**, i8*** %5, align 8
  %147 = getelementptr inbounds i8*, i8** %146, i64 3
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @tcpswitchbyname(i8* %139, i8* %142, i8* %145, i8* %148, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %136
  %153 = call i32 @exit(i32 1) #4
  unreachable

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154, %135
  %156 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @tcpswitchall(i8*, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @findport(i8*) #2

declare dso_local i32 @tcpswitchbyname(i8*, i8*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

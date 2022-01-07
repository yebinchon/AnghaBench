; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_gdb_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"qAttached\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"qC\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"QC\00", align 1
@cur_vcpu = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"qfThreadInfo\00", align 1
@vcpus_active = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"qsThreadInfo\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"qSupported\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"qThreadExtraInfo\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"vCPU %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @gdb_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdb_query(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i8], align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @command_equals(i8* %10, i64 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = call i32 (...) @start_packet()
  %16 = call i32 @append_char(i8 signext 49)
  %17 = call i32 (...) @finish_packet()
  br label %140

18:                                               ; preds = %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @command_equals(i8* %19, i64 %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = call i32 (...) @start_packet()
  %25 = call i32 @append_string(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* @cur_vcpu, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @append_integer(i32 %27)
  %29 = call i32 (...) @finish_packet()
  br label %139

30:                                               ; preds = %18
  %31 = load i8*, i8** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i64 @command_equals(i8* %31, i64 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %30
  %36 = call i64 @CPU_EMPTY(i32* @vcpus_active)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @send_error(i32 %39)
  br label %140

41:                                               ; preds = %35
  %42 = load i32, i32* @vcpus_active, align 4
  store i32 %42, i32* %5, align 4
  %43 = call i32 (...) @start_packet()
  %44 = call i32 @append_char(i8 signext 109)
  store i32 1, i32* %6, align 4
  br label %45

45:                                               ; preds = %59, %41
  %46 = call i64 @CPU_EMPTY(i32* %5)
  %47 = icmp ne i64 %46, 0
  %48 = xor i1 %47, true
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = call i32 @CPU_FFS(i32* %5)
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @CPU_CLR(i32 %52, i32* %5)
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %59

57:                                               ; preds = %49
  %58 = call i32 @append_char(i8 signext 44)
  br label %59

59:                                               ; preds = %57, %56
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @append_integer(i32 %61)
  br label %45

63:                                               ; preds = %45
  %64 = call i32 (...) @finish_packet()
  br label %138

65:                                               ; preds = %30
  %66 = load i8*, i8** %3, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @command_equals(i8* %66, i64 %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = call i32 (...) @start_packet()
  %72 = call i32 @append_char(i8 signext 108)
  %73 = call i32 (...) @finish_packet()
  br label %137

74:                                               ; preds = %65
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i64 @command_equals(i8* %75, i64 %76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %3, align 8
  %83 = call i64 @strlen(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %84 = load i64, i64* %4, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %4, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @check_features(i8* %86, i64 %87)
  br label %136

89:                                               ; preds = %74
  %90 = load i8*, i8** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @command_equals(i8* %90, i64 %91, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %89
  %95 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %3, align 8
  %98 = call i64 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %99 = load i64, i64* %4, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %4, align 8
  %101 = load i8*, i8** %3, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 44
  br i1 %104, label %105, label %108

105:                                              ; preds = %94
  %106 = load i32, i32* @EINVAL, align 4
  %107 = call i32 @send_error(i32 %106)
  br label %140

108:                                              ; preds = %94
  %109 = load i8*, i8** %3, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  %111 = load i64, i64* %4, align 8
  %112 = sub i64 %111, 1
  %113 = call i32 @parse_threadid(i8* %110, i64 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp sle i32 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %108
  %117 = load i32, i32* %9, align 4
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @CPU_ISSET(i32 %118, i32* @vcpus_active)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116, %108
  %122 = load i32, i32* @EINVAL, align 4
  %123 = call i32 @send_error(i32 %122)
  br label %140

124:                                              ; preds = %116
  %125 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = call i32 @snprintf(i8* %125, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = call i32 (...) @start_packet()
  %130 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %131 = call i32 @append_asciihex(i8* %130)
  %132 = call i32 (...) @finish_packet()
  br label %135

133:                                              ; preds = %89
  %134 = call i32 (...) @send_empty_response()
  br label %135

135:                                              ; preds = %133, %124
  br label %136

136:                                              ; preds = %135, %79
  br label %137

137:                                              ; preds = %136, %70
  br label %138

138:                                              ; preds = %137, %63
  br label %139

139:                                              ; preds = %138, %23
  br label %140

140:                                              ; preds = %38, %105, %121, %139, %14
  ret void
}

declare dso_local i64 @command_equals(i8*, i64, i8*) #1

declare dso_local i32 @start_packet(...) #1

declare dso_local i32 @append_char(i8 signext) #1

declare dso_local i32 @finish_packet(...) #1

declare dso_local i32 @append_string(i8*) #1

declare dso_local i32 @append_integer(i32) #1

declare dso_local i64 @CPU_EMPTY(i32*) #1

declare dso_local i32 @send_error(i32) #1

declare dso_local i32 @CPU_FFS(i32*) #1

declare dso_local i32 @CPU_CLR(i32, i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @check_features(i8*, i64) #1

declare dso_local i32 @parse_threadid(i8*, i64) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @append_asciihex(i8*) #1

declare dso_local i32 @send_empty_response(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_check_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_gdb.c_check_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i8* }

@cur_comm = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"<- Ctrl-C\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"<- +\0A\00", align 1
@cur_resp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@stop_pending = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"<- -\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"-> %.*s\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"New GDB command while response in progress\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<- %.*s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"-> -\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-> +\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"-> %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @check_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_command(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  br label %9

9:                                                ; preds = %148, %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_comm, i32 0, i32 0), align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  br label %149

14:                                               ; preds = %9
  %15 = call i32* @io_buffer_head(%struct.TYPE_7__* @cur_comm)
  store i32* %15, i32** %3, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %143 [
    i32 3, label %18
    i32 43, label %22
    i32 45, label %37
    i32 36, label %61
  ]

18:                                               ; preds = %14
  %19 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 1)
  %21 = call i32 (...) @gdb_suspend_vcpus()
  br label %148

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 (...) @response_pending()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @io_buffer_reset(%struct.TYPE_7__* @cur_resp)
  br label %28

28:                                               ; preds = %26, %22
  %29 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 1)
  %30 = load i32, i32* @stop_pending, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  store i32 0, i32* @stop_pending, align 4
  %33 = call i32 (...) @report_stop()
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @send_pending_data(i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %148

37:                                               ; preds = %14
  %38 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i32 (...) @response_pending()
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 1), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 0), align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 1), align 8
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 2), align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 43
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  %51 = call i32 @io_buffer_advance(%struct.TYPE_7__* @cur_resp, i32 1)
  br label %52

52:                                               ; preds = %50, %41
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @cur_resp, i32 0, i32 0), align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32* @io_buffer_head(%struct.TYPE_7__* @cur_resp)
  %56 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32* %55)
  br label %57

57:                                               ; preds = %52, %37
  %58 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 1)
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @send_pending_data(i32 %59)
  br label %148

61:                                               ; preds = %14
  %62 = call i32 (...) @response_pending()
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = call i32 @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %66 = call i32 @io_buffer_reset(%struct.TYPE_7__* @cur_resp)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32* @memchr(i32* %68, i8 signext 35, i64 %69)
  store i32* %70, i32** %4, align 8
  %71 = load i32*, i32** %4, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %149

74:                                               ; preds = %67
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %3, align 8
  %77 = ptrtoint i32* %75 to i64
  %78 = ptrtoint i32* %76 to i64
  %79 = sub i64 %77, %78
  %80 = sdiv exact i64 %79, 4
  %81 = add nsw i64 %80, 1
  %82 = add nsw i64 %81, 2
  store i64 %82, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %149

87:                                               ; preds = %74
  %88 = load i64, i64* %8, align 8
  %89 = trunc i64 %88 to i32
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %89, i32* %90)
  store i32 0, i32* %6, align 4
  %92 = load i32*, i32** %3, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %103, %87
  %95 = load i32*, i32** %5, align 8
  %96 = load i32*, i32** %4, align 8
  %97 = icmp ult i32* %95, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %5, align 8
  br label %94

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = call i32 @parse_byte(i32* %109)
  %111 = icmp ne i32 %107, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %106
  %113 = load i64, i64* %8, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 %114)
  %116 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %117 = call i32 @send_char(i8 signext 45)
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @send_pending_data(i32 %118)
  br label %148

120:                                              ; preds = %106
  %121 = call i32 @send_char(i8 signext 43)
  %122 = load i32*, i32** %3, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32*, i32** %4, align 8
  %125 = load i32*, i32** %3, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = ptrtoint i32* %124 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = trunc i64 %130 to i32
  %132 = call i32 @handle_command(i32* %123, i32 %131)
  %133 = load i64, i64* %8, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 %134)
  %136 = call i32 (...) @response_pending()
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %120
  %139 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %120
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @send_pending_data(i32 %141)
  br label %148

143:                                              ; preds = %14
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %145)
  %147 = call i32 @io_buffer_consume(%struct.TYPE_7__* @cur_comm, i32 1)
  br label %148

148:                                              ; preds = %143, %140, %112, %57, %36, %18
  br label %9

149:                                              ; preds = %86, %73, %13
  ret void
}

declare dso_local i32* @io_buffer_head(%struct.TYPE_7__*) #1

declare dso_local i32 @debug(i8*, ...) #1

declare dso_local i32 @io_buffer_consume(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @gdb_suspend_vcpus(...) #1

declare dso_local i32 @response_pending(...) #1

declare dso_local i32 @io_buffer_reset(%struct.TYPE_7__*) #1

declare dso_local i32 @report_stop(...) #1

declare dso_local i32 @send_pending_data(i32) #1

declare dso_local i32 @io_buffer_advance(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32* @memchr(i32*, i8 signext, i64) #1

declare dso_local i32 @parse_byte(i32*) #1

declare dso_local i32 @send_char(i8 signext) #1

declare dso_local i32 @handle_command(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

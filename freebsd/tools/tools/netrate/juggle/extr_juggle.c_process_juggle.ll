; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_process_juggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/juggle/extr_juggle.c_process_juggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"process_juggle: fork\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"process_juggle: child: message_send\00", align 1
@NUMCYCLES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"message_send fd2\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"message_recv fd2\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"process_juggle: parent: message_recv\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"process_juggle: clock_gettime\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"message_send fd1\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"message_recv fd1\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"process_juggle: waitpid\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"process_juggle: waitpid: pid != wpid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @process_juggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_juggle(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.timespec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = call i64 (...) @getpid()
  store i64 %15, i64* %10, align 8
  %16 = call i64 (...) @fork()
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %67

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @message_send(i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i32, i32* @errno, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i64, i64* %10, align 8
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = call i32 @kill(i64 %30, i32 %31)
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* @errno, align 4
  %34 = call i32 @err(i32 -1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %24
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @NUMCYCLES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @message_send(i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @message_recv(i32 %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %41

61:                                               ; preds = %41
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %36

65:                                               ; preds = %36
  %66 = call i32 @exit(i32 0) #3
  unreachable

67:                                               ; preds = %21
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @message_recv(i32 %68)
  %70 = icmp slt i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* @errno, align 4
  store i32 %72, i32* %12, align 4
  %73 = load i64, i64* %9, align 8
  %74 = load i32, i32* @SIGTERM, align 4
  %75 = call i32 @kill(i64 %73, i32 %74)
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* @errno, align 4
  %77 = call i32 @err(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %78

78:                                               ; preds = %71, %67
  %79 = load i32, i32* @CLOCK_REALTIME, align 4
  %80 = call i64 @clock_gettime(i32 %79, %struct.timespec* %8)
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %78
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %130, %84
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @NUMCYCLES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  store i32 0, i32* %14, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @message_send(i32 %95)
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* @errno, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i64, i64* %9, align 8
  %101 = load i32, i32* @SIGTERM, align 4
  %102 = call i32 @kill(i64 %100, i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* @errno, align 4
  %104 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %98, %94
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %90

109:                                              ; preds = %90
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = load i32, i32* %5, align 4
  %116 = call i64 @message_recv(i32 %115)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %114
  %119 = load i32, i32* @errno, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i64, i64* %9, align 8
  %121 = load i32, i32* @SIGTERM, align 4
  %122 = call i32 @kill(i64 %120, i32 %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* @errno, align 4
  %124 = call i32 @err(i32 -1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %118, %114
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %110

129:                                              ; preds = %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %13, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %13, align 4
  br label %85

133:                                              ; preds = %85
  %134 = load i32, i32* @CLOCK_REALTIME, align 4
  %135 = call i64 @clock_gettime(i32 %134, %struct.timespec* %4)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = call i32 @err(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %133
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %9, align 8
  %142 = call i64 @waitpid(i64 %141, i32* null, i32 0)
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = icmp slt i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = call i32 @err(i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %140
  %148 = load i64, i64* %11, align 8
  %149 = load i64, i64* %9, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %147
  %154 = call i32 @timespecsub(%struct.timespec* %4, %struct.timespec* %8, %struct.timespec* %4)
  %155 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  ret i32 %156
}

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @message_send(i32) #1

declare dso_local i32 @kill(i64, i32) #1

declare dso_local i64 @message_recv(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i64 @waitpid(i64, i32*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_sys_abort2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exit.c_sys_abort2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__*, %struct.proc* }
%struct.TYPE_2__ = type { i32 }
%struct.proc = type { i32, i32 }
%struct.abort2_args = type { i32, i32*, i32* }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%s(pid %d uid %d) aborted: \00", align 1
@SIGKILL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%p\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@SIGABRT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c" (Reason text inaccessible)\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_abort2(%struct.thread* %0, %struct.abort2_args* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.abort2_args*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca [16 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.abort2_args* %1, %struct.abort2_args** %4, align 8
  %11 = load %struct.thread*, %struct.thread** %3, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 1
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %5, align 8
  %14 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %15 = call %struct.sbuf* @sbuf_new(i32* null, i32* null, i32 512, i32 %14)
  store %struct.sbuf* %15, %struct.sbuf** %6, align 8
  %16 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %17 = call i32 @sbuf_clear(%struct.sbuf* %16)
  %18 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %19 = load %struct.proc*, %struct.proc** %5, align 8
  %20 = getelementptr inbounds %struct.proc, %struct.proc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.proc*, %struct.proc** %5, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.thread*, %struct.thread** %3, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %29)
  %31 = load i32, i32* @SIGKILL, align 4
  store i32 %31, i32* %10, align 4
  %32 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %33 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %2
  %37 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %38 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 16
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %2
  br label %120

42:                                               ; preds = %36
  %43 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %44 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %49 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %120

53:                                               ; preds = %47
  %54 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %55 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds [16 x i8*], [16 x i8*]* %7, i64 0, i64 0
  %58 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %59 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @copyin(i32* %56, i8** %57, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %120

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %42
  %70 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %71 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %76 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %77 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @sbuf_copyin(%struct.sbuf* %75, i32* %78, i32 128)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %120

83:                                               ; preds = %74
  br label %87

84:                                               ; preds = %69
  %85 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %86 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %83
  %88 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %89 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %118

92:                                               ; preds = %87
  %93 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %94 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %95

95:                                               ; preds = %112, %92
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.abort2_args*, %struct.abort2_args** %4, align 8
  %98 = getelementptr inbounds %struct.abort2_args, %struct.abort2_args* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %95
  %102 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [16 x i8*], [16 x i8*]* %7, i64 0, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %106, i8* %110)
  br label %112

112:                                              ; preds = %101
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %95

115:                                              ; preds = %95
  %116 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %117 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %87
  %119 = load i32, i32* @SIGABRT, align 4
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %118, %82, %67, %52, %41
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @SIGKILL, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %126 = call i32 @sbuf_trim(%struct.sbuf* %125)
  %127 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %128 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %129

129:                                              ; preds = %124, %120
  %130 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %131 = call i32 @sbuf_cat(%struct.sbuf* %130, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %132 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %133 = call i32 @sbuf_finish(%struct.sbuf* %132)
  %134 = load i32, i32* @LOG_INFO, align 4
  %135 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %136 = call i32 @sbuf_data(%struct.sbuf* %135)
  %137 = call i32 @log(i32 %134, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %136)
  %138 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %139 = call i32 @sbuf_delete(%struct.sbuf* %138)
  %140 = load %struct.thread*, %struct.thread** %3, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @exit1(%struct.thread* %140, i32 0, i32 %141)
  ret i32 0
}

declare dso_local %struct.sbuf* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @sbuf_clear(%struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i32 @copyin(i32*, i8**, i32) #1

declare dso_local i32 @sbuf_copyin(%struct.sbuf*, i32*, i32) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i32 @exit1(%struct.thread*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

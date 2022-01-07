; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_stop_q.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/lpc/extr_cmds.c_stop_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@SQS_STOPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"printing disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_q(%struct.printer* %0) #0 {
  %2 = alloca %struct.printer*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.printer* %0, %struct.printer** %2, align 8
  %6 = load i32, i32* @MAXPATHLEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %4, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %5, align 8
  %10 = load %struct.printer*, %struct.printer** %2, align 8
  %11 = trunc i64 %7 to i32
  %12 = call i32 @lock_file_name(%struct.printer* %10, i8* %9, i32 %11)
  %13 = load %struct.printer*, %struct.printer** %2, align 8
  %14 = getelementptr inbounds %struct.printer, %struct.printer* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @SQS_STOPP, align 4
  %18 = call i32 @set_qstate(i32 %17, i8* %9)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.printer*, %struct.printer** %2, align 8
  %23 = call i32 @upstat(%struct.printer* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0)
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %25)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lock_file_name(%struct.printer*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @set_qstate(i32, i8*) #2

declare dso_local i32 @upstat(%struct.printer*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

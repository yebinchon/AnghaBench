; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_OpenInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_OpenInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32 }
%struct.ttydevice = type { i32 }

@tty_OpenInfo.buf = internal global [13 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [5 x i8] c"with\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" carrier\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.physical*)* @tty_OpenInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tty_OpenInfo(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.ttydevice*, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %4 = load %struct.physical*, %struct.physical** %2, align 8
  %5 = getelementptr inbounds %struct.physical, %struct.physical* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ttydevice* @device2tty(i32 %6)
  store %struct.ttydevice* %7, %struct.ttydevice** %3, align 8
  %8 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %9 = call i64 @Online(%struct.ttydevice* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @strcpy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tty_OpenInfo.buf, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %15

13:                                               ; preds = %1
  %14 = call i32 @strcpy(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tty_OpenInfo.buf, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %11
  %16 = call i32 @strcat(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tty_OpenInfo.buf, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  ret i8* getelementptr inbounds ([13 x i8], [13 x i8]* @tty_OpenInfo.buf, i64 0, i64 0)
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i64 @Online(%struct.ttydevice*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

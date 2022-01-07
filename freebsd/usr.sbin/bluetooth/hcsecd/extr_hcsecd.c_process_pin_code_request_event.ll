; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hcsecd/extr_hcsecd.c_process_pin_code_request_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/hcsecd/extr_hcsecd.c_process_pin_code_request_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_hci = type { i32 }
%struct.TYPE_3__ = type { i8*, i32*, i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Got PIN_Code_Request event from '%s', remote bdaddr %s\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Found matching entry, remote bdaddr %s, name '%s', PIN code %s\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"No name\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"doesn't exist\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Could not PIN code for remote bdaddr %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_hci*, i32*)* @process_pin_code_request_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pin_code_request_event(i32 %0, %struct.sockaddr_hci* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_hci*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_hci* %1, %struct.sockaddr_hci** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %8, align 8
  %9 = load i32, i32* @LOG_DEBUG, align 4
  %10 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %6, align 8
  %11 = getelementptr inbounds %struct.sockaddr_hci, %struct.sockaddr_hci* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @bt_ntoa(i32* %13, i32* null)
  %15 = call i32 (i32, i8*, i32, ...) @syslog(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14)
  %16 = load i32*, i32** %7, align 8
  %17 = call %struct.TYPE_3__* @get_key(i32* %16, i32 0)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %8, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load i32, i32* @LOG_DEBUG, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = call i32 @bt_ntoa(i32* %22, i32* null)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %28
  %34 = phi i8* [ %31, %28 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), %32 ]
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 (i32, i8*, i32, ...) @syslog(i32 %20, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %23, i8* %34, i8* %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %6, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @send_pin_code_reply(i32 %42, %struct.sockaddr_hci* %43, i32* %44, i32* %47)
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %3
  %50 = load i32, i32* @LOG_DEBUG, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @bt_ntoa(i32* %51, i32* null)
  %53 = call i32 (i32, i8*, i32, ...) @syslog(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.sockaddr_hci*, %struct.sockaddr_hci** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @send_pin_code_reply(i32 %54, %struct.sockaddr_hci* %55, i32* %56, i32* null)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %33
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @syslog(i32, i8*, i32, ...) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local %struct.TYPE_3__* @get_key(i32*, i32) #1

declare dso_local i32 @send_pin_code_reply(i32, %struct.sockaddr_hci*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

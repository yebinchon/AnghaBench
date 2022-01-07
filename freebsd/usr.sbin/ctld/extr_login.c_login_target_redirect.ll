; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_target_redirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_target_redirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.pdu = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"target \22%s\22 configured to redirect to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, %struct.pdu*)* @login_target_redirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @login_target_redirect(%struct.connection* %0, %struct.pdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.connection*, align 8
  %5 = alloca %struct.pdu*, align 8
  %6 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %4, align 8
  store %struct.pdu* %1, %struct.pdu** %5, align 8
  %7 = load %struct.connection*, %struct.connection** %4, align 8
  %8 = getelementptr inbounds %struct.connection, %struct.connection* %7, i32 0, i32 1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.connection*, %struct.connection** %4, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.connection*, %struct.connection** %4, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %42

31:                                               ; preds = %22
  %32 = load %struct.connection*, %struct.connection** %4, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @log_debugx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i8* %37)
  %39 = load %struct.pdu*, %struct.pdu** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @login_redirect(%struct.pdu* %39, i8* %40)
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %31, %30, %21
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_debugx(i8*, i32, i8*) #1

declare dso_local i32 @login_redirect(%struct.pdu*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

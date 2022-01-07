; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_AuthTimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_AuthTimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { i64, %struct.TYPE_3__*, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.authinfo.0*)* }
%struct.authinfo.0 = type opaque

@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Auth: No response from server\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @AuthTimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AuthTimeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.authinfo*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.authinfo*
  store %struct.authinfo* %5, %struct.authinfo** %3, align 8
  %6 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %7 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %6, i32 0, i32 2
  %8 = call i32 @timer_Stop(i32* %7)
  %9 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %10 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %16 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %20 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.authinfo.0*)*, i32 (%struct.authinfo.0*)** %21, align 8
  %23 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %24 = bitcast %struct.authinfo* %23 to %struct.authinfo.0*
  %25 = call i32 %22(%struct.authinfo.0* %24)
  %26 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %27 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %26, i32 0, i32 2
  %28 = call i32 @timer_Start(i32* %27)
  br label %38

29:                                               ; preds = %1
  %30 = load i32, i32* @LogPHASE, align 4
  %31 = call i32 @log_Printf(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.authinfo*, %struct.authinfo** %3, align 8
  %33 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @datalink_AuthNotOk(i32 %36)
  br label %38

38:                                               ; preds = %29, %14
  ret void
}

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i32 @timer_Start(i32*) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

declare dso_local i32 @datalink_AuthNotOk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

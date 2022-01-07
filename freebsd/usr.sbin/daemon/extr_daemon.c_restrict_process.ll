; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_restrict_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/daemon/extr_daemon.c_restrict_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"unknown user: %s\00", align 1
@LOGIN_SETALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to set user environment\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @restrict_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restrict_process(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.passwd* null, %struct.passwd** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.passwd* @getpwnam(i8* %4)
  store %struct.passwd* %5, %struct.passwd** %3, align 8
  %6 = load %struct.passwd*, %struct.passwd** %3, align 8
  %7 = icmp eq %struct.passwd* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.passwd*, %struct.passwd** %3, align 8
  %13 = load %struct.passwd*, %struct.passwd** %3, align 8
  %14 = getelementptr inbounds %struct.passwd, %struct.passwd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @LOGIN_SETALL, align 4
  %17 = call i64 @setusercontext(i32* null, %struct.passwd* %12, i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  ret void
}

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i64 @setusercontext(i32*, %struct.passwd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

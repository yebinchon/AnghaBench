; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lastlogin/extr_lastlogin.c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lastlogin/extr_lastlogin.c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utmpx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"lastlogin\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"{:user/%-10s/%s} {:tty/%-8s/%s} {:from/%-22.22s/%s}\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"seconds\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c" {:login-time/%.24s/%.24s}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utmpx*)* @output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output(%struct.utmpx* %0) #0 {
  %2 = alloca %struct.utmpx*, align 8
  %3 = alloca i64, align 8
  store %struct.utmpx* %0, %struct.utmpx** %2, align 8
  %4 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %5 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = call i32 @xo_open_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %10 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %13 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.utmpx*, %struct.utmpx** %2, align 8
  %16 = getelementptr inbounds %struct.utmpx, %struct.utmpx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14, i32 %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @xo_attr(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %19)
  %21 = call i32 @ctime(i64* %3)
  %22 = call i32 (i8*, i32, ...) @xo_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = call i32 @xo_close_instance(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_instance(i8*) #1

declare dso_local i32 @xo_emit(i8*, i32, ...) #1

declare dso_local i32 @xo_attr(i8*, i8*, i64) #1

declare dso_local i32 @ctime(i64*) #1

declare dso_local i32 @xo_close_instance(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

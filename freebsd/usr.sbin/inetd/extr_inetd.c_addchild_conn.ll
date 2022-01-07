; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_addchild_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_addchild_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conninfo = type { i32, %struct.procinfo** }
%struct.procinfo = type { %struct.conninfo* }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"addchild_conn: child already on process list\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conninfo*, i32)* @addchild_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addchild_conn(%struct.conninfo* %0, i32 %1) #0 {
  %3 = alloca %struct.conninfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.procinfo*, align 8
  store %struct.conninfo* %0, %struct.conninfo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %7 = icmp eq %struct.conninfo* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %38

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.procinfo* @search_proc(i32 %10, i32 1)
  store %struct.procinfo* %11, %struct.procinfo** %5, align 8
  %12 = icmp ne %struct.procinfo* %11, null
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %15 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %14, i32 0, i32 0
  %16 = load %struct.conninfo*, %struct.conninfo** %15, align 8
  %17 = icmp ne %struct.conninfo* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @syslog(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EX_OSERR, align 4
  %22 = call i32 @exit(i32 %21) #3
  unreachable

23:                                               ; preds = %13
  %24 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %25 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %26 = getelementptr inbounds %struct.procinfo, %struct.procinfo* %25, i32 0, i32 0
  store %struct.conninfo* %24, %struct.conninfo** %26, align 8
  br label %27

27:                                               ; preds = %23, %9
  %28 = load %struct.procinfo*, %struct.procinfo** %5, align 8
  %29 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %30 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %29, i32 0, i32 1
  %31 = load %struct.procinfo**, %struct.procinfo*** %30, align 8
  %32 = load %struct.conninfo*, %struct.conninfo** %3, align 8
  %33 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds %struct.procinfo*, %struct.procinfo** %31, i64 %36
  store %struct.procinfo* %28, %struct.procinfo** %37, align 8
  br label %38

38:                                               ; preds = %27, %8
  ret void
}

declare dso_local %struct.procinfo* @search_proc(i32, i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

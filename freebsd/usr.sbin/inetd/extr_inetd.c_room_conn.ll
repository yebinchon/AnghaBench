; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_room_conn.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_room_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i32, i32 }
%struct.conninfo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s from %s exceeded counts (limit %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servtab*, %struct.conninfo*)* @room_conn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @room_conn(%struct.servtab* %0, %struct.conninfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.servtab*, align 8
  %5 = alloca %struct.conninfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.servtab* %0, %struct.servtab** %4, align 8
  store %struct.conninfo* %1, %struct.conninfo** %5, align 8
  %9 = load i32, i32* @NI_MAXHOST, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load %struct.conninfo*, %struct.conninfo** %5, align 8
  %14 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.servtab*, %struct.servtab** %4, align 8
  %17 = getelementptr inbounds %struct.servtab, %struct.servtab* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %2
  %21 = load %struct.conninfo*, %struct.conninfo** %5, align 8
  %22 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %21, i32 0, i32 0
  %23 = bitcast %struct.TYPE_2__* %22 to %struct.sockaddr*
  %24 = load %struct.conninfo*, %struct.conninfo** %5, align 8
  %25 = getelementptr inbounds %struct.conninfo, %struct.conninfo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = trunc i64 %10 to i32
  %29 = load i32, i32* @NI_NUMERICHOST, align 4
  %30 = call i32 @getnameinfo(%struct.sockaddr* %23, i32 %27, i8* %12, i32 %28, i32* null, i32 0, i32 %29)
  %31 = load i32, i32* @LOG_ERR, align 4
  %32 = load %struct.servtab*, %struct.servtab** %4, align 8
  %33 = getelementptr inbounds %struct.servtab, %struct.servtab* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.servtab*, %struct.servtab** %4, align 8
  %36 = getelementptr inbounds %struct.servtab, %struct.servtab* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @syslog(i32 %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %12, i32 %37)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %40

39:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %41)
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_broadcast_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypbind/extr_ypbind.c_broadcast_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in = type { i32 }

@retries = common dso_local global i64 0, align 8
@MAX_RETRIES = common dso_local global i64 0, align 8
@broad_domain = common dso_local global %struct.TYPE_2__* null, align 8
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"lost connection to parent\00", align 1
@TRUE = common dso_local global i32 0, align 4
@yp_restricted = common dso_local global i64 0, align 8
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"NIS server at %s not in restricted mode access list -- rejecting.\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr_in*)* @broadcast_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadcast_result(i32* %0, %struct.sockaddr_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  %6 = load i64, i64* @retries, align 8
  %7 = load i64, i64* @MAX_RETRIES, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %11 = call i32 @bzero(%struct.sockaddr_in* %10, i32 4)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @broad_domain, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %16 = call i64 @tell_parent(i32 %14, %struct.sockaddr_in* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = load i32, i32* @LOG_WARNING, align 4
  %20 = call i32 (i32, i8*, ...) @syslog(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %9
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %2
  %24 = load i64, i64* @yp_restricted, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @verify(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load i64, i64* @retries, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* @retries, align 8
  %35 = load i32, i32* @LOG_NOTICE, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @inet_ntoa(i32 %38)
  %40 = call i32 (i32, i8*, ...) @syslog(i32 %35, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %3, align 4
  br label %54

42:                                               ; preds = %26, %23
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @broad_domain, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %47 = call i64 @tell_parent(i32 %45, %struct.sockaddr_in* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @LOG_WARNING, align 4
  %51 = call i32 (i32, i8*, ...) @syslog(i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %42
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %32, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @bzero(%struct.sockaddr_in*, i32) #1

declare dso_local i64 @tell_parent(i32, %struct.sockaddr_in*) #1

declare dso_local i32 @syslog(i32, i8*, ...) #1

declare dso_local i64 @verify(i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

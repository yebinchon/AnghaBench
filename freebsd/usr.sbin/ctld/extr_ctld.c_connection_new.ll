; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_connection_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_connection_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.portal* }
%struct.portal = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection* (%struct.portal*, i32, i8*, %struct.sockaddr*)* @connection_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection* @connection_new(%struct.portal* %0, i32 %1, i8* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca %struct.portal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.connection*, align 8
  store %struct.portal* %0, %struct.portal** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %8, align 8
  %10 = call %struct.connection* @calloc(i32 1, i32 40)
  store %struct.connection* %10, %struct.connection** %9, align 8
  %11 = load %struct.connection*, %struct.connection** %9, align 8
  %12 = icmp eq %struct.connection* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %4
  %16 = load %struct.portal*, %struct.portal** %5, align 8
  %17 = load %struct.connection*, %struct.connection** %9, align 8
  %18 = getelementptr inbounds %struct.connection, %struct.connection* %17, i32 0, i32 8
  store %struct.portal* %16, %struct.portal** %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.connection*, %struct.connection** %9, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i32 @checked_strdup(i8* %22)
  %24 = load %struct.connection*, %struct.connection** %9, align 8
  %25 = getelementptr inbounds %struct.connection, %struct.connection* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load %struct.connection*, %struct.connection** %9, align 8
  %27 = getelementptr inbounds %struct.connection, %struct.connection* %26, i32 0, i32 6
  %28 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %29 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %27, %struct.sockaddr* %28, i32 %31)
  %33 = load %struct.connection*, %struct.connection** %9, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 1
  store i32 8192, i32* %34, align 4
  %35 = load %struct.connection*, %struct.connection** %9, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 2
  store i32 8192, i32* %36, align 8
  %37 = load %struct.connection*, %struct.connection** %9, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 3
  store i32 262144, i32* %38, align 4
  %39 = load %struct.connection*, %struct.connection** %9, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 4
  store i32 65536, i32* %40, align 8
  %41 = load %struct.connection*, %struct.connection** %9, align 8
  %42 = getelementptr inbounds %struct.connection, %struct.connection* %41, i32 0, i32 5
  store i32 1, i32* %42, align 4
  %43 = load %struct.connection*, %struct.connection** %9, align 8
  ret %struct.connection* %43
}

declare dso_local %struct.connection* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @checked_strdup(i8*) #1

declare dso_local i32 @memcpy(i32*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

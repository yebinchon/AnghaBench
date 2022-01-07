; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_Reopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_server.c_server_Reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i64, i32 }
%struct.bundle = type { i32 }
%struct.stat = type { i32 }

@server = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S_IFSOCK = common dso_local global i32 0, align 4
@SERVER_FAILED = common dso_local global i32 0, align 4
@SERVER_UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_Reopen(%struct.bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca [8 x i8], align 1
  %5 = alloca %struct.stat, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 0), align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 0), align 8
  %17 = call i32 @strcpy(i8* %15, i8* %16)
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 2), align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.bundle*, %struct.bundle** %3, align 8
  %20 = call i32 @server_Close(%struct.bundle* %19)
  %21 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 0), align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %14
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 0), align 8
  %28 = call i64 @stat(i8* %27, %struct.stat* %5)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @S_IFSOCK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 0), align 8
  %38 = call i64 @unlink(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36, %30
  %41 = load i32, i32* @SERVER_FAILED, align 4
  store i32 %41, i32* %2, align 4
  br label %63

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %26, %14
  %44 = load %struct.bundle*, %struct.bundle** %3, align 8
  %45 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 0
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @server_LocalOpen(%struct.bundle* %44, i8* %45, i32 %46)
  store i32 %47, i32* %8, align 4
  br label %61

48:                                               ; preds = %1
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 1), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @server, i32 0, i32 0, i32 1), align 8
  store i64 %52, i64* %6, align 8
  %53 = load %struct.bundle*, %struct.bundle** %3, align 8
  %54 = call i32 @server_Close(%struct.bundle* %53)
  %55 = load %struct.bundle*, %struct.bundle** %3, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @server_TcpOpen(%struct.bundle* %55, i64 %56)
  store i32 %57, i32* %8, align 4
  br label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @SERVER_UNSET, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %51
  br label %61

61:                                               ; preds = %60, %43
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %40
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @server_Close(%struct.bundle*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @server_LocalOpen(%struct.bundle*, i8*, i32) #1

declare dso_local i32 @server_TcpOpen(%struct.bundle*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_check_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/inetd/extr_inetd.c_check_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servtab = type { i64, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.servtab* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.TYPE_8__ = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@servtab = common dso_local global %struct.servtab* null, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%s/%s:%s/%s loop request REFUSED from %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_loop(%struct.sockaddr* %0, %struct.servtab* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.servtab*, align 8
  %6 = alloca %struct.servtab*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.servtab* %1, %struct.servtab** %5, align 8
  %10 = load i32, i32* @NI_MAXHOST, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load %struct.servtab*, %struct.servtab** @servtab, align 8
  store %struct.servtab* %14, %struct.servtab** %6, align 8
  br label %15

15:                                               ; preds = %69, %2
  %16 = load %struct.servtab*, %struct.servtab** %6, align 8
  %17 = icmp ne %struct.servtab* %16, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %15
  %19 = load %struct.servtab*, %struct.servtab** %6, align 8
  %20 = getelementptr inbounds %struct.servtab, %struct.servtab* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.servtab*, %struct.servtab** %6, align 8
  %25 = getelementptr inbounds %struct.servtab, %struct.servtab* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOCK_DGRAM, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %18
  br label %69

30:                                               ; preds = %23
  %31 = load %struct.servtab*, %struct.servtab** %6, align 8
  %32 = getelementptr inbounds %struct.servtab, %struct.servtab* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %46 [
    i32 129, label %34
  ]

34:                                               ; preds = %30
  %35 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %36 = call %struct.TYPE_8__* @csatosin(%struct.sockaddr* %35)
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.servtab*, %struct.servtab** %6, align 8
  %40 = getelementptr inbounds %struct.servtab, %struct.servtab* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %47

45:                                               ; preds = %34
  br label %69

46:                                               ; preds = %30
  br label %69

47:                                               ; preds = %44
  %48 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %50 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = trunc i64 %11 to i32
  %53 = load i32, i32* @NI_NUMERICHOST, align 4
  %54 = call i32 @getnameinfo(%struct.sockaddr* %48, i32 %51, i8* %13, i32 %52, i32* null, i32 0, i32 %53)
  %55 = load i32, i32* @LOG_WARNING, align 4
  %56 = load %struct.servtab*, %struct.servtab** %5, align 8
  %57 = getelementptr inbounds %struct.servtab, %struct.servtab* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.servtab*, %struct.servtab** %5, align 8
  %60 = getelementptr inbounds %struct.servtab, %struct.servtab* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.servtab*, %struct.servtab** %6, align 8
  %63 = getelementptr inbounds %struct.servtab, %struct.servtab* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.servtab*, %struct.servtab** %6, align 8
  %66 = getelementptr inbounds %struct.servtab, %struct.servtab* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @syslog(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61, i32 %64, i32 %67, i8* %13)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

69:                                               ; preds = %46, %45, %29
  %70 = load %struct.servtab*, %struct.servtab** %6, align 8
  %71 = getelementptr inbounds %struct.servtab, %struct.servtab* %70, i32 0, i32 7
  %72 = load %struct.servtab*, %struct.servtab** %71, align 8
  store %struct.servtab* %72, %struct.servtab** %6, align 8
  br label %15

73:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  store i32 1, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_8__* @csatosin(%struct.sockaddr*) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, i32, i32, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

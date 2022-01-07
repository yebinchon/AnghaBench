; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/w00t/redir/extr_buddy.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"socket()\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"bind()\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"listen()\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@hand = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"signal()\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"accept()\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Got dude %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"Done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @memset(%struct.sockaddr_in* %8, i32 0, i32 12)
  %12 = load i32, i32* @PF_INET, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = call i32 @htons(i32 666)
  %15 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @INADDR_ANY, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @PF_INET, align 4
  %20 = load i32, i32* @SOCK_RAW, align 4
  %21 = call i32 @socket(i32 %19, i32 %20, i32 0)
  store i32 %21, i32* %10, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %2
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SOCK_STREAM, align 4
  %29 = load i32, i32* @IPPROTO_TCP, align 4
  %30 = call i32 @socket(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %25
  %35 = load i32, i32* %6, align 4
  %36 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %37 = call i32 @bind(i32 %35, %struct.sockaddr* %36, i32 12)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %34
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @listen(i32 %42, i32 5)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* @SIGPIPE, align 4
  %49 = load i32, i32* @hand, align 4
  %50 = call i64 @signal(i32 %48, i32 %49)
  %51 = load i64, i64* @SIG_ERR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %64
  store i32 12, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %59 = call i32 @accept(i32 %57, %struct.sockaddr* %58, i32* %9)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %56
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @inet_ntoa(i32 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @handle_dude(i32 %70, i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %56
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @listen(i32, i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @inet_ntoa(i32) #1

declare dso_local i32 @handle_dude(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

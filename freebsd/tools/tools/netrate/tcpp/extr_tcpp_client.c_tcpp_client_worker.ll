; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_client.c_tcpp_client_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpp/extr_tcpp_client.c_tcpp_client_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.kevent = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"tcpp_client %d\00", align 1
@rflag = common dso_local global i64 0, align 8
@remoteip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@mflag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@kq = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@finished = common dso_local global i64 0, align 8
@tflag = common dso_local global i64 0, align 8
@started = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"kevent\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"kevent: %d\00", align 1
@CPU_SETSIZE = common dso_local global i32 0, align 4
@Pflag = common dso_local global i64 0, align 8
@SYSCTLNAME_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tcpp_client_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcpp_client_worker(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kevent*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @setproctitle(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i64, i64* @rflag, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %9, %11
  %13 = call i32 @htons(i64 %12)
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @remoteip, i32 0, i32 0), align 4
  %14 = load i32, i32* @mflag, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.kevent* @malloc(i32 %18)
  store %struct.kevent* %19, %struct.kevent** %3, align 8
  %20 = load %struct.kevent*, %struct.kevent** %3, align 8
  %21 = icmp eq %struct.kevent* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.kevent*, %struct.kevent** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @bzero(%struct.kevent* %25, i32 %26)
  %28 = call i64 (...) @kqueue()
  store i64 %28, i64* @kq, align 8
  %29 = load i64, i64* @kq, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %24
  br label %34

34:                                               ; preds = %84, %33
  %35 = load i64, i64* @finished, align 8
  %36 = load i64, i64* @tflag, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %52, %38
  %40 = load i64, i64* @started, align 8
  %41 = load i64, i64* @finished, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i32, i32* @mflag, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i64, i64* @started, align 8
  %48 = load i64, i64* @tflag, align 8
  %49 = icmp slt i64 %47, %48
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi i1 [ false, %39 ], [ %49, %46 ]
  br i1 %51, label %52, label %54

52:                                               ; preds = %50
  %53 = call i32 (...) @tcpp_client_newconn()
  br label %39

54:                                               ; preds = %50
  %55 = load i64, i64* @kq, align 8
  %56 = load %struct.kevent*, %struct.kevent** %3, align 8
  %57 = load i32, i32* @mflag, align 4
  %58 = call i32 @kevent(i64 %55, i32* null, i32 0, %struct.kevent* %56, i32 %57, i32* null)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (i32, i8*, ...) @err(i32 -1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @mflag, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = call i32 (i32, i8*, i32, ...) @errx(i32 -1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %63
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.kevent*, %struct.kevent** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.kevent, %struct.kevent* %76, i64 %78
  %80 = call i32 @tcpp_client_handleconn(%struct.kevent* %79)
  br label %81

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %71

84:                                               ; preds = %71
  br label %34

85:                                               ; preds = %34
  ret void
}

declare dso_local i32 @setproctitle(i8*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local %struct.kevent* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @bzero(%struct.kevent*, i32) #1

declare dso_local i64 @kqueue(...) #1

declare dso_local i32 @tcpp_client_newconn(...) #1

declare dso_local i32 @kevent(i64, i32*, i32, %struct.kevent*, i32, i32*) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @tcpp_client_handleconn(%struct.kevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

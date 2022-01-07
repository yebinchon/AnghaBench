; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_client_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_client_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32**, i64, i8*, i32 }

@uc_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@SYNC_SERVER = common dso_local global i64 0, align 8
@SYNC_CLIENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"client_fork: pipe\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"client_fork: fork\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CLIENT\00", align 1
@SYNC_RECV = common dso_local global i64 0, align 8
@SYNC_SEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"client_fork: close\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uc_client_fork() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %5 = load i64, i64* @SYNC_SERVER, align 8
  %6 = getelementptr inbounds i32*, i32** %4, i64 %5
  %7 = load i32*, i32** %6, align 8
  %8 = call i64 @pipe(i32* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %0
  %11 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %12 = load i64, i64* @SYNC_CLIENT, align 8
  %13 = getelementptr inbounds i32*, i32** %11, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @pipe(i32* %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10, %0
  %18 = call i32 @uc_logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %72

19:                                               ; preds = %10
  %20 = call i64 (...) @fork()
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %21 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %22 = icmp eq i64 %21, -1
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @uc_logmsg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %72

25:                                               ; preds = %19
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 2), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 3), align 8
  %29 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %30 = load i64, i64* @SYNC_SERVER, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @SYNC_RECV, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  %36 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %37 = load i64, i64* @SYNC_CLIENT, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @SYNC_SEND, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %25
  %44 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %45 = load i64, i64* @SYNC_SERVER, align 8
  %46 = getelementptr inbounds i32*, i32** %44, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @SYNC_SEND, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %2, align 4
  %51 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 0), align 8
  %52 = load i64, i64* @SYNC_CLIENT, align 8
  %53 = getelementptr inbounds i32*, i32** %51, i64 %52
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @SYNC_RECV, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %28
  %59 = load i32, i32* %2, align 4
  %60 = call i64 @close(i32 %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = call i64 @close(i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %58
  %67 = call i32 @uc_logmsg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %72

68:                                               ; preds = %62
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @uc_cfg, i32 0, i32 1), align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %1, align 4
  br label %72

72:                                               ; preds = %68, %66, %23, %17
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i64 @fork(...) #1

declare dso_local i64 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonkrpc.c_nfs_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"nfs server %s: %s, error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"nfs server %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i8*, i8*, i32)* @nfs_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_msg(%struct.thread* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.thread*, %struct.thread** %5, align 8
  %11 = icmp ne %struct.thread* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  br label %17

16:                                               ; preds = %4
  br label %17

17:                                               ; preds = %16, %12
  %18 = phi %struct.proc* [ %15, %12 ], [ null, %16 ]
  store %struct.proc* %18, %struct.proc** %9, align 8
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load %struct.proc*, %struct.proc** %9, align 8
  %23 = load i32, i32* @LOG_INFO, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (%struct.proc*, i32, i8*, i8*, i8*, ...) @tprintf(%struct.proc* %22, i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %24, i8* %25, i32 %26)
  br label %34

28:                                               ; preds = %17
  %29 = load %struct.proc*, %struct.proc** %9, align 8
  %30 = load i32, i32* @LOG_INFO, align 4
  %31 = load i8*, i8** %6, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 (%struct.proc*, i32, i8*, i8*, i8*, ...) @tprintf(%struct.proc* %29, i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %31, i8* %32)
  br label %34

34:                                               ; preds = %28, %21
  ret i32 0
}

declare dso_local i32 @tprintf(%struct.proc*, i32, i8*, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

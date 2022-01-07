; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_reply_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcinfo/extr_rpcinfo.c_reply_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netbuf = type { i64 }
%struct.netconfig = type { i32 }
%struct.sockaddr = type { i32 }

@NI_MAXHOST = common dso_local global i32 0, align 4
@UNKNOWN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.netbuf*, %struct.netconfig*)* @reply_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reply_proc(i8* %0, %struct.netbuf* %1, %struct.netconfig* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.netbuf*, align 8
  %6 = alloca %struct.netconfig*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.netbuf* %1, %struct.netbuf** %5, align 8
  store %struct.netconfig* %2, %struct.netconfig** %6, align 8
  %12 = load i32, i32* @NI_MAXHOST, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %17 = getelementptr inbounds %struct.netbuf, %struct.netbuf* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.sockaddr*
  store %struct.sockaddr* %19, %struct.sockaddr** %11, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NI_MAXHOST, align 4
  %25 = call i64 @getnameinfo(%struct.sockaddr* %20, i32 %23, i8* %15, i32 %24, i32* null, i32 0, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i8*, i8** @UNKNOWN, align 8
  store i8* %28, i8** %10, align 8
  br label %30

29:                                               ; preds = %3
  store i8* %15, i8** %10, align 8
  br label %30

30:                                               ; preds = %29, %27
  %31 = load %struct.netconfig*, %struct.netconfig** %6, align 8
  %32 = load %struct.netbuf*, %struct.netbuf** %5, align 8
  %33 = call i8* @taddr2uaddr(%struct.netconfig* %31, %struct.netbuf* %32)
  store i8* %33, i8** %7, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i8*, i8** @UNKNOWN, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %37, i8* %38)
  br label %46

40:                                               ; preds = %30
  %41 = load i8*, i8** %7, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %41, i8* %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @free(i8* %44)
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* @FALSE, align 4
  %48 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %48)
  ret i32 %47
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i8* @taddr2uaddr(%struct.netconfig*, %struct.netbuf*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

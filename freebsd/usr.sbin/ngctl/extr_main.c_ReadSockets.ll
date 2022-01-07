; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_ReadSockets.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ngctl/extr_main.c_ReadSockets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@csock = common dso_local global i32 0, align 4
@dsock = common dso_local global i32 0, align 4
@NG_HOOKSIZ = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"reading hook \22%s\22\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"EOF from hook \22%s\22?\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Rec'd data packet on hook \22%s\22:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @ReadSockets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReadSockets(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %7 = load i32, i32* @csock, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = call i64 @FD_ISSET(i32 %7, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 (...) @MsgRead()
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @dsock, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @FD_ISSET(i32 %14, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load i32, i32* @NG_HOOKSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %3, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %4, align 8
  %23 = load i32, i32* @dsock, align 4
  %24 = call i32 @NgAllocRecvData(i32 %23, i32** %5, i8* %22)
  store i32 %24, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EX_OSERR, align 4
  %28 = call i32 @err(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %22)
  br label %29

29:                                               ; preds = %26, %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @EX_OSERR, align 4
  %34 = call i32 @errx(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %35

35:                                               ; preds = %32, %29
  %36 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @DumpAscii(i32* %37, i32 %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %42)
  br label %43

43:                                               ; preds = %35, %13
  ret void
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @MsgRead(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @NgAllocRecvData(i32, i32**, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @DumpAscii(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

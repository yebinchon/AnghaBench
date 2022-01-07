; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpreceive/extr_tcpreceive.c_handle_connection.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/tcpreceive/extr_tcpreceive.c_handle_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFFERSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"accept\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @handle_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_connection(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @BUFFERSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @accept(i32 %14, i32* null, i32* null)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = call i32 @warn(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %9, align 4
  br label %57

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %56, %20
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @BUFFERSIZE, align 4
  %25 = call i64 @recv(i32 %23, i32* %13, i32 %24, i32 0)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @close(i32 %32)
  store i32 1, i32* %9, align 4
  br label %57

34:                                               ; preds = %28
  store i64 0, i64* %7, align 8
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i32, i32* %13, i64 %41
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i64 @send(i32 %40, i32* %42, i64 %45, i32 0)
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @close(i32 %50)
  store i32 1, i32* %9, align 4
  br label %57

52:                                               ; preds = %39
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %7, align 8
  br label %35

56:                                               ; preds = %35
  br label %21

57:                                               ; preds = %49, %31, %18
  %58 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %58)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @accept(i32, i32*, i32*) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i64 @recv(i32, i32*, i32, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i64 @send(i32, i32*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

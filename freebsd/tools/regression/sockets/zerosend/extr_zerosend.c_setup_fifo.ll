; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_setup_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/zerosend/extr_zerosend.c_setup_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.setup_fifo.path = private unnamed_addr constant [19 x i8] c"0send_fifo.XXXXXXX\00", align 16
@.str = private unnamed_addr constant [23 x i8] c"%s: setup_fifo: mktemp\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: setup_fifo: mkfifo(%s)\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"%s: setup_fifo: open(%s, O_RDONLY)\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: setup_fifo: open(%s, O_WRONLY)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @setup_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_fifo(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [19 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = bitcast [19 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([19 x i8], [19 x i8]* @__const.setup_fifo.path, i32 0, i32 0), i64 19, i1 false)
  %9 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %10 = call i32 @mkstemp(i8* %9)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %17 = call i32 @unlink(i8* %16)
  %18 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %19 = call i64 @mkfifo(i8* %18, i32 384)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %24 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %22, i8* %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = load i32, i32* @O_NONBLOCK, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @open(i8* %26, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %36 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %34, i8* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %39 = load i32, i32* @O_WRONLY, align 4
  %40 = load i32, i32* @O_NONBLOCK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @open(i8* %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds [19 x i8], [19 x i8]* %5, i64 0, i64 0
  %48 = call i32 (i32, i8*, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 %53, i32* %55, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i64 @mkfifo(i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

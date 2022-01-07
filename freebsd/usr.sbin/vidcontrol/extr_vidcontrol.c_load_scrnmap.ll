; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_load_scrnmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_load_scrnmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCRNMAP_PATH = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c".scm\00", align 1
@__const.load_scrnmap.c = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null], align 16
@__const.load_scrnmap.d = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"screenmap file not found\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad screenmap file\00", align 1
@PIO_SCRNMAP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"loading screenmap\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @load_scrnmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_scrnmap(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8*], align 16
  %8 = alloca [2 x i8*], align 16
  %9 = alloca [3 x i8*], align 16
  %10 = alloca [2 x i8*], align 16
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i64 1
  %13 = load i8*, i8** @SCRNMAP_PATH, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %16 = load i8*, i8** %2, align 8
  store i8* %16, i8** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* null, i8** %17, align 8
  %18 = bitcast [3 x i8*]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %18, i8* align 16 bitcast ([3 x i8*]* @__const.load_scrnmap.c to i8*), i64 24, i1 false)
  %19 = bitcast [2 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([2 x i8*]* @__const.load_scrnmap.d to i8*), i64 16, i1 false)
  %20 = getelementptr inbounds [3 x i8*], [3 x i8*]* %7, i64 0, i64 0
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %22 = getelementptr inbounds [3 x i8*], [3 x i8*]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* %10, i64 0, i64 0
  %24 = call i32* @openguess(i8** %20, i8** %21, i8** %22, i8** %23, i8** %5)
  store i32* %24, i32** %3, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = call i32 (...) @revert()
  %29 = call i32 @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %1
  store i32 4, i32* %4, align 4
  %31 = load i32*, i32** %3, align 8
  %32 = bitcast i32* %6 to i8*
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @decode(i32* %31, i8* %32, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %30
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @rewind(i32* %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i32*, i32** %3, align 8
  %42 = call i64 @fread(i32* %6, i32 1, i32 %40, i32* %41)
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ne i64 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %37
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = call i32 (...) @revert()
  %50 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %37
  br label %52

52:                                               ; preds = %51, %30
  %53 = load i32, i32* @PIO_SCRNMAP, align 4
  %54 = call i32 @ioctl(i32 0, i32 %53, i32* %6)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = call i32 (...) @revert()
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @fclose(i32* %60)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @openguess(i8**, i8**, i8**, i8**, i8**) #2

declare dso_local i32 @revert(...) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i32 @decode(i32*, i8*, i32) #2

declare dso_local i32 @rewind(i32*) #2

declare dso_local i64 @fread(i32*, i32, i32, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @ioctl(i32, i32, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

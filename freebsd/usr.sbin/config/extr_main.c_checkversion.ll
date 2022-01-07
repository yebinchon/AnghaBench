; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_checkversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/config/extr_main.c_checkversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%VERSREQ=\00", align 1
@versreq = common dso_local global i64 0, align 8
@CONFIGVERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @checkversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkversion() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = load i32, i32* @BUFSIZ, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %2, align 8
  %7 = alloca i8, i64 %5, align 16
  store i64 %5, i64* %3, align 8
  %8 = call i32* (...) @open_makefile_template()
  store i32* %8, i32** %1, align 8
  br label %9

9:                                                ; preds = %36, %35, %22, %18, %0
  %10 = load i32, i32* @BUFSIZ, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = call i64 @fgets(i8* %7, i32 %10, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %9
  %15 = load i8, i8* %7, align 16
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 37
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %9

19:                                               ; preds = %14
  %20 = call i64 @strncmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %9

23:                                               ; preds = %19
  %24 = getelementptr inbounds i8, i8* %7, i64 9
  %25 = call i64 @atoi(i8* %24)
  store i64 %25, i64* @versreq, align 8
  %26 = load i64, i64* @versreq, align 8
  %27 = call i64 @MAJOR_VERS(i64 %26)
  %28 = load i64, i64* @CONFIGVERS, align 8
  %29 = call i64 @MAJOR_VERS(i64 %28)
  %30 = icmp eq i64 %27, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i64, i64* @versreq, align 8
  %33 = load i64, i64* @CONFIGVERS, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %9

36:                                               ; preds = %31, %23
  %37 = call i32 (...) @badversion()
  br label %9

38:                                               ; preds = %9
  %39 = load i32*, i32** %1, align 8
  %40 = call i32 @fclose(i32* %39)
  %41 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @open_makefile_template(...) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @atoi(i8*) #2

declare dso_local i64 @MAJOR_VERS(i64) #2

declare dso_local i32 @badversion(...) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

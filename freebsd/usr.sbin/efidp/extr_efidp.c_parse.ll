; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/efidp/extr_efidp.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Can't allocate memory.\00", align 1
@stdin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Can't parse %s\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i32, i32* @MAXSIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %1, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %2, align 8
  %10 = load i32, i32* @MAXSIZE, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @malloc(i32 %11)
  store i32* %12, i32** %3, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %0
  %16 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %0
  br label %18

18:                                               ; preds = %34, %17
  %19 = trunc i64 %7 to i32
  %20 = load i32, i32* @stdin, align 4
  %21 = call i64 @fgets(i8* %9, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = call i8* @trim(i8* %9)
  store i8* %24, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @efidp_parse_device_path(i8* %25, i32* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %23
  %35 = load i32, i32* @STDOUT_FILENO, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @write(i32 %35, i32* %36, i32 %37)
  br label %18

39:                                               ; preds = %18
  %40 = load i32*, i32** %3, align 8
  %41 = call i32 @free(i32* %40)
  %42 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %42)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @fgets(i8*, i32, i32) #2

declare dso_local i8* @trim(i8*) #2

declare dso_local i32 @efidp_parse_device_path(i8*, i32*, i32) #2

declare dso_local i32 @write(i32, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

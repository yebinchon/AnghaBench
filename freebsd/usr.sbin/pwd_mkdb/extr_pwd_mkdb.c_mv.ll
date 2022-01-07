; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pwd_mkdb/extr_pwd_mkdb.c_mv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pwd_mkdb/extr_pwd_mkdb.c_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXPATHLEN = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s to %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @MAXPATHLEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 -1, i32* %8, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i64 @rename(i8* %14, i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @dirname(i8* %19)
  store i8* %20, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @O_RDONLY, align 4
  %25 = load i32, i32* @O_DIRECTORY, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @open(i8* %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @fsync(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %29, %22, %18, %2
  %34 = load i32, i32* @errno, align 4
  store i32 %34, i32* %9, align 4
  %35 = trunc i64 %11 to i32
  %36 = load i8*, i8** %3, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @snprintf(i8* %13, i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %36, i8* %37)
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* @errno, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @close(i32 %43)
  br label %45

45:                                               ; preds = %42, %33
  %46 = call i32 @error(i8* %13)
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %54)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @rename(i8*, i8*) #2

declare dso_local i8* @dirname(i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fsync(i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @error(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

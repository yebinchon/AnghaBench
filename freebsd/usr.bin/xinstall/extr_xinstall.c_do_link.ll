; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_do_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_do_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@safecopy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s.inst.XXXXXX\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: mktemp\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"install: link %s -> %s\0A\00", align 1
@NOCHANGEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.stat*)* @do_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_link(i8* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.stat* %2, %struct.stat** %7, align 8
  %12 = load i32, i32* @MAXPATHLEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load i64, i64* @safecopy, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %64

18:                                               ; preds = %3
  %19 = load %struct.stat*, %struct.stat** %7, align 8
  %20 = icmp ne %struct.stat* %19, null
  br i1 %20, label %21, label %64

21:                                               ; preds = %18
  %22 = trunc i64 %13 to i32
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @snprintf(i8* %15, i32 %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = call i32* @quiet_mktemp(i8* %15)
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @EX_OSERR, align 4
  %29 = call i32 @err(i32 %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @link(i8* %31, i8* %15)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %30
  %36 = load %struct.stat*, %struct.stat** %7, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S_IFDIR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @rmdir(i8* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 @unlink(i8* %15)
  %48 = load i32, i32* @EX_OSERR, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @err(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %42, %35
  %52 = load i64, i64* @verbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @rename(i8* %15, i8* %59)
  store i32 %60, i32* %10, align 4
  %61 = call i32 @unlink(i8* %15)
  br label %62

62:                                               ; preds = %58, %30
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %75

64:                                               ; preds = %18, %3
  %65 = load i64, i64* @verbose, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8* %68, i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i8*, i8** %5, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @link(i8* %72, i8* %73)
  store i32 %74, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %75

75:                                               ; preds = %71, %62
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @quiet_mktemp(i8*) #2

declare dso_local i32 @err(i32, i8*, i8*) #2

declare dso_local i32 @link(i8*, i8*) #2

declare dso_local i32 @rmdir(i8*) #2

declare dso_local i32 @unlink(i8*) #2

declare dso_local i32 @printf(i8*, i8*, i8*) #2

declare dso_local i32 @rename(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

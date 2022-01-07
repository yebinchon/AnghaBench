; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_do_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_do_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@safecopy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"%s.inst.XXXXXX\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s: mktemp\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"symlink %s -> %s\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"install: symlink %s -> %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s: rename\00", align 1
@NOCHANGEBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, %struct.stat*)* @do_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_symlink(i8* %0, i8* %1, %struct.stat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.stat* %2, %struct.stat** %6, align 8
  %9 = load i32, i32* @MAXPATHLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i64, i64* @safecopy, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %3
  %16 = load %struct.stat*, %struct.stat** %6, align 8
  %17 = icmp ne %struct.stat* %16, null
  br i1 %17, label %18, label %68

18:                                               ; preds = %15
  %19 = trunc i64 %10 to i32
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 @snprintf(i8* %12, i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32* @quiet_mktemp(i8* %12)
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @EX_OSERR, align 4
  %26 = call i32 (i32, i8*, i8*, ...) @err(i32 %25, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %27

27:                                               ; preds = %24, %18
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @symlink(i8* %28, i8* %12)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* @EX_OSERR, align 4
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i32, i8*, i8*, ...) @err(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %33, i8* %12)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.stat*, %struct.stat** %6, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @S_IFDIR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @rmdir(i8* %43)
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 @unlink(i8* %12)
  %48 = load i32, i32* @EX_OSERR, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i32, i8*, i8*, ...) @err(i32 %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %46, %42, %35
  %52 = load i64, i64* @verbose, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i8*, i8** %4, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @rename(i8* %12, i8* %59)
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = call i32 @unlink(i8* %12)
  %64 = load i32, i32* @EX_OSERR, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 (i32, i8*, i8*, ...) @err(i32 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %62, %58
  br label %86

68:                                               ; preds = %15, %3
  %69 = load i64, i64* @verbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = call i32 @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @symlink(i8* %76, i8* %77)
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load i32, i32* @EX_OSERR, align 4
  %82 = load i8*, i8** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 (i32, i8*, i8*, ...) @err(i32 %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %80, %75
  br label %86

86:                                               ; preds = %85, %67
  %87 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %87)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32* @quiet_mktemp(i8*) #2

declare dso_local i32 @err(i32, i8*, i8*, ...) #2

declare dso_local i32 @symlink(i8*, i8*) #2

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

; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_socklist_recv_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/syslogd/extr_syslogd.c_socklist_recv_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socklist = type { i32 }

@MAXLINE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"klog\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socklist*)* @socklist_recv_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socklist_recv_file(%struct.socklist* %0) #0 {
  %2 = alloca %struct.socklist*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.socklist* %0, %struct.socklist** %2, align 8
  %9 = load i32, i32* @MAXLINE, align 4
  %10 = add nsw i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %5, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %84, %1
  %15 = load %struct.socklist*, %struct.socklist** %2, align 8
  %16 = getelementptr inbounds %struct.socklist, %struct.socklist* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %13, i64 %19
  %21 = load i32, i32* @MAXLINE, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %7, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @read(i32 %17, i8* %20, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %14
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %13, i64 %32
  store i8 0, i8* %33, align 1
  br label %54

34:                                               ; preds = %14
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i64, i64* @errno, align 8
  %39 = load i64, i64* @EINTR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  %43 = load i64, i64* @EAGAIN, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = call i32 @logerror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.socklist*, %struct.socklist** %2, align 8
  %48 = getelementptr inbounds %struct.socklist, %struct.socklist* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @close(i32 %49)
  %51 = load %struct.socklist*, %struct.socklist** %2, align 8
  %52 = getelementptr inbounds %struct.socklist, %struct.socklist* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %41, %37, %34
  br label %85

54:                                               ; preds = %28
  store i8* %13, i8** %3, align 8
  br label %55

55:                                               ; preds = %63, %54
  %56 = load i8*, i8** %3, align 8
  %57 = call i8* @strchr(i8* %56, i8 signext 10)
  store i8* %57, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i8*, i8** %4, align 8
  store i8 0, i8* %60, align 1
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @printsys(i8* %61)
  br label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %3, align 8
  br label %55

66:                                               ; preds = %55
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @strlen(i8* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @MAXLINE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp sge i32 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i8*, i8** %3, align 8
  %75 = call i32 @printsys(i8* %74)
  store i32 0, i32* %7, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %7, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %3, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @memmove(i8* %13, i8* %80, i32 %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %14

85:                                               ; preds = %53
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @printsys(i8* %13)
  br label %90

90:                                               ; preds = %88, %85
  %91 = load i32, i32* %7, align 4
  %92 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %92)
  ret i32 %91
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @logerror(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @printsys(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

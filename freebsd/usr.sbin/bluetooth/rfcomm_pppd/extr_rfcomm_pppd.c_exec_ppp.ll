; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/rfcomm_pppd/extr_rfcomm_pppd.c_exec_ppp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/rfcomm_pppd/extr_rfcomm_pppd.c_exec_ppp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.exec_ppp.ppp = private unnamed_addr constant [14 x i8] c"/usr/sbin/ppp\00", align 1
@.str = private unnamed_addr constant [8 x i8] c"-direct\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Could not dup(0). %s (%d)\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Could not dup(1). %s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"-unit\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Could not exec(%s -direct -quiet%s%s %s). %s (%d)\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c" -unit \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @exec_ppp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exec_ppp(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [14 x i8], align 1
  %8 = alloca [7 x i8*], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast [14 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.exec_ppp.ppp, i32 0, i32 0), i64 14, i1 false)
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  %11 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  store i8* %11, i8** %10, align 8
  %12 = getelementptr inbounds i8*, i8** %10, i64 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  store i8* null, i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  store i8* null, i8** %15, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  store i8* null, i8** %16, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 1
  store i8* null, i8** %17, align 8
  %18 = call i32 @close(i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @dup(i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* @LOG_ERR, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @strerror(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = load i32, i32* @errno, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %27, i8* %30)
  %32 = call i32 @exit(i32 1) #4
  unreachable

33:                                               ; preds = %3
  %34 = call i32 @close(i32 1)
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @dup(i32 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %33
  %39 = load i32, i32* @LOG_ERR, align 4
  %40 = load i32, i32* @errno, align 4
  %41 = call i32 @strerror(i32 %40)
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* @errno, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %43, i8* %46)
  %48 = call i32 @exit(i32 1) #4
  unreachable

49:                                               ; preds = %33
  %50 = call i32 @close(i32 2)
  %51 = load i32, i32* @O_RDWR, align 4
  %52 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 3
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %56, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 4
  store i8* %57, i8** %58, align 16
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 5
  store i8* %59, i8** %60, align 8
  br label %64

61:                                               ; preds = %49
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 3
  store i8* %62, i8** %63, align 8
  br label %64

64:                                               ; preds = %61, %55
  %65 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %66 = getelementptr inbounds [7 x i8*], [7 x i8*]* %8, i64 0, i64 0
  %67 = call i64 @execv(i8* %65, i8** %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %64
  %70 = load i32, i32* @LOG_ERR, align 4
  %71 = getelementptr inbounds [14 x i8], [14 x i8]* %7, i64 0, i64 0
  %72 = load i8*, i8** %5, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)
  %76 = load i8*, i8** %5, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %80

78:                                               ; preds = %69
  %79 = load i8*, i8** %5, align 8
  br label %81

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i8* [ %79, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), %80 ]
  %83 = load i8*, i8** %6, align 8
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 @strerror(i32 %84)
  %86 = load i32, i32* @errno, align 4
  %87 = call i32 (i32, i8*, i8*, i8*, ...) @syslog(i32 %70, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %71, i8* %75, i8* %82, i8* %83, i32 %85, i32 %86)
  %88 = call i32 @exit(i32 1) #4
  unreachable

89:                                               ; preds = %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @close(i32) #2

declare dso_local i64 @dup(i32) #2

declare dso_local i32 @syslog(i32, i8*, i8*, i8*, ...) #2

declare dso_local i32 @strerror(i32) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @execv(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

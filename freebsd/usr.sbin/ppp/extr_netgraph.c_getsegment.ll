; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_getsegment.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_getsegment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s name should not be empty !\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"%s name too long, max %d !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i8*, i8**)* @getsegment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getsegment(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8** %5, i8*** %13, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = load i8*, i8** %12, align 8
  %17 = call i64 @strcspn(i8* %15, i8* %16)
  store i64 %17, i64* %14, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %6
  %20 = load i32, i32* @LogWARN, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %7, align 4
  br label %53

23:                                               ; preds = %6
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp uge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32, i32* @LogWARN, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = sub i64 %30, 1
  %32 = call i32 (i32, i8*, i8*, ...) @log_Printf(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %29, i64 %31)
  store i32 0, i32* %7, align 4
  br label %53

33:                                               ; preds = %23
  %34 = load i8*, i8** %9, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i32 @strncpy(i8* %34, i8* %35, i64 %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i64, i64* %14, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %11, align 8
  %42 = load i64, i64* %14, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8**, i8*** %13, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8**, i8*** %13, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @strspn(i8* %46, i8* %47)
  %49 = load i8**, i8*** %13, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %49, align 8
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %33, %27, %19
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @strspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

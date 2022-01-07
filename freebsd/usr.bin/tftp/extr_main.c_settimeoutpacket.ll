; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_settimeoutpacket.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tftp/extr_main.c_settimeoutpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Packet timeout \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"(value) \00", align 1
@stdin = common dso_local global i32 0, align 4
@margc = common dso_local global i32 0, align 4
@margv = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [17 x i8] c"usage: %s value\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s: bad value\0A\00", align 1
@timeoutnetwork = common dso_local global i32 0, align 4
@maxtimeouts = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @settimeoutpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @settimeoutpacket(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %9 = load i32, i32* @MAXLINE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = call i32 @strcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 @strlen(i8* %12)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %12, i64 %19
  %21 = call i32 @strlen(i8* %12)
  %22 = sext i32 %21 to i64
  %23 = sub i64 %10, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @stdin, align 4
  %26 = call i32 @fgets(i8* %20, i32 %24, i32 %25)
  %27 = call i32 @makeargv(i8* %12)
  %28 = load i32, i32* @margc, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i8**, i8*** @margv, align 8
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %15, %2
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 2
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  store i32 1, i32* %8, align 4
  br label %55

38:                                               ; preds = %30
  %39 = load i8**, i8*** %4, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @atoi(i8* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %38
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  store i32 1, i32* %8, align 4
  br label %55

50:                                               ; preds = %38
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @timeoutnetwork, align 4
  %53 = load i32, i32* @maxtimeouts, align 4
  %54 = call i32 @settimeouts(i32 %51, i32 %52, i32 %53)
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %45, %33
  %56 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %56)
  %57 = load i32, i32* %8, align 4
  switch i32 %57, label %59 [
    i32 0, label %58
    i32 1, label %58
  ]

58:                                               ; preds = %55, %55
  ret void

59:                                               ; preds = %55
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @fgets(i8*, i32, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @makeargv(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @settimeouts(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

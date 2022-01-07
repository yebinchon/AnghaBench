; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/keylogin/extr_keylogin.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/keylogin/extr_keylogin.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_netstarg = type { i64*, i32, i64* }

@MAXNETNAMELEN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"netname lookup failed -- make sure the \00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"system domain name is set.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Password:\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Can't find %s's secret key\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Password incorrect for %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Could not set %s's secret key\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Maybe the keyserver is down?\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.key_netstarg, align 8
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @MAXNETNAMELEN, align 4
  %6 = add nsw i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %2, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %3, align 8
  %10 = call i32 @getnetname(i8* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @stderr, align 4
  %16 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @exit(i32 1) #4
  unreachable

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct.key_netstarg, %struct.key_netstarg* %4, i32 0, i32 0
  %20 = bitcast i64** %19 to i8*
  %21 = call i32 @getpass(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @getsecretkey(i8* %9, i8* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %9)
  %27 = call i32 @exit(i32 1) #4
  unreachable

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.key_netstarg, %struct.key_netstarg* %4, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8* %9)
  %37 = call i32 @exit(i32 1) #4
  unreachable

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.key_netstarg, %struct.key_netstarg* %4, i32 0, i32 2
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 0, i64* %41, align 8
  %42 = call i32 @strdup(i8* %9)
  %43 = getelementptr inbounds %struct.key_netstarg, %struct.key_netstarg* %4, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = call i64 @key_setnet(%struct.key_netstarg* %4)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i8* %9)
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #4
  unreachable

52:                                               ; preds = %38
  %53 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getnetname(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @getsecretkey(i8*, i8*, i32) #2

declare dso_local i32 @getpass(i8*) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i64 @key_setnet(%struct.key_netstarg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

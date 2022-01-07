; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_rmopie.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_rmopie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [13 x i8] c"etc/opiekeys\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @rmopie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmopie(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1014 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 4
  %9 = load i32, i32* @O_RDWR, align 4
  %10 = call i32 @openat(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = call i32* @fdopen(i32 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %15, i32** %4, align 8
  %16 = load i8*, i8** %2, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %45, %13
  %19 = getelementptr inbounds [1014 x i8], [1014 x i8]* %3, i64 0, i64 0
  %20 = load i32*, i32** %4, align 8
  %21 = call i32* @fgets(i8* %19, i32 1014, i32* %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %48

23:                                               ; preds = %18
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds [1014 x i8], [1014 x i8]* %3, i64 0, i64 0
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @strncmp(i8* %24, i8* %25, i64 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds [1014 x i8], [1014 x i8]* %3, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SEEK_SET, align 4
  %39 = call i64 @fseek(i32* %36, i32 %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @fwrite(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 1, i32* %42)
  br label %44

44:                                               ; preds = %41, %35
  br label %48

45:                                               ; preds = %29, %23
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @ftell(i32* %46)
  store i32 %47, i32* %7, align 4
  br label %18

48:                                               ; preds = %44, %18
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fclose(i32* %49)
  br label %51

51:                                               ; preds = %48, %12
  ret void
}

declare dso_local i32 @openat(i32, i8*, i32) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i64 @fseek(i32*, i32, i32) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @ftell(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

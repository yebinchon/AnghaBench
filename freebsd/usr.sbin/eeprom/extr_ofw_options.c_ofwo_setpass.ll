; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_setpass.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/eeprom/extr_ofw_options.c_ofwo_setpass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFWO_MAXPWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"New password:\00", align 1
@RPP_ECHO_OFF = common dso_local global i32 0, align 4
@RPP_REQUIRE_TTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Retype new password:\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to get password.\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Password unchanged.\0A\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Mismatch - password unchanged.\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"security-password\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ofwo_setpass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwo_setpass(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @OFWO_MAXPWD, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load i32, i32* @OFWO_MAXPWD, align 4
  %14 = add nsw i32 %13, 1
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %17 = trunc i64 %10 to i32
  %18 = load i32, i32* @RPP_ECHO_OFF, align 4
  %19 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @readpassphrase(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %12, i32 %17, i32 %20)
  %22 = icmp eq i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %1
  %24 = trunc i64 %15 to i32
  %25 = load i32, i32* @RPP_ECHO_OFF, align 4
  %26 = load i32, i32* @RPP_REQUIRE_TTY, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @readpassphrase(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %24, i32 %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %23, %1
  %31 = load i32, i32* @EX_USAGE, align 4
  %32 = call i32 @errx(i32 %31, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %30, %23
  %34 = call i64 @strlen(i8* %12)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @EX_OK, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %53

39:                                               ; preds = %33
  %40 = call i64 @strcmp(i8* %12, i8* %16)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %44 = load i32, i32* @EX_USAGE, align 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %53

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @ofw_optnode(i32 %47)
  %49 = call i64 @strlen(i8* %12)
  %50 = add nsw i64 %49, 1
  %51 = call i32 @ofw_setprop(i32 %46, i32 %48, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %12, i64 %50)
  %52 = load i32, i32* @EX_OK, align 4
  store i32 %52, i32* %2, align 4
  store i32 1, i32* %7, align 4
  br label %53

53:                                               ; preds = %45, %42, %36
  %54 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @readpassphrase(i8*, i8*, i32, i32) #2

declare dso_local i32 @errx(i32, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @ofw_setprop(i32, i32, i8*, i8*, i64) #2

declare dso_local i32 @ofw_optnode(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

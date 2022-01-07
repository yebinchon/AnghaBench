; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_validate_expire.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_validate_expire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EX_DATAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"-%c argument must be numeric when setting defaults: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i32)* @validate_expire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @validate_expire(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @numerics(i8* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @EX_DATAERR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = trunc i32 %10 to i8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @errx(i32 %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8 signext %11, i8* %12)
  br label %14

14:                                               ; preds = %8, %2
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strtol(i8* %15, i32* null, i32 0)
  ret i64 %16
}

declare dso_local i32 @numerics(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8 signext, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

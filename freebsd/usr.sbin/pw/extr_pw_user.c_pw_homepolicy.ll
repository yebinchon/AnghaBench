; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_homepolicy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_user.c_pw_homepolicy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.userconf = type { i8* }

@pw_homepolicy.home = internal global [128 x i8] zeroinitializer, align 16
@EX_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no base home directory set\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.userconf*, i8*, i8*)* @pw_homepolicy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pw_homepolicy(%struct.userconf* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.userconf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.userconf* %0, %struct.userconf** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  store i8* %11, i8** %4, align 8
  br label %33

12:                                               ; preds = %3
  %13 = load %struct.userconf*, %struct.userconf** %5, align 8
  %14 = getelementptr inbounds %struct.userconf, %struct.userconf* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %12
  %18 = load %struct.userconf*, %struct.userconf** %5, align 8
  %19 = getelementptr inbounds %struct.userconf, %struct.userconf* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17, %12
  %25 = load i32, i32* @EX_CONFIG, align 4
  %26 = call i32 @errx(i32 %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %17
  %28 = load %struct.userconf*, %struct.userconf** %5, align 8
  %29 = getelementptr inbounds %struct.userconf, %struct.userconf* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @snprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @pw_homepolicy.home, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @pw_homepolicy.home, i64 0, i64 0), i8** %4, align 8
  br label %33

33:                                               ; preds = %27, %10
  %34 = load i8*, i8** %4, align 8
  ret i8* %34
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

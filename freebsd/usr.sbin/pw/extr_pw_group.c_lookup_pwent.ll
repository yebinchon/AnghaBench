; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_lookup_pwent.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pw/extr_pw_group.c_lookup_pwent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i32 }

@EX_NOUSER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"user `%s' does not exist\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.passwd* (i8*)* @lookup_pwent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.passwd* @lookup_pwent(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call %struct.passwd* @GETPWNAM(i8* %4)
  store %struct.passwd* %5, %struct.passwd** %3, align 8
  %6 = icmp eq %struct.passwd* %5, null
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = call i32 @isdigit(i8 zeroext %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  %14 = call i64 @atoi(i8* %13)
  %15 = trunc i64 %14 to i32
  %16 = call %struct.passwd* @getpwuid(i32 %15)
  store %struct.passwd* %16, %struct.passwd** %3, align 8
  %17 = icmp eq %struct.passwd* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %12, %7
  %19 = load i32, i32* @EX_NOUSER, align 4
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @errx(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %18, %12, %1
  %23 = load %struct.passwd*, %struct.passwd** %3, align 8
  ret %struct.passwd* %23
}

declare dso_local %struct.passwd* @GETPWNAM(i8*) #1

declare dso_local i32 @isdigit(i8 zeroext) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @atoi(i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

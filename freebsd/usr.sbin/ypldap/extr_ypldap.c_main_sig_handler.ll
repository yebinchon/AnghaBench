; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main_sig_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_ypldap.c_main_sig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@client_pid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ldap client\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unexpected signal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main_sig_handler(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
    i32 129, label %9
    i32 131, label %10
    i32 130, label %21
  ]

9:                                                ; preds = %3, %3
  store i32 1, i32* %7, align 4
  br label %10

10:                                               ; preds = %3, %9
  %11 = load i32, i32* @client_pid, align 4
  %12 = call i32 @check_child(i32 %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* @client_pid, align 4
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @main_shutdown()
  br label %20

20:                                               ; preds = %18, %15
  br label %24

21:                                               ; preds = %3
  br label %24

22:                                               ; preds = %3
  %23 = call i32 @fatalx(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %21, %20
  ret void
}

declare dso_local i32 @check_child(i32, i8*) #1

declare dso_local i32 @main_shutdown(...) #1

declare dso_local i32 @fatalx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

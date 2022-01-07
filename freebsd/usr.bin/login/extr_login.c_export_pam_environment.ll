; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_export_pam_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/login/extr_login.c_export_pam_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pamh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @export_pam_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_pam_environment() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8**, align 8
  %3 = load i32, i32* @pamh, align 4
  %4 = call i8** @pam_getenvlist(i32 %3)
  store i8** %4, i8*** %1, align 8
  %5 = load i8**, i8*** %1, align 8
  %6 = icmp ne i8** %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load i8**, i8*** %1, align 8
  store i8** %8, i8*** %2, align 8
  br label %9

9:                                                ; preds = %20, %7
  %10 = load i8**, i8*** %2, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @export(i8* %15)
  %17 = load i8**, i8*** %2, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @free(i8* %18)
  br label %20

20:                                               ; preds = %13
  %21 = load i8**, i8*** %2, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i32 1
  store i8** %22, i8*** %2, align 8
  br label %9

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23, %0
  ret void
}

declare dso_local i8** @pam_getenvlist(i32) #1

declare dso_local i32 @export(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

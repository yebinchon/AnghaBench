; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_export_pam_environment.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/su/extr_su.c_export_pam_environment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@environ_pam = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @export_pam_environment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @export_pam_environment() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i8*, align 8
  %3 = load i8**, i8*** @environ_pam, align 8
  store i8** %3, i8*** %1, align 8
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i8**, i8*** %1, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load i8**, i8*** %1, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = call i64 @ok_to_export(i8* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %8
  %14 = load i8**, i8*** %1, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = call i8* @strchr(i8* %15, i8 signext 61)
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  store i8 0, i8* %17, align 1
  %18 = load i8**, i8*** %1, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %2, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i32 @setenv(i8* %19, i8* %21, i32 1)
  br label %23

23:                                               ; preds = %13, %8
  %24 = load i8**, i8*** %1, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i8**, i8*** %1, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i32 1
  store i8** %29, i8*** %1, align 8
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i64 @ok_to_export(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

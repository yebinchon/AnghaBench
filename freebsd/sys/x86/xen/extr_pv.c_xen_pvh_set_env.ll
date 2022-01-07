; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_xen_pvh_set_env.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_pv.c_xen_pvh_set_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to add kenv %s=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*)*)* @xen_pvh_set_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_pvh_set_env(i8* %0, i32 (i8*)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 (i8*)* %1, i32 (i8*)** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %50

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  store i8* %11, i8** %5, align 8
  br label %12

12:                                               ; preds = %43, %25, %10
  %13 = load i8*, i8** %5, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %12
  %18 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %19 = icmp ne i32 (i8*)* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = load i32 (i8*)*, i32 (i8*)** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 %21(i8* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @strlen(i8* %26)
  %28 = add nsw i32 %27, 1
  %29 = load i8*, i8** %5, align 8
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  store i8* %31, i8** %5, align 8
  br label %12

32:                                               ; preds = %20, %17
  %33 = load i8*, i8** %5, align 8
  store i8* %33, i8** %6, align 8
  %34 = call i8* @strsep(i8** %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %34, i8** %5, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @kern_setenv(i8* %35, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i8*, i8** %5, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @xc_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %40, i8* %41)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i8*, i8** %6, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  store i8* %49, i8** %5, align 8
  br label %12

50:                                               ; preds = %9, %12
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i64 @kern_setenv(i8*, i8*) #1

declare dso_local i32 @xc_printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

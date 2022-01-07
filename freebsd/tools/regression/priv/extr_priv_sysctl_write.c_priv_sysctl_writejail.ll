; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sysctl_write.c_priv_sysctl_writejail.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_priv_sysctl_write.c_priv_sysctl_writejail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.test = type { i32 }

@KERN_HOSTNAME_STRING = common dso_local global i32 0, align 4
@stored_hostname = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"priv_sysctl_writejail(asroot, injail)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"priv_sysctl_writejail(asroot, !injail)\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"priv_sysctl_writejail(!asroot, injail)\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"priv_sysctl_writejail(!asroot, !injail)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @priv_sysctl_writejail(i32 %0, i32 %1, %struct.test* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.test*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.test* %2, %struct.test** %6, align 8
  %8 = load i32, i32* @KERN_HOSTNAME_STRING, align 4
  %9 = load i32, i32* @stored_hostname, align 4
  %10 = load i32, i32* @stored_hostname, align 4
  %11 = call i32 @strlen(i32 %10)
  %12 = call i32 @sysctlbyname(i32 %8, i32* null, i32* null, i32 %9, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @expect(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0, i32 0)
  br label %21

21:                                               ; preds = %18, %15, %3
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @expect(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 0, i32 0)
  br label %30

30:                                               ; preds = %27, %24, %21
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @EPERM, align 4
  %39 = call i32 @expect(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 -1, i32 %38)
  br label %40

40:                                               ; preds = %36, %33, %30
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EPERM, align 4
  %49 = call i32 @expect(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %47, i32 -1, i32 %48)
  br label %50

50:                                               ; preds = %46, %43, %40
  ret void
}

declare dso_local i32 @sysctlbyname(i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @expect(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
